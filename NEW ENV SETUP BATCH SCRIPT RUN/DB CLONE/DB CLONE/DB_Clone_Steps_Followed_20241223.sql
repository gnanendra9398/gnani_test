Executed the below script in "n7db_master" QA DB and Verified the record creation along with status "Active" after changing the DB name

	-----------------------------------------------------------------------------------------------------------------------
--open new sql script from n7db_master and run the following 
--Ensure to change the dbname and dburl values before running the below script
DO $$ 
DECLARE 
dbname TEXT := 'cb7_p11_21dec24';
dburl VARCHAR(100) := 'jdbc:postgresql://10.0.1.11:5432/cb7_p11_21dec24';
BEGIN
--RAISE NOTICE '% is enrolled in % department', 
--dbname, 
--dburl;
INSERT INTO n7tenant.tbl_tenant_master
(tenant_client_id, tenant_code, db_name, url, user_name, "password", driver_class, status)
VALUES((select max(tenant_client_id)+1 from n7tenant.tenant_config), dbname, dbname, dburl, 'n7stageapp', 'XxrqTX+NF3a6F+u64sma0A==', 'org.postgresql.Driver', 'Active');
INSERT INTO n7tenant.tenant_config (tenant_id,tenant_client_id,attr_name,attr_val,attr_type,attr_img) VALUES
	 ((select max(tenant_id)+1 from n7tenant.tenant_config),(select max(tenant_client_id)+1 from n7tenant.tenant_config),'wikiBaseUrl','https://cb7banking.com/dokuwiki/!usermanual',1,NULL),
	 ((select max(tenant_id)+2 from n7tenant.tenant_config),(select max(tenant_client_id)+1 from n7tenant.tenant_config),'logo_image',NULL,1,NULL),
	 ((select max(tenant_id)+3 from n7tenant.tenant_config),(select max(tenant_client_id)+1 from n7tenant.tenant_config),'logo_header','MAHESH URBAN CO-OP. BANK LTD., SOLAPUR',1,NULL),
	 ((select max(tenant_id)+4 from n7tenant.tenant_config),(select max(tenant_client_id)+1 from n7tenant.tenant_config),'wip','/wip/',1,NULL),
	 ((select max(tenant_id)+5 from n7tenant.tenant_config),(select max(tenant_client_id)+1 from n7tenant.tenant_config),'outward','/outward/',1,NULL),
	 ((select max(tenant_id)+6 from n7tenant.tenant_config),(select max(tenant_client_id)+1 from n7tenant.tenant_config),'inward','/inward/',1,NULL),
	 ((select max(tenant_id)+7 from n7tenant.tenant_config),(select max(tenant_client_id)+1 from n7tenant.tenant_config),'error','/error/',1,NULL);
END $$;

6.After executing above script, get the new tenant_client_id using below query

select * from n7tenant.tbl_tenant_master order by tenant_client_id desc 

-- New tenant_client_id is : 90000102

7. To restore the db in QA , execute below pg_restore command after verifying the parameters (dbname & source SQL file) carefully.

pg_restore --host "10.0.1.11" --port "5432" --username "n7dbo" --dbname "cb7_p11_21dec24" --exclude-schema=public --verbose "/DevApps/dbdump/DB_Backup/PROD_cb7_mucb_prod11_12212024_033001.sql"
                                                                                                                                                           .sql
	Pwd: n7dbo
	
	
8. While executing the restore command, you can create 2 users in KeyCloak URL: 	https://cb7banking.com/auth
	i.  n7admin_p11_03nov24_admin
	ii. n7admin_p11_03nov24_approver
	
	
9. Once the restore command is completed, verify the logs from restore command.

10.We need to run below commands in the newly created DB ""


i).Set default DB as "cb7_p11_03nov24" (Newly created DB) in QA server

ii).
--open new sql script from newly created db and run the following 
--Ensure to change the adminuser1 and adminuser2 values before running the below script
DO $$ 
DECLARE 
adminuser1 TEXT := 'n7admin_p11_03nov24_admin';									--- Verify the newly created user
adminuser2 TEXT := 'n7admin_p11_03nov24_approver';								--- Verify the newly created user
BEGIN
UPDATE n7cbs.a_users_m
SET user_name=adminuser1, user_display_name='admin', first_name='', middle_name=NULL, last_name=NULL, user_pwd='test', mobile_no=NULL, email_id=NULL, role_id=1, working_cbr_id=2, user_status='Active', last_pwd_change_date=NULL, last_login_date=NULL, block_todate=NULL, block_fromdate=NULL, cr_by=NULL, cr_dt=NULL, upd_by=NULL, upd_dt=NULL, auth_by=NULL, auth_dt=NULL, cn_id=NULL, keycloak_user_id='65d448d2-fa7e-42e1-a7e1-44d8d4e84b0f', tenant_id=NULL, is_multi_branch_allowed=1, designation_id=NULL, aml_role_id=NULL, in_operative_since_date=NULL, profile_img_data=NULL
WHERE user_id=1;
UPDATE n7cbs.a_users_m
SET user_name=adminuser2, user_display_name='admin', first_name='', middle_name=NULL, last_name=NULL, user_pwd='test', mobile_no=NULL, email_id=NULL, role_id=1, working_cbr_id=1, user_status='Active', last_pwd_change_date=NULL, last_login_date=NULL, block_todate=NULL, block_fromdate=NULL, cr_by=NULL, cr_dt=NULL, upd_by=NULL, upd_dt=NULL, auth_by=NULL, auth_dt=NULL, cn_id=NULL, keycloak_user_id='7e246cd2-a310-4df5-ae72-742dd746632c', tenant_id=NULL, is_multi_branch_allowed=1, designation_id=NULL, aml_role_id=NULL, in_operative_since_date=NULL, profile_img_data=NULL
WHERE user_id=2;
END $$;
n

iii). 
DELETE FROM n7cbs.a_app_error_log WHERE app_error_dt <= '2024-11-04 00:00:00';     --> Need to change the date

11. Need to provide below Grants in the newly created DB

GRANT ALL ON ALL TABLES IN SCHEMA n7cbs TO n7stageapp;
GRANT ALL ON ALL TABLES IN SCHEMA n7aml TO n7stageapp;
GRANT ALL ON ALL TABLES IN SCHEMA n7cts TO n7stageapp;
GRANT ALL ON ALL TABLES IN SCHEMA n7mig TO n7stageapp;
GRANT ALL ON ALL TABLES IN SCHEMA n7mis TO n7stageapp;
GRANT ALL ON ALL TABLES IN SCHEMA n7net TO n7stageapp;
GRANT ALL ON ALL TABLES IN SCHEMA n7sms TO n7stageapp;
 
 
--grant privileges to all available sequences in the DB
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA n7cbs TO n7stageapp;
 
--grant connection to the user for sepecific DB
GRANT CONNECT ON DATABASE cb7_p11_03nov24 TO n7stageapp;						-- Change the DB name
 
--setting search path to the user
ALTER USER n7stageapp SET SEARCH_PATH TO n7cbs,n7aml,n7cts,n7mig,n7mis,n7net,n7sms;
 
GRANT CREATE, USAGE ON SCHEMA n7cbs TO n7stageapp;
GRANT CREATE, USAGE ON SCHEMA n7aml TO n7stageapp;
GRANT CREATE, USAGE ON SCHEMA n7cts TO n7stageapp;
GRANT CREATE, USAGE ON SCHEMA n7mig TO n7stageapp;
GRANT CREATE, USAGE ON SCHEMA n7mis TO n7stageapp;
GRANT CREATE, USAGE ON SCHEMA n7net TO n7stageapp;
GRANT CREATE, USAGE ON SCHEMA n7sms TO n7stageapp;

UPDATE n7cbs.a_component_d SET action_url='/intrestCalculation' WHERE component_id=53 AND action_id=1;  -- This is to enable Interest Calculation Menu
	UPDATE n7cbs.a_menu_m SET component_id=90 WHERE menu_id=61002;     -- This is for Enabling "Report Format Config" menu
	update n7cbs.a_menu_m set component_id=67 where menu_id=9000002;   --
	UPDATE n7cbs.a_menu_m SET menu_url='
http://10.0.1.11:3300'
WHERE menu_id=81001;

12. Verify the Frontend with newly created Users

13.

Below are the new db clone credentials

DB : cb7_p11_03nov24
Uid/Pwd
n7admin_p11_03nov24_admin/n7admin_p11_03nov24_admin
n7admin_p11_03nov24_approver/n7admin_p11_03nov24_approver



TO re-claim the space, need to execute below statements in the newly created DB clone
 
update b_mast_json_data_d
set json_data_record =null,
	json_data_record_view =null,
	image_data=null;
VACUUM FULL VERBOSE b_mast_json_data_d;
 
update b_tran_clg_gen_img_d set instr_img_data =null;
VACUUM FULL VERBOSE b_tran_clg_gen_img_d;
 
update c_cust_document_img_d set doc_img_data =null;
VACUUM FULL VERBOSE c_cust_document_img_d;


