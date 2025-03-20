##########################################
UPDATE n7aml.a_menu_m
	SET menu_url='/amlcaselist'
	WHERE menu_id=4;
	
	
	--NDB-12611
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(1,4,'Service',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(2,4,'Business',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(3,4,'Student',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(4,4,'Self Employeed',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(5,4,'Homemaker/Housewife',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(6,4,'Retired',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(7,4,'Others',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(8,4,'Advocate',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(9,4,'Civil Engg.',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(10,4,'Driver',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(11,4,'Education',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(12,4,'Engineer',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(13,4,'Farmer',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(14,4,'Film Asst. Director',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(15,4,'House Hold',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(17,4,'Pentioner',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(19,4,'Riksha',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(20,4,'Staff',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(21,4,'Stamp Vender',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(22,4,'Teacher',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(23,4,'Worker',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(24,4,'Classes',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(25,4,'Clinic',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(26,4,'Consultant',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(27,4,'Contractor',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(28,4,'Doctor',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(29,4,'General',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(30,4,'Tailairing',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(31,4,'Tarnsporter',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(32,4,'Trading',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(33,4,'Tution',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(34,4,'Jeweller',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(35,4,'Bullion Dealer / Sub Dealer',1);
INSERT INTO n7aml.aml_filter_d (filter_id, filter_type_id, filter_name, is_enabled) VALUES(36,4,'Liquor Shop',1);



INSERT INTO n7aml.aml_filter_type_m
(filter_type_id, filter_type_name)
VALUES(4, 'Occupation Type');



INSERT INTO n7cbs.c_all_ref_d (ref_type_id,ref_id,ref_name,ref_alias_code,is_enabled,seq_no,is_func1)
	VALUES (214,25,'NPA','',1,0,0);
	VALUES (214,25,'NPA','',1,0,0);

--NDB-12611 Ocupation type master addition
INSERT INTO n7cbs.c_all_ref_d
(ref_type_id, ref_id, ref_name, ref_alias_code, is_enabled, child_ref_type_id, seq_no, is_func1, ref_cargo_valid_num, ref_alias_code_2)
VALUES(3, (select max(ref_id)+1 from c_all_ref_d where ref_type_id=3), 'Jeweller', '', 1, NULL, 0, 0, NULL, NULL);

INSERT INTO n7cbs.c_all_ref_d
(ref_type_id, ref_id, ref_name, ref_alias_code, is_enabled, child_ref_type_id, seq_no, is_func1, ref_cargo_valid_num, ref_alias_code_2)
VALUES(3, (select max(ref_id)+1 from c_all_ref_d where ref_type_id=3), 'Bullion Dealer / Sub Dealer', '', 1, NULL, 0, 0, NULL, NULL);

INSERT INTO n7cbs.c_all_ref_d
(ref_type_id, ref_id, ref_name, ref_alias_code, is_enabled, child_ref_type_id, seq_no, is_func1, ref_cargo_valid_num, ref_alias_code_2)
VALUES(3, (select max(ref_id)+1 from c_all_ref_d where ref_type_id=3), 'Liquor Shop', '', 1, NULL, 0, 0, NULL, NULL);

INSERT INTO n7aml.c_all_ref_d
(ref_type_id, ref_id, ref_name, ref_alias_code, is_enabled, child_ref_type_id, seq_no, is_func1, ref_cargo_valid_num, ref_alias_code_2)
VALUES(4, 4, 'Occupation Type', '', 1, NULL, 0, 0, NULL, '');



#############################################################
-- DROP FUNCTION n7aml.aml_rule__eval_rule_022(numeric, date);
CREATE OR REPLACE FUNCTION n7aml.aml_rule__eval_rule_022(p_cust_id numeric, p_working_date date)
 RETURNS numeric
 LANGUAGE plpgsql
AS $function$
DECLARE 
  /*
  --------------------------------------------------------------------------------------------------------------------------------------------
  -- Sr. No.|   Rule No     |
  --------------------------------------------------------------------------------------------------------------------------------------------
  --   22	|   Daily STR 1  |  Jeweller Account 
  --------------------------------------------------------------------------------------------------------------------------------------------
  */
  -- common variables 
  areRec      RECORD;
  arf1Rec     RECORD;
  arf2Rec     RECORD;  
  acctListRec     RECORD ;
  AML_RULE_ID   CONSTANT NUMERIC := 22 ;
  nNumScore                NUMERIC := 0 ;
 
  -- Rule's variables
  nTurnOverAmt             NUMERIC := 0 ;
  nQtlyCreditSumAmt        NUMERIC := 0 ;
  nAmlTranIdentId          NUMERIC := 0 ;
  dFromDate DATE ;
  dToDate   DATE ;
  dFromDate2 DATE ;
  dToDate2   DATE ;  
  nAmlStrId   NUMERIC := 0 ; nStrRuleViolation   NUMERIC := 0 ;
  
BEGIN  

        SELECT rm.freq_type_id , rm.aml_str_type_id, arem.* 
	      INTO areRec
	      FROM n7aml.aml_rules_m rm  
	INNER JOIN n7aml.aml_rule_eval_m arem ON arem.rule_id = rm.rule_id
	     WHERE rm.rule_id = AML_RULE_ID ;
	
	-- MONTH PERIOD 
	dFromDate := p_working_date ; 
	dToDate   := dFromDate;--n7aml.app_util__last_day(p_working_date) ; 
--	dFromDate2 := n7aml.app_util__add_months(dToDate,-6) ; 
--	nTurnOverAmt      := n7aml.aml_rule__get_field_001(p_cust_id , dFromDate , dToDate ) ;
	
	FOR acctListRec IN ( SELECT DISTINCT tran_acct_id 
	                         FROM n7aml.aml_tran_m 
	                        WHERE tran_date BETWEEN dFromDate AND dToDate
								AND  cust_id = p_cust_id) 
		
	loop
		
	SELECT SUM(tr.tran_amount) 
	  INTO nTurnOverAmt
	  FROM n7aml.aml_tran_m tr
	  INNER JOIN n7cbs.b_acct_m ac on ac.acct_id = tr.tran_acct_id
	  left JOIN n7cbs.c_cust_state_m ccm on ccm.cust_id = ac.cust_id
	WHERE tr.tran_acct_id = acctListRec.tran_acct_id 
--	  AND tr.tran_drcr = COALESCE('D', tr.tran_drcr)
--	  AND tr.tran_mode_id = 1 and tr.tran_amount >= areRec.min_value
	  AND ac.gl_group_id IN (SELECT arf.filter_id FROM aml_rule_filter_d arf JOIN aml_filter_d afd ON afd.filter_id = arf.filter_id
     										where arf.rule_id = AML_RULE_ID and afd.filter_type_id = 3)--(10002,10004,20036,10005,20060) 	  	
	  AND ccm.occupation_type_id in (SELECT arf.filter_id FROM aml_rule_filter_d arf JOIN aml_filter_d afd ON afd.filter_id = arf.filter_id
     										where arf.rule_id = AML_RULE_ID and afd.filter_type_id = 4)
      AND tr.tran_date BETWEEN dFromDate AND dToDate  ; 
	
    IF ( nTurnOverAmt >= COALESCE(areRec.min_value,0) ) THEN
       
	   nNumScore := areRec.num_score ;	
	   
	   nAmlStrId = NEXTVAL('n7aml.aml_str_id_seq') ;
					   
					   INSERT INTO n7aml.aml_str_m (
					                   aml_str_id          ,
					                   ident_date          ,
					                   aml_seq_no          ,
					                   cust_id             ,
					                   acct_id             ,
					                   aml_str_type_id     ,
					                   aml_str_ref_id      ,
					                   aml_str_status      ,
					                   remark              ,
					                   decision_type_id    ,
					                   decision_reason_id  ,
					                   decision_by         ,
					                   decision_dt 			,
					                   tran_date			,
									   tran_value     )
						VALUES (
						        nAmlStrId ,
								p_working_date ,
								nAmlStrId ,
								p_cust_id ,
								acctListRec.tran_acct_id ,
								areRec.aml_str_type_id ,
								NULL ,
								'Pending' ,
								NULL ,
								NULL ,
								NULL ,
								NULL ,
								NULL ,
								dFromDate ,
								nTurnOverAmt
						       ) ;

			       
					
		nAmlTranIdentId := NEXTVAL('n7aml.aml_tran_ident_id_seq');
		
       INSERT INTO n7aml.aml_tran_ident_m	
	           (
	           aml_tran_ident_id     ,
	           ident_date            ,
	           cust_id               ,
	           rule_id               ,
	           rule_freq_type_id     ,
	           num_score             ,
	           ident_details   , 
			   aml_str_id
	           )
	   VALUES (
	           nAmlTranIdentId ,
	           p_working_date ,
	           p_cust_id ,
	           AML_RULE_ID ,
	           areRec.freq_type_id ,
	           areRec.num_score ,
               NULL ,
			   nAmlStrId
	           ) ;
	   

	   --F1 nTurnOverAmt
	   INSERT INTO n7aml.aml_tran_ident_fields_d 
	      (
		  atif_id              ,
		  aml_tran_ident_id    ,
		  rule_field_id        ,
		  field_actual_value   ,
		  field_value          ,
		  field_max_value      ,
		  qry_from_date        ,
		  qry_to_date          ,
		  field_percent_value
		  )
		VALUES (
           NEXTVAL('n7aml.atif_id_seq') ,
		   nAmlTranIdentId ,
		   3               ,
		   nTurnOverAmt    , 
		   areRec.min_value ,
		   areRec.max_value ,
		   dFromDate ,
		   dToDate,
		   areRec.percent_value
         ) ;	 
		 nStrRuleViolation := n7aml.ins_aml_str_rule_violation(nAmlStrId, AML_RULE_ID, areRec.min_value, areRec.max_value,nTurnOverAmt);
		END IF ;				
	END LOOP ;
	
	RETURN nAmlTranIdentId ;

END ;
$function$
;