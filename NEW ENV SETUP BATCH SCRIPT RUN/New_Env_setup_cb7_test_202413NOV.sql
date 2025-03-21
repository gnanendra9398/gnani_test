Creating the new cb7_test_202413NOV Environment in the new server 10.0.1.19

1.Opened the gitea and moved to the path 

Path:10.0.0.4:3000/N7/N7DBScripts/src/branch/wip-spint18/Data_Migration_N7/Step0_DBcreation/DB_creation.sql
a.Changed the database name to cb7_test_202413NOV .
b.Opened the Execution_createdb.bat file in the below path
http://10.0.0.4:3000/N7/N7DBScripts/src/branch/wip-spint18/Data_Migration_N7/Execution_createdb.bat
c.Changed the database name to cb7_test_202413NOV
d.Changed the host name to 10.0.1.19
e.Changed the user name to n7dbo
f.Commit the file

Move to the below path C:\Users\Amarnath\n7_prod_dbscripts
open git bash and run git pull
g.Opened the cmd in the Data_Migration_N7 path and followed the below steps
i.more Execution_createdb---->checked the data has been modified or not    
j.Execution_createdb --->run the command
k.Checked in the database whether the schemes are populated 

Populating the master tables and views and functions

2.Opened the below path Execution.bat file 

http://10.0.0.4:3000/N7/N7DBScripts/src/branch/wip-spint18/Data_Migration_N7/Execution.bat
a.Changed the database name to cb7_test_202413NOV
b.Changed the host name to 10.0.1.19
c.Changed the user name to n7dbo
d.Only executed upto step3metada
e.Commit the file

Opened the cmd in the Data_Migration_N7 path and followed the below steps
f.git pull
g.more Execution.bat---->checked the data has been modified or not
h.Execution.bat --->run the command
i.Checked in the database whether the tables and views and functions are populated


Once after populating the meta data, below additional steps followed in the DB cb7_test_202413NOV in the newly created instance : 10.0.1.19.

--Insert the values in n7dbmaster

INSERT INTO n7tenant.tbl_tenant_master
(tenant_client_id, tenant_code, db_name, url, user_name, "password", driver_class, status)
VALUES(1002, 'cb7_cameroon', 'cb7_cameroon', 'jdbc:postgresql://10.0.1.19:5432/cb7_cameroon', 'n7dbo', 'fDoeY33xBKNShMYV2fiwuw==', 'org.postgresql.Driver', 'Active');

--Insert the values in users table 

INSERT INTO n7cbs.a_users_m
(user_id, user_name, user_display_name, first_name, middle_name, last_name, user_pwd, mobile_no, email_id, role_id, working_cbr_id, user_status, last_pwd_change_date, last_login_date, block_todate, block_fromdate, cr_by, cr_dt, upd_by, upd_dt, auth_by, auth_dt, cn_id, keycloak_user_id, tenant_id, is_multi_branch_allowed, designation_id, aml_role_id, in_operative_since_date, profile_img_data)
VALUES(1, 'n7admin_p11_cam_admin ', 'admin', '', NULL, NULL, 'test', NULL, NULL, 1, 2, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6a1aa31e-9afa-44d4-8660-33f072ee7b08', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO n7cbs.a_users_m
(user_id, user_name, user_display_name, first_name, middle_name, last_name, user_pwd, mobile_no, email_id, role_id, working_cbr_id, user_status, last_pwd_change_date, last_login_date, block_todate, block_fromdate, cr_by, cr_dt, upd_by, upd_dt, auth_by, auth_dt, cn_id, keycloak_user_id, tenant_id, is_multi_branch_allowed, designation_id, aml_role_id, in_operative_since_date, profile_img_data)
VALUES(2, 'n7admin_p11_cam_approver', 'admin', '', NULL, NULL, 'test', NULL, NULL, 1, 1, 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eeb74c25-7e61-495d-999e-35caf7e91ce5', NULL, 1, NULL, NULL, NULL, NULL);


Added the above 2 users in keycloak admin using the URL: https://demo.cb7banking.com/auth/


 --Insert the data n7cbs.c_cbr_m in Copied data from 1 of the DB from QA 

INSERT INTO n7cbs.c_cbr_m (cbr_id, cbr_name, cbr_short_name, cbr_type_id, rbi_reg_no, rbi_reg_date, clg_branch_code, cbr_estd_date, cbr_zone_id, ifsc_code, swift_code, micr_code, ccy_id, first_working_date, fy_from_month, fy_to_month, gstin, address1, address2, address3, pin_code, area_id, city_id, district_id, state_id, phone_no, mobile_no, email, cbr_status, cr_by, cr_dt, upd_by, upd_dt, auth_by, auth_dt, cn_id, opening_date, phone_code, mobile_code, fax_code, fax_no, city_pin, it_tan, bsr_code, remarks, country_id) VALUES(2, 'Main branch', 'Main branch', 2, '1293', '1995-12-31', '2', '1997-07-21', 1, 'IBKL0478MCB', '0', '413598002', 1, '1997-07-20', 'APRIL', 'MARCH', '27AAAAM0511H1Z4', '128, Shukrawar Peth', 'MANIK', 'CHOWK', '413002', 161, 1000974, 1000042, 10022, '2742400', '9623565748', 'mucblSol@gmail.com', 'Active', 1, '2022-01-24 00:00:00.000', 3, '2022-04-26 07:15:23.645', 6, '2022-04-26 02:40:36.518', 84, '1997-07-21', '0217', NULL, 217, 2742401, 413002, 'PNEM06702D', NULL, NULL, 91); INSERT INTO n7cbs.c_cbr_m (cbr_id, cbr_name, cbr_short_name, cbr_type_id, rbi_reg_no, rbi_reg_date, clg_branch_code, cbr_estd_date, cbr_zone_id, ifsc_code, swift_code, micr_code, ccy_id, first_working_date, fy_from_month, fy_to_month, gstin, address1, address2, address3, pin_code, area_id, city_id, district_id, state_id, phone_no, mobile_no, email, cbr_status, cr_by, cr_dt, upd_by, upd_dt, auth_by, auth_dt, cn_id, opening_date, phone_code, mobile_code, fax_code, fax_no, city_pin, it_tan, bsr_code, remarks, country_id) VALUES(3, 'Market Yard branch', 'Market Yard branch', 3, '1844', '2002-01-31', '4', '2002-01-31', 1, 'IBKL0478MCB', '0', '413598004', 1, '2002-01-31', 'APRIL', 'MARCH', '27AAAAM0511H1Z4', 'Siddheshwar Market Yard Hyderabad Road', 'Hyderabad ', 'Road', '413005', 7, 1000974, 1000042, 10022, '2742402', '9623565748', 'mucblsolmkt@gmail.com', 'Active', 1, '2022-01-24 00:00:00.000', 3, '2022-04-26 07:15:46.234', 6, '2022-04-26 02:40:36.518', 85, '2003-06-01', '0217', NULL, 217, 2742401, 413005, 'PNEM10015F', NULL, NULL, 91); INSERT INTO n7cbs.c_cbr_m (cbr_id, cbr_name, cbr_short_name, cbr_type_id, rbi_reg_no, rbi_reg_date, clg_branch_code, cbr_estd_date, cbr_zone_id, ifsc_code, swift_code, micr_code, ccy_id, first_working_date, fy_from_month, fy_to_month, gstin, address1, address2, address3, pin_code, area_id, city_id, district_id, state_id, phone_no, mobile_no, email, cbr_status, cr_by, cr_dt, upd_by, upd_dt, auth_by, auth_dt, cn_id, opening_date, phone_code, mobile_code, fax_code, fax_no, city_pin, it_tan, bsr_code, remarks, country_id) VALUES(4, 'JULE SOLAPUR BRANCH', 'JULE SOLAPUR BRANCH', 3, '1843', '2002-01-31', '3', '2002-01-31', 1, 'IBKL0478MCB', '0', '413598003', 1, '2002-01-31', 'APRIL', 'MARCH', '27AAAAM0511H1Z4', 'Shivganga Nagar Jule Solapur', 'JULE SOLAPUR', 'HOTGI ROAD', '413005', 79, 1000974, 1000042, 10022, '2742401', '9623565748', 'mucbljs@gmail.com', 'Active', 1, '2022-01-24 00:00:00.000', 3, '2022-04-26 07:16:13.957', 6, '2022-04-26 02:40:36.518', 86, '2003-06-01', '0217', NULL, 217, 2742401, 413006, 'PNEM06702D', NULL, NULL, 91); INSERT INTO n7cbs.c_cbr_m (cbr_id, cbr_name, cbr_short_name, cbr_type_id, rbi_reg_no, rbi_reg_date, clg_branch_code, cbr_estd_date, cbr_zone_id, ifsc_code, swift_code, micr_code, ccy_id, first_working_date, fy_from_month, fy_to_month, gstin, address1, address2, address3, pin_code, area_id, city_id, district_id, state_id, phone_no, mobile_no, email, cbr_status, cr_by, cr_dt, upd_by, upd_dt, auth_by, auth_dt, cn_id, opening_date, phone_code, mobile_code, fax_code, fax_no, city_pin, it_tan, bsr_code, remarks, country_id) VALUES(5, 'SAIFUL AREA BRANCH', 'SAIFUL AREA BRANCH', 3, '99', '2017-12-31', '5', '2017-12-31', 1, 'IBKL0478MCB', '0', '413598005', 1, '2017-12-31', 'APRIL', 'MARCH', '27AAAAM0511H1Z4', 'Soham Plaza Appartment NH-13 Extension Area ,Saiful Area Bijapur Road Solapur-413004', 'SAIFUL', 'VIJAPUR ROAD', '413005', 76, 1000974, 1000042, 10022, '2742403', '9623565748', 'mucblssolsaiful@gmail.com', 'Active', 1, '2022-01-24 00:00:00.000', 3, '2022-04-26 07:16:31.806', 6, '2022-04-26 02:40:36.518', 87, '2018-04-18', '0217', NULL, 217, 2742401, 413002, 'PNEM06702D', NULL, NULL, 91); INSERT INTO n7cbs.c_cbr_m (cbr_id, cbr_name, cbr_short_name, cbr_type_id, rbi_reg_no, rbi_reg_date, clg_branch_code, cbr_estd_date, cbr_zone_id, ifsc_code, swift_code, micr_code, ccy_id, first_working_date, fy_from_month, fy_to_month, gstin, address1, address2, address3, pin_code, area_id, city_id, district_id, state_id, phone_no, mobile_no, email, cbr_status, cr_by, cr_dt, upd_by, upd_dt, auth_by, auth_dt, cn_id, opening_date, phone_code, mobile_code, fax_code, fax_no, city_pin, it_tan, bsr_code, remarks, country_id) VALUES(6, 'AKKALKOT ROAD BRANCH', 'AKKALKOT ROAD BRANCH', 3, '99', '2017-12-31', '6', '2017-12-31', 1, 'IBKL0478MCB', '0', '413598006', 1, '2017-12-31', 'APRIL', 'MARCH', '27AAAAM0511H1Z4', 'Ganga Tower Commercial Apartment Akkalkot Road,Solapur-413006', 'AKKALKOT ', 'ROAD', '413005', 33, 1000974, 1000042, 10022, '2742404', '9623565748', 'mucblsolakt@gmail.com', 'Active', 1, '2022-01-24 00:00:00.000', 3, '2022-04-26 07:16:47.589', 6, '2022-04-26 02:40:36.518', 88, '2018-04-18', '0217', NULL, 217, 2742401, 413002, 'PNEM06702D', NULL, NULL, 91); INSERT INTO n7cbs.c_cbr_m (cbr_id, cbr_name, cbr_short_name, cbr_type_id, rbi_reg_no, rbi_reg_date, clg_branch_code, cbr_estd_date, cbr_zone_id, ifsc_code, swift_code, micr_code, ccy_id, first_working_date, fy_from_month, fy_to_month, gstin, address1, address2, address3, pin_code, area_id, city_id, district_id, state_id, phone_no, mobile_no, email, cbr_status, cr_by, cr_dt, upd_by, upd_dt, auth_by, auth_dt, cn_id, opening_date, phone_code, mobile_code, fax_code, fax_no, city_pin, it_tan, bsr_code, remarks, country_id) VALUES(1, 'Head office', 'Head office', 1, '1293', '1995-12-31', '598', '1997-07-21', 1, 'IBKL0478MCB', '0', '413598002', 1, '1997-07-21', 'April', 'March', '27AAAAM0511H1Z4', '128, Shukrawar Peth', 'Manik Chowk', 'Solapur', '413002', 161, 1000974, 1000042, 10022, '2622645', '9623565748', 'mucblsol@bsnl.in', 'Active', 61, '2022-03-17 00:00:00.000', 3, '2022-04-26 07:14:44.284', 6, '2022-04-26 02:40:36.518', 83, '1997-07-21', '0217', NULL, 217, 2742401, 413002, 'PNEM06702D', NULL, NULL, 91);

--Insert the data in n7cbs.b_cbr_work_date_m

INSERT INTO n7cbs.b_cbr_work_date_m
(cbr_id, working_date, working_day_status, last_working_date, next_working_date, is_locked)
VALUES(1, '2024-06-30', 'Open', '2024-06-29', '2024-07-01', 0);
INSERT INTO n7cbs.b_cbr_work_date_m
(cbr_id, working_date, working_day_status, last_working_date, next_working_date, is_locked)
VALUES(2, '2024-06-30', 'Open', '2024-06-29', '2024-07-01', 0);
INSERT INTO n7cbs.b_cbr_work_date_m
(cbr_id, working_date, working_day_status, last_working_date, next_working_date, is_locked)
VALUES(3, '2024-06-30', 'Open', '2024-06-29', '2024-07-01', 0);
INSERT INTO n7cbs.b_cbr_work_date_m
(cbr_id, working_date, working_day_status, last_working_date, next_working_date, is_locked)
VALUES(4, '2024-06-30', 'Open', '2024-06-29', '2024-07-01', 0);
INSERT INTO n7cbs.b_cbr_work_date_m
(cbr_id, working_date, working_day_status, last_working_date, next_working_date, is_locked)
VALUES(5, '2024-06-30', 'Open', '2024-06-29', '2024-07-01', 0);
INSERT INTO n7cbs.b_cbr_work_date_m
(cbr_id, working_date, working_day_status, last_working_date, next_working_date, is_locked)
VALUES(6, '2024-06-30', 'Open', '2024-06-29', '2024-07-01', 0);