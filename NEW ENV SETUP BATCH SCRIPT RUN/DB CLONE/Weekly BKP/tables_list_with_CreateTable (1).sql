1.
select concat('Create Table ',table_schema,'_b','.',table_name,' as select * From ',table_schema,'.',table_name, ';') from Information_Schema.tables where table_schema in ('n7cbs')    and table_type ='BASE TABLE' and table_name in (
'b_acct_alert_sent_d',
'b_acct_asset_class_d',
'b_acct_asset_class_m',
'b_acct_asset_dstock_m',
'b_acct_bal_d',
'b_acct_bal_m',
'b_acct_cbr_accts_d',
'b_acct_deposit_diary_param_m',
'b_acct_deposit_int_diary_d',
'b_acct_deposit_investment_m',
'b_acct_deposit_m',
'b_acct_deposit_mtd_d',
'b_acct_deposit_payment_m',
'b_acct_deposit_renew_d',
'b_acct_gsec_diary_d',
'b_acct_gsec_m',
'b_acct_instr_book_d',
'b_acct_instr_book_pages_d',
'b_acct_instr_stop_d',
'b_acct_instr_stop_revoke_d',
'b_acct_lien_d',
'b_acct_loan_deposit_acct_d',
'b_acct_loan_deposit_appl_m',
'b_acct_loan_disb_d',
'b_acct_loan_document_d',
'b_acct_loan_document_img_d',
'b_acct_loan_dp_d',
'b_acct_loan_dp_stock_d',
'b_acct_loan_emi_diary_d',
'b_acct_loan_emi_diary_param_m',
'b_acct_loan_limit_adhoc_d',
'b_acct_loan_limit_as_disb_m',
'b_acct_loan_limit_m',
'b_acct_loan_m',
'b_acct_loan_overdue_d',
'b_acct_loan_roi_m',
'b_acct_loan_roi_slab_d',
'b_acct_loan_security_d',
'b_acct_loan_security_deposit_d',
'b_acct_loan_surety_d',
'b_acct_locker_oper_cust_d',
'b_acct_locker_oper_d',
'b_acct_m',
'b_acct_names_d',
'b_acct_nominees_d',
'b_acct_passbook_d',
'b_acct_passbook_print_m',
'b_acct_ref_all_m',
'b_acct_safe_box_locker_m',
'b_acct_share_cert_d',
'b_acct_share_member_m',
'b_acct_sign_img_d',
'b_acct_stmt_log_d',
'b_alert_event_msg_recipients_d',
'b_alert_msg_d',
'b_batch_spl_calc_m',
'b_bde_work_date_m',
'b_cash_point_denom_bal_d',
'b_cash_point_denom_bal_m',
'b_cash_point_m',
'b_cbr_branch_acct_d',
'b_cbr_gl_last_acct_no_m',
'b_cbr_holiday_d',
'b_cbr_incharge_d',
'b_cbr_last_instr_book_d',
'b_cbr_week_holiday_d',
'b_cbr_work_date_m',
'b_charge_calc_acct_d',
'b_charge_calc_m',
'b_charge_gl_scheme_d',
'b_charge_m',
'b_charge_rate_m',
'b_charge_rate_slab_d',
'b_charge_tax_calc_acct_d',
'b_clg_batch_file_data_d',
'b_clg_batch_file_m',
'b_clg_out_file_m',
'b_clg_session_lot_m',
'b_clg_session_m',
'b_clg_type_m',
'b_cust_acct_alert_reg_d',
'b_cust_tran_summ_d',
'b_data_file_upload_m',
'b_doc_print_last_doc_no_m',
'b_doc_print_request_d',
'b_ech_mandate_action_d',
'b_ech_mandate_action_img_d',
'b_ech_mandate_m',
'b_eft_link_cbr_m',
'b_eft_m',
'b_enq_alert_event_msg_d',
'b_gl_acct_ref_m',
'b_gl_bal_d',
'b_instr_book_inv_m',
'b_instr_book_stock_d',
'b_interest_calc_acct_d',
'b_interest_calc_deposit_d',
'b_interest_calc_gl_scheme_d',
'b_interest_calc_loan_d',
'b_interest_calc_m',
'b_interest_calc_sh_d',
'b_interest_calc_td_renew_d',
'b_interest_calc_tds_d',
'b_interest_tds_calc_acct_d',
'b_mast_auth_lock_m',
'b_mast_change_diff_d',
'b_mast_change_log_d',
'b_mast_day_seq_m',
'b_mast_json_data_d',
'b_mast_seq_m',
'b_pigmy_agent_m',
'b_process_job_done_m',
'b_process_job_run_log_d',
'b_process_job_running_m',
'b_process_log_d',
'b_q_alert_msg_d',
'b_recon_m',
'b_recon_period_m',
'b_recon_period_seq_m',
'b_recon_tran_d',
'b_recon_tran_match_d',
'b_recon_tran_match_m',
'b_remitt_last_instr_no_m',
'b_remitt_m',
'b_safe_box_locker_d',
'b_safe_box_locker_rent_m',
'b_safe_box_m',
'b_share_appl_cert_d',
'b_share_appl_m',
'b_share_appl_nominee_d',
'b_share_cert_m',
'b_share_div_rate_m',
'b_share_type_last_no_m',
'b_share_type_m',
'b_si_exe_log_d',
'b_si_m',
'b_ta_dep_int_pay_link_d',
'b_ta_tran_acct_deposit_interest_d',
'b_ta_tran_acct_deposit_tds_d',
'b_ta_tran_clg_gen_link_d',
'b_tran_acct_bal_d',
'b_tran_acct_bde_d',
'b_tran_acct_close_charge_d',
'b_tran_acct_close_d',
'b_tran_acct_close_fp_m',
'b_tran_acct_contra_d',
'b_tran_acct_d',
'b_tran_acct_d_lgcy',
'b_tran_acct_deaf_d',
'b_tran_acct_deposit_interest_d',
'b_tran_acct_deposit_tds_d',
'b_tran_acct_excep_d',
'b_tran_acct_instr_present_d',
'b_tran_acct_instr_used_d',
'b_tran_acct_loan_interest_d',
'b_tran_acct_loan_rec_d',
'b_tran_acct_prov_d',
'b_tran_acct_ref_excep_d',
'b_tran_acct_setl_d',
'b_tran_acct_tds_rev_d',
'b_tran_advice_d',
'b_tran_asset_class_d',
'b_tran_auth_lock_m',
'b_tran_bde_m',
'b_tran_bill_item_d',
'b_tran_bill_m',
'b_tran_bulk_acct_d',
'b_tran_cash_denom_d',
'b_tran_cash_denom_m',
'b_tran_cash_token_lock_m',
'b_tran_charge_d',
'b_tran_charge_park_d',
'b_tran_clg_gen_d',
'b_tran_clg_gen_img_d',
'b_tran_day_seq_m',
'b_tran_eft_d',
'b_tran_eft_d_enq',
'b_tran_eft_file_d',
'b_tran_eft_iface_d',
'b_tran_gsec_deal_d',
'b_tran_import_acct_d',
'b_tran_import_m',
'b_tran_link_tran_d',
'b_tran_lock_m',
'b_tran_log_d',
'b_tran_m',
'b_tran_m_lgcy',
'b_tran_pigmy_comm_d',
'b_tran_remitt_action_d',
'b_tran_remitt_d',
'b_tran_share_div_d',
'b_tran_spl_link_tran_d',
'b_tran_spl_m',
'b_tran_ta_link_tran_d',
'b_tran_td_renew_acct_deposit_d',
'b_tran_td_renew_d',
'b_tran_td_renew_d_hist',
'b_tran_template_acct_d',
'b_tran_template_m',
'c_alert_event_config_d',
'c_alert_template_m',
'c_all_bank_branch_m',
'c_all_bank_m',
'c_all_code_ref_d',
'c_all_code_ref_map_d',
'c_all_code_ref_type_m',
'c_all_location_m',
'c_all_ref_d',
'c_all_ref_map_d',
'c_all_ref_type_m',
'c_area_m',
'c_asset_class_m',
'c_asset_class_prov_d',
'c_bank_m',
'c_bank_param_m',
'c_batch_spl_calc_m',
'c_bill_item_m',
'c_bill_item_stax_period_m',
'c_bill_item_stax_rate_d',
'c_branch_param_m',
'c_branch_param_m_temp',
'c_cbr_m',
'c_ccy_denom_m',
'c_ccy_m',
'c_charge_calc_m',
'c_charge_group_m',
'c_ckyc_batch_file_m',
'c_ckyc_cust_batch_file_d',
'c_ckyc_cust_batch_file_resp_d',
'c_ckyc_cust_data_valid_d',
'c_cmn_seq_m',
'c_common_file_load_m',
'c_crr_info_m',
'c_cust_address_d',
'c_cust_beneficary_m',
'c_cust_document_d',
'c_cust_document_img_d',
'c_cust_gold_items_img_d',
'c_cust_itax_d',
'c_cust_itax_m',
'c_cust_itr_d',
'c_cust_kyc_m',
'c_cust_m',
'c_cust_related_person_d',
'c_cust_security_d',
'c_cust_security_gold_d',
'c_cust_security_insurance_d',
'c_cust_state_m',
'c_data_extr_cibil_d',
'c_data_extr_cust_itax_d',
'c_data_extr_m',
'c_gl_arrear_recovery_pref_m',
'c_gl_bal_recovery_pref_m',
'c_gl_cbr_m',
'c_gl_m',
'c_gl_reference_d',
'c_gl_roi_m',
'c_gl_roi_slab_d',
'c_gl_scheme_charge_group_d',
'c_gl_scheme_m',
'c_gl_scheme_roi_m',
'c_gl_scheme_roi_offset_slab_d',
'c_gl_txn_limit_m',
'c_holiday_m',
'c_instr_type_m',
'c_interest_calc_gl_scheme_m',
'c_interest_calc_m',
'c_itax_m',
'c_kyc_doc_ref_d',
'c_money_product_rate_m',
'c_pin_code_area_m',
'c_pin_code_m',
'c_print_doc_field_d',
'c_print_doc_m',
'c_report_category_m',
'c_report_day_m',
'c_report_m',
'c_report_param_d',
'c_report_ranges_d',
'c_security_valuer_m',
'c_stax_m',
'c_stax_period_m',
'c_stax_rate_d',
'c_stock_type_m',
'c_sundry_party_m',
'c_tds_m',
'c_tran_eft_file_d',
'c_tran_eft_file_err_d',
'c_tran_type_alert_map_d',
'c_year_qtr_m',
'liq_report_data_itm_d',
'oss_report_data_itm_d',
'rfc_pop_report_data_form1_itm_d',
'rfc_pop_report_data_itm_d',
's_acct_ref_gl_method_pattern_m',
's_acct_ref_type_m',
's_alert_group_m',
's_alert_m',
's_alert_template_txt_m',
's_arrear_tran_model_d',
's_arrear_type_m',
's_balance_type_m',
's_charge_type_m',
's_ckyc_file_type_m',
's_day_process_m',
's_eft_iface_type_m',
's_err_msg_m',
's_fin_year_m',
's_gl_deposit_scheme_m',
's_gl_group_m',
's_gl_group_reference_m',
's_gl_group_set_d',
's_glg_tm_tt_d',
's_group_m',
's_instr_type_gl_group_d',
's_instrument_type_m',
's_main_gl_group_m',
's_process_type_m',
's_ratio_component_m',
's_ratio_component_source_d',
's_ratio_m',
's_report_format_content_d',
's_report_format_m',
's_rfc_acct_bal_sum_type_m',
's_rfc_column_m',
's_rfc_data_source_d',
's_tab_cols_m',
's_tab_m',
's_tran_auto_model_d',
's_tran_source_m',
's_tran_spl_type_m',
's_tran_type_m',
's_tt_narration_d',
'wdb_b_mast_change_log_d',
'wdb_b_mast_json_data_d');






Create Table n7cbs_b.b_interest_calc_deposit_d as select * From n7cbs.b_interest_calc_deposit_d;
Create Table n7cbs_b.c_all_location_m as select * From n7cbs.c_all_location_m;
Create Table n7cbs_b.b_tran_acct_deposit_interest_d as select * From n7cbs.b_tran_acct_deposit_interest_d;
Create Table n7cbs_b.b_tran_acct_setl_d as select * From n7cbs.b_tran_acct_setl_d;
Create Table n7cbs_b.b_acct_deposit_int_diary_d as select * From n7cbs.b_acct_deposit_int_diary_d;
Create Table n7cbs_b.c_cust_address_d as select * From n7cbs.c_cust_address_d;
Create Table n7cbs_b.b_acct_names_d as select * From n7cbs.b_acct_names_d;
Create Table n7cbs_b.c_all_code_ref_map_d as select * From n7cbs.c_all_code_ref_map_d;
Create Table n7cbs_b.liq_report_data_itm_d as select * From n7cbs.liq_report_data_itm_d;
Create Table n7cbs_b.s_report_format_content_d as select * From n7cbs.s_report_format_content_d;
Create Table n7cbs_b.c_crr_info_m as select * From n7cbs.c_crr_info_m;
Create Table n7cbs_b.oss_report_data_itm_d as select * From n7cbs.oss_report_data_itm_d;
Create Table n7cbs_b.rfc_pop_report_data_itm_d as select * From n7cbs.rfc_pop_report_data_itm_d;
Create Table n7cbs_b.b_acct_alert_sent_d as select * From n7cbs.b_acct_alert_sent_d;
Create Table n7cbs_b.b_interest_calc_acct_d as select * From n7cbs.b_interest_calc_acct_d;
Create Table n7cbs_b.c_itax_m as select * From n7cbs.c_itax_m;
Create Table n7cbs_b.b_tran_acct_bal_d as select * From n7cbs.b_tran_acct_bal_d;
Create Table n7cbs_b.b_tran_acct_bde_d as select * From n7cbs.b_tran_acct_bde_d;
Create Table n7cbs_b.b_tran_acct_close_charge_d as select * From n7cbs.b_tran_acct_close_charge_d;
Create Table n7cbs_b.b_tran_acct_close_d as select * From n7cbs.b_tran_acct_close_d;
Create Table n7cbs_b.b_tran_acct_close_fp_m as select * From n7cbs.b_tran_acct_close_fp_m;
Create Table n7cbs_b.b_tran_acct_contra_d as select * From n7cbs.b_tran_acct_contra_d;
Create Table n7cbs_b.b_tran_acct_d_lgcy as select * From n7cbs.b_tran_acct_d_lgcy;
Create Table n7cbs_b.b_tran_acct_instr_used_d as select * From n7cbs.b_tran_acct_instr_used_d;
Create Table n7cbs_b.b_tran_acct_loan_interest_d as select * From n7cbs.b_tran_acct_loan_interest_d;
Create Table n7cbs_b.b_tran_acct_prov_d as select * From n7cbs.b_tran_acct_prov_d;
Create Table n7cbs_b.b_tran_acct_ref_excep_d as select * From n7cbs.b_tran_acct_ref_excep_d;
Create Table n7cbs_b.b_tran_day_seq_m as select * From n7cbs.b_tran_day_seq_m;
Create Table n7cbs_b.b_tran_eft_d_enq as select * From n7cbs.b_tran_eft_d_enq;
Create Table n7cbs_b.b_tran_eft_file_d as select * From n7cbs.b_tran_eft_file_d;
Create Table n7cbs_b.b_tran_remitt_action_d as select * From n7cbs.b_tran_remitt_action_d;
Create Table n7cbs_b.b_tran_remitt_d as select * From n7cbs.b_tran_remitt_d;
Create Table n7cbs_b.b_tran_share_div_d as select * From n7cbs.b_tran_share_div_d;
Create Table n7cbs_b.b_tran_spl_link_tran_d as select * From n7cbs.b_tran_spl_link_tran_d;
Create Table n7cbs_b.c_charge_group_m as select * From n7cbs.c_charge_group_m;
Create Table n7cbs_b.c_cust_itr_d as select * From n7cbs.c_cust_itr_d;
Create Table n7cbs_b.c_cust_security_d as select * From n7cbs.c_cust_security_d;
Create Table n7cbs_b.s_tran_source_m as select * From n7cbs.s_tran_source_m;
Create Table n7cbs_b.wdb_b_mast_change_log_d as select * From n7cbs.wdb_b_mast_change_log_d;
Create Table n7cbs_b.wdb_b_mast_json_data_d as select * From n7cbs.wdb_b_mast_json_data_d;
Create Table n7cbs_b.b_tran_acct_d as select * From n7cbs.b_tran_acct_d;
Create Table n7cbs_b.b_tran_m as select * From n7cbs.b_tran_m;
Create Table n7cbs_b.c_instr_type_m as select * From n7cbs.c_instr_type_m;
Create Table n7cbs_b.b_cash_point_m as select * From n7cbs.b_cash_point_m;
Create Table n7cbs_b.b_clg_session_lot_m as select * From n7cbs.b_clg_session_lot_m;
Create Table n7cbs_b.c_all_bank_branch_m as select * From n7cbs.c_all_bank_branch_m;
Create Table n7cbs_b.b_tran_eft_iface_d as select * From n7cbs.b_tran_eft_iface_d;
Create Table n7cbs_b.c_all_bank_m as select * From n7cbs.c_all_bank_m;
Create Table n7cbs_b.c_area_m as select * From n7cbs.c_area_m;
Create Table n7cbs_b.b_acct_bal_d as select * From n7cbs.b_acct_bal_d;
Create Table n7cbs_b.b_acct_m as select * From n7cbs.b_acct_m;
Create Table n7cbs_b.c_gl_m as select * From n7cbs.c_gl_m;
Create Table n7cbs_b.c_gl_scheme_m as select * From n7cbs.c_gl_scheme_m;
Create Table n7cbs_b.c_data_extr_m as select * From n7cbs.c_data_extr_m;
Create Table n7cbs_b.b_acct_loan_m as select * From n7cbs.b_acct_loan_m;
Create Table n7cbs_b.c_cbr_m as select * From n7cbs.c_cbr_m;
Create Table n7cbs_b.b_acct_loan_limit_m as select * From n7cbs.b_acct_loan_limit_m;
Create Table n7cbs_b.c_asset_class_m as select * From n7cbs.c_asset_class_m;
Create Table n7cbs_b.s_err_msg_m as select * From n7cbs.s_err_msg_m;
Create Table n7cbs_b.b_tran_cash_denom_d as select * From n7cbs.b_tran_cash_denom_d;
Create Table n7cbs_b.b_tran_clg_gen_d as select * From n7cbs.b_tran_clg_gen_d;
Create Table n7cbs_b.c_cust_m as select * From n7cbs.c_cust_m;
Create Table n7cbs_b.b_cash_point_denom_bal_m as select * From n7cbs.b_cash_point_denom_bal_m;
Create Table n7cbs_b.b_recon_tran_d as select * From n7cbs.b_recon_tran_d;
Create Table n7cbs_b.b_tran_spl_m as select * From n7cbs.b_tran_spl_m;
Create Table n7cbs_b.b_tran_asset_class_d as select * From n7cbs.b_tran_asset_class_d;
Create Table n7cbs_b.c_cust_itax_m as select * From n7cbs.c_cust_itax_m;
Create Table n7cbs_b.c_cust_kyc_m as select * From n7cbs.c_cust_kyc_m;
Create Table n7cbs_b.c_cust_state_m as select * From n7cbs.c_cust_state_m;
Create Table n7cbs_b.c_gl_cbr_m as select * From n7cbs.c_gl_cbr_m;
Create Table n7cbs_b.b_clg_type_m as select * From n7cbs.b_clg_type_m;
Create Table n7cbs_b.b_clg_session_m as select * From n7cbs.b_clg_session_m;
Create Table n7cbs_b.c_ccy_denom_m as select * From n7cbs.c_ccy_denom_m;
Create Table n7cbs_b.s_tran_type_m as select * From n7cbs.s_tran_type_m;
Create Table n7cbs_b.s_arrear_type_m as select * From n7cbs.s_arrear_type_m;
Create Table n7cbs_b.b_acct_asset_class_d as select * From n7cbs.b_acct_asset_class_d;
Create Table n7cbs_b.b_acct_asset_class_m as select * From n7cbs.b_acct_asset_class_m;
Create Table n7cbs_b.b_acct_asset_dstock_m as select * From n7cbs.b_acct_asset_dstock_m;
Create Table n7cbs_b.b_acct_cbr_accts_d as select * From n7cbs.b_acct_cbr_accts_d;
Create Table n7cbs_b.b_acct_deposit_diary_param_m as select * From n7cbs.b_acct_deposit_diary_param_m;
Create Table n7cbs_b.b_acct_deposit_payment_m as select * From n7cbs.b_acct_deposit_payment_m;
Create Table n7cbs_b.b_acct_bal_m as select * From n7cbs.b_acct_bal_m;
Create Table n7cbs_b.b_acct_instr_stop_d as select * From n7cbs.b_acct_instr_stop_d;
Create Table n7cbs_b.b_acct_instr_stop_revoke_d as select * From n7cbs.b_acct_instr_stop_revoke_d;
Create Table n7cbs_b.b_acct_lien_d as select * From n7cbs.b_acct_lien_d;
Create Table n7cbs_b.b_acct_loan_document_img_d as select * From n7cbs.b_acct_loan_document_img_d;
Create Table n7cbs_b.b_acct_loan_emi_diary_param_m as select * From n7cbs.b_acct_loan_emi_diary_param_m;
Create Table n7cbs_b.b_acct_loan_document_d as select * From n7cbs.b_acct_loan_document_d;
Create Table n7cbs_b.b_acct_instr_book_d as select * From n7cbs.b_acct_instr_book_d;
Create Table n7cbs_b.b_acct_instr_book_pages_d as select * From n7cbs.b_acct_instr_book_pages_d;
Create Table n7cbs_b.b_acct_loan_disb_d as select * From n7cbs.b_acct_loan_disb_d;
Create Table n7cbs_b.b_acct_loan_overdue_d as select * From n7cbs.b_acct_loan_overdue_d;
Create Table n7cbs_b.b_acct_passbook_d as select * From n7cbs.b_acct_passbook_d;
Create Table n7cbs_b.b_acct_passbook_print_m as select * From n7cbs.b_acct_passbook_print_m;
Create Table n7cbs_b.b_acct_nominees_d as select * From n7cbs.b_acct_nominees_d;
Create Table n7cbs_b.b_acct_locker_oper_d as select * From n7cbs.b_acct_locker_oper_d;
Create Table n7cbs_b.b_acct_locker_oper_cust_d as select * From n7cbs.b_acct_locker_oper_cust_d;
Create Table n7cbs_b.b_acct_loan_roi_m as select * From n7cbs.b_acct_loan_roi_m;
Create Table n7cbs_b.b_acct_sign_img_d as select * From n7cbs.b_acct_sign_img_d;
Create Table n7cbs_b.b_acct_stmt_log_d as select * From n7cbs.b_acct_stmt_log_d;
Create Table n7cbs_b.b_alert_msg_d as select * From n7cbs.b_alert_msg_d;
Create Table n7cbs_b.b_batch_spl_calc_m as select * From n7cbs.b_batch_spl_calc_m;
Create Table n7cbs_b.b_bde_work_date_m as select * From n7cbs.b_bde_work_date_m;
Create Table n7cbs_b.b_cbr_branch_acct_d as select * From n7cbs.b_cbr_branch_acct_d;
Create Table n7cbs_b.b_cbr_gl_last_acct_no_m as select * From n7cbs.b_cbr_gl_last_acct_no_m;
Create Table n7cbs_b.b_cbr_last_instr_book_d as select * From n7cbs.b_cbr_last_instr_book_d;
Create Table n7cbs_b.b_alert_event_msg_recipients_d as select * From n7cbs.b_alert_event_msg_recipients_d;
Create Table n7cbs_b.b_acct_share_cert_d as select * From n7cbs.b_acct_share_cert_d;
Create Table n7cbs_b.b_acct_share_member_m as select * From n7cbs.b_acct_share_member_m;
Create Table n7cbs_b.b_clg_batch_file_data_d as select * From n7cbs.b_clg_batch_file_data_d;
Create Table n7cbs_b.b_clg_batch_file_m as select * From n7cbs.b_clg_batch_file_m;
Create Table n7cbs_b.b_clg_out_file_m as select * From n7cbs.b_clg_out_file_m;
Create Table n7cbs_b.b_cust_acct_alert_reg_d as select * From n7cbs.b_cust_acct_alert_reg_d;
Create Table n7cbs_b.b_cust_tran_summ_d as select * From n7cbs.b_cust_tran_summ_d;
Create Table n7cbs_b.b_data_file_upload_m as select * From n7cbs.b_data_file_upload_m;
Create Table n7cbs_b.b_doc_print_last_doc_no_m as select * From n7cbs.b_doc_print_last_doc_no_m;
Create Table n7cbs_b.b_doc_print_request_d as select * From n7cbs.b_doc_print_request_d;
Create Table n7cbs_b.b_ech_mandate_m as select * From n7cbs.b_ech_mandate_m;
Create Table n7cbs_b.b_gl_acct_ref_m as select * From n7cbs.b_gl_acct_ref_m;
Create Table n7cbs_b.b_gl_bal_d as select * From n7cbs.b_gl_bal_d;
Create Table n7cbs_b.b_enq_alert_event_msg_d as select * From n7cbs.b_enq_alert_event_msg_d;
Create Table n7cbs_b.b_charge_tax_calc_acct_d as select * From n7cbs.b_charge_tax_calc_acct_d;
Create Table n7cbs_b.b_eft_m as select * From n7cbs.b_eft_m;
Create Table n7cbs_b.b_eft_link_cbr_m as select * From n7cbs.b_eft_link_cbr_m;
Create Table n7cbs_b.b_ech_mandate_action_d as select * From n7cbs.b_ech_mandate_action_d;
Create Table n7cbs_b.b_ech_mandate_action_img_d as select * From n7cbs.b_ech_mandate_action_img_d;
Create Table n7cbs_b.b_interest_calc_gl_scheme_d as select * From n7cbs.b_interest_calc_gl_scheme_d;
Create Table n7cbs_b.b_interest_calc_td_renew_d as select * From n7cbs.b_interest_calc_td_renew_d;
Create Table n7cbs_b.b_interest_calc_tds_d as select * From n7cbs.b_interest_calc_tds_d;
Create Table n7cbs_b.b_interest_tds_calc_acct_d as select * From n7cbs.b_interest_tds_calc_acct_d;
Create Table n7cbs_b.b_mast_auth_lock_m as select * From n7cbs.b_mast_auth_lock_m;
Create Table n7cbs_b.b_mast_day_seq_m as select * From n7cbs.b_mast_day_seq_m;
Create Table n7cbs_b.b_mast_json_data_d as select * From n7cbs.b_mast_json_data_d;
Create Table n7cbs_b.b_mast_seq_m as select * From n7cbs.b_mast_seq_m;
Create Table n7cbs_b.b_pigmy_agent_m as select * From n7cbs.b_pigmy_agent_m;
Create Table n7cbs_b.b_mast_change_log_d as select * From n7cbs.b_mast_change_log_d;
Create Table n7cbs_b.b_instr_book_inv_m as select * From n7cbs.b_instr_book_inv_m;
Create Table n7cbs_b.b_instr_book_stock_d as select * From n7cbs.b_instr_book_stock_d;
Create Table n7cbs_b.b_interest_calc_m as select * From n7cbs.b_interest_calc_m;
Create Table n7cbs_b.b_remitt_last_instr_no_m as select * From n7cbs.b_remitt_last_instr_no_m;
Create Table n7cbs_b.b_share_div_rate_m as select * From n7cbs.b_share_div_rate_m;
Create Table n7cbs_b.b_share_type_last_no_m as select * From n7cbs.b_share_type_last_no_m;
Create Table n7cbs_b.b_ta_dep_int_pay_link_d as select * From n7cbs.b_ta_dep_int_pay_link_d;
Create Table n7cbs_b.b_ta_tran_acct_deposit_interest_d as select * From n7cbs.b_ta_tran_acct_deposit_interest_d;
Create Table n7cbs_b.b_ta_tran_acct_deposit_tds_d as select * From n7cbs.b_ta_tran_acct_deposit_tds_d;
Create Table n7cbs_b.b_ta_tran_clg_gen_link_d as select * From n7cbs.b_ta_tran_clg_gen_link_d;
Create Table n7cbs_b.b_safe_box_locker_d as select * From n7cbs.b_safe_box_locker_d;
Create Table n7cbs_b.b_share_cert_m as select * From n7cbs.b_share_cert_m;
Create Table n7cbs_b.b_remitt_m as select * From n7cbs.b_remitt_m;
Create Table n7cbs_b.b_recon_tran_match_m as select * From n7cbs.b_recon_tran_match_m;
Create Table n7cbs_b.b_recon_tran_match_d as select * From n7cbs.b_recon_tran_match_d;
Create Table n7cbs_b.b_share_appl_m as select * From n7cbs.b_share_appl_m;
Create Table n7cbs_b.b_share_type_m as select * From n7cbs.b_share_type_m;
Create Table n7cbs_b.b_tran_acct_deaf_d as select * From n7cbs.b_tran_acct_deaf_d;
Create Table n7cbs_b.b_tran_acct_deposit_tds_d as select * From n7cbs.b_tran_acct_deposit_tds_d;
Create Table n7cbs_b.b_tran_acct_excep_d as select * From n7cbs.b_tran_acct_excep_d;
Create Table n7cbs_b.b_tran_acct_instr_present_d as select * From n7cbs.b_tran_acct_instr_present_d;
Create Table n7cbs_b.b_tran_acct_loan_rec_d as select * From n7cbs.b_tran_acct_loan_rec_d;
Create Table n7cbs_b.b_tran_advice_d as select * From n7cbs.b_tran_advice_d;
Create Table n7cbs_b.b_tran_auth_lock_m as select * From n7cbs.b_tran_auth_lock_m;
Create Table n7cbs_b.b_tran_bde_m as select * From n7cbs.b_tran_bde_m;
Create Table n7cbs_b.b_tran_bulk_acct_d as select * From n7cbs.b_tran_bulk_acct_d;
Create Table n7cbs_b.b_tran_cash_token_lock_m as select * From n7cbs.b_tran_cash_token_lock_m;
Create Table n7cbs_b.b_tran_charge_d as select * From n7cbs.b_tran_charge_d;
Create Table n7cbs_b.b_tran_charge_park_d as select * From n7cbs.b_tran_charge_park_d;
Create Table n7cbs_b.b_tran_clg_gen_img_d as select * From n7cbs.b_tran_clg_gen_img_d;
Create Table n7cbs_b.b_tran_bill_m as select * From n7cbs.b_tran_bill_m;
Create Table n7cbs_b.b_tran_bill_item_d as select * From n7cbs.b_tran_bill_item_d;
Create Table n7cbs_b.b_tran_cash_denom_m as select * From n7cbs.b_tran_cash_denom_m;
Create Table n7cbs_b.b_tran_acct_tds_rev_d as select * From n7cbs.b_tran_acct_tds_rev_d;
Create Table n7cbs_b.b_tran_import_acct_d as select * From n7cbs.b_tran_import_acct_d;
Create Table n7cbs_b.b_tran_import_m as select * From n7cbs.b_tran_import_m;
Create Table n7cbs_b.b_tran_link_tran_d as select * From n7cbs.b_tran_link_tran_d;
Create Table n7cbs_b.b_tran_lock_m as select * From n7cbs.b_tran_lock_m;
Create Table n7cbs_b.b_tran_log_d as select * From n7cbs.b_tran_log_d;
Create Table n7cbs_b.b_tran_m_lgcy as select * From n7cbs.b_tran_m_lgcy;
Create Table n7cbs_b.b_tran_pigmy_comm_d as select * From n7cbs.b_tran_pigmy_comm_d;
Create Table n7cbs_b.b_tran_gsec_deal_d as select * From n7cbs.b_tran_gsec_deal_d;
Create Table n7cbs_b.b_tran_eft_d as select * From n7cbs.b_tran_eft_d;
Create Table n7cbs_b.b_tran_ta_link_tran_d as select * From n7cbs.b_tran_ta_link_tran_d;
Create Table n7cbs_b.b_tran_td_renew_acct_deposit_d as select * From n7cbs.b_tran_td_renew_acct_deposit_d;
Create Table n7cbs_b.b_tran_td_renew_d as select * From n7cbs.b_tran_td_renew_d;
Create Table n7cbs_b.b_tran_td_renew_d_hist as select * From n7cbs.b_tran_td_renew_d_hist;
Create Table n7cbs_b.b_tran_template_acct_d as select * From n7cbs.b_tran_template_acct_d;
Create Table n7cbs_b.b_tran_template_m as select * From n7cbs.b_tran_template_m;
Create Table n7cbs_b.c_alert_event_config_d as select * From n7cbs.c_alert_event_config_d;
Create Table n7cbs_b.c_alert_template_m as select * From n7cbs.c_alert_template_m;
Create Table n7cbs_b.c_all_ref_map_d as select * From n7cbs.c_all_ref_map_d;
Create Table n7cbs_b.c_asset_class_prov_d as select * From n7cbs.c_asset_class_prov_d;
Create Table n7cbs_b.c_bank_m as select * From n7cbs.c_bank_m;
Create Table n7cbs_b.c_bank_param_m as select * From n7cbs.c_bank_param_m;
Create Table n7cbs_b.c_batch_spl_calc_m as select * From n7cbs.c_batch_spl_calc_m;
Create Table n7cbs_b.c_branch_param_m as select * From n7cbs.c_branch_param_m;
Create Table n7cbs_b.c_branch_param_m_temp as select * From n7cbs.c_branch_param_m_temp;
Create Table n7cbs_b.c_all_code_ref_type_m as select * From n7cbs.c_all_code_ref_type_m;
Create Table n7cbs_b.c_all_code_ref_d as select * From n7cbs.c_all_code_ref_d;
Create Table n7cbs_b.c_all_ref_type_m as select * From n7cbs.c_all_ref_type_m;
Create Table n7cbs_b.c_bill_item_m as select * From n7cbs.c_bill_item_m;
Create Table n7cbs_b.c_bill_item_stax_period_m as select * From n7cbs.c_bill_item_stax_period_m;
Create Table n7cbs_b.c_bill_item_stax_rate_d as select * From n7cbs.c_bill_item_stax_rate_d;
Create Table n7cbs_b.c_ckyc_batch_file_m as select * From n7cbs.c_ckyc_batch_file_m;
Create Table n7cbs_b.c_ckyc_cust_batch_file_d as select * From n7cbs.c_ckyc_cust_batch_file_d;
Create Table n7cbs_b.c_ckyc_cust_batch_file_resp_d as select * From n7cbs.c_ckyc_cust_batch_file_resp_d;
Create Table n7cbs_b.c_ckyc_cust_data_valid_d as select * From n7cbs.c_ckyc_cust_data_valid_d;
Create Table n7cbs_b.c_cmn_seq_m as select * From n7cbs.c_cmn_seq_m;
Create Table n7cbs_b.c_common_file_load_m as select * From n7cbs.c_common_file_load_m;
Create Table n7cbs_b.c_charge_calc_m as select * From n7cbs.c_charge_calc_m;
Create Table n7cbs_b.c_cust_beneficary_m as select * From n7cbs.c_cust_beneficary_m;
Create Table n7cbs_b.c_cust_document_d as select * From n7cbs.c_cust_document_d;
Create Table n7cbs_b.c_cust_document_img_d as select * From n7cbs.c_cust_document_img_d;
Create Table n7cbs_b.c_cust_gold_items_img_d as select * From n7cbs.c_cust_gold_items_img_d;
Create Table n7cbs_b.c_data_extr_cibil_d as select * From n7cbs.c_data_extr_cibil_d;
Create Table n7cbs_b.c_data_extr_cust_itax_d as select * From n7cbs.c_data_extr_cust_itax_d;
Create Table n7cbs_b.c_cust_security_gold_d as select * From n7cbs.c_cust_security_gold_d;
Create Table n7cbs_b.c_cust_itax_d as select * From n7cbs.c_cust_itax_d;
Create Table n7cbs_b.c_cust_related_person_d as select * From n7cbs.c_cust_related_person_d;
Create Table n7cbs_b.c_cust_security_insurance_d as select * From n7cbs.c_cust_security_insurance_d;
Create Table n7cbs_b.c_gl_arrear_recovery_pref_m as select * From n7cbs.c_gl_arrear_recovery_pref_m;
Create Table n7cbs_b.c_gl_bal_recovery_pref_m as select * From n7cbs.c_gl_bal_recovery_pref_m;
Create Table n7cbs_b.c_gl_txn_limit_m as select * From n7cbs.c_gl_txn_limit_m;
Create Table n7cbs_b.c_holiday_m as select * From n7cbs.c_holiday_m;
Create Table n7cbs_b.c_interest_calc_gl_scheme_m as select * From n7cbs.c_interest_calc_gl_scheme_m;
Create Table n7cbs_b.c_interest_calc_m as select * From n7cbs.c_interest_calc_m;
Create Table n7cbs_b.c_kyc_doc_ref_d as select * From n7cbs.c_kyc_doc_ref_d;
Create Table n7cbs_b.c_money_product_rate_m as select * From n7cbs.c_money_product_rate_m;
Create Table n7cbs_b.c_print_doc_field_d as select * From n7cbs.c_print_doc_field_d;
Create Table n7cbs_b.c_print_doc_m as select * From n7cbs.c_print_doc_m;
Create Table n7cbs_b.c_report_day_m as select * From n7cbs.c_report_day_m;
Create Table n7cbs_b.c_gl_reference_d as select * From n7cbs.c_gl_reference_d;
Create Table n7cbs_b.c_gl_roi_m as select * From n7cbs.c_gl_roi_m;
Create Table n7cbs_b.c_gl_roi_slab_d as select * From n7cbs.c_gl_roi_slab_d;
Create Table n7cbs_b.c_gl_scheme_charge_group_d as select * From n7cbs.c_gl_scheme_charge_group_d;
Create Table n7cbs_b.c_gl_scheme_roi_m as select * From n7cbs.c_gl_scheme_roi_m;
Create Table n7cbs_b.c_security_valuer_m as select * From n7cbs.c_security_valuer_m;
Create Table n7cbs_b.c_sundry_party_m as select * From n7cbs.c_sundry_party_m;
Create Table n7cbs_b.c_tds_m as select * From n7cbs.c_tds_m;
Create Table n7cbs_b.c_tran_eft_file_d as select * From n7cbs.c_tran_eft_file_d;
Create Table n7cbs_b.c_tran_eft_file_err_d as select * From n7cbs.c_tran_eft_file_err_d;
Create Table n7cbs_b.c_year_qtr_m as select * From n7cbs.c_year_qtr_m;
Create Table n7cbs_b.c_stock_type_m as select * From n7cbs.c_stock_type_m;
Create Table n7cbs_b.c_report_param_d as select * From n7cbs.c_report_param_d;
Create Table n7cbs_b.c_report_ranges_d as select * From n7cbs.c_report_ranges_d;
Create Table n7cbs_b.c_stax_m as select * From n7cbs.c_stax_m;
Create Table n7cbs_b.c_stax_period_m as select * From n7cbs.c_stax_period_m;
Create Table n7cbs_b.c_stax_rate_d as select * From n7cbs.c_stax_rate_d;
Create Table n7cbs_b.s_acct_ref_gl_method_pattern_m as select * From n7cbs.s_acct_ref_gl_method_pattern_m;
Create Table n7cbs_b.s_alert_template_txt_m as select * From n7cbs.s_alert_template_txt_m;
Create Table n7cbs_b.s_charge_type_m as select * From n7cbs.s_charge_type_m;
Create Table n7cbs_b.s_ckyc_file_type_m as select * From n7cbs.s_ckyc_file_type_m;
Create Table n7cbs_b.s_day_process_m as select * From n7cbs.s_day_process_m;
Create Table n7cbs_b.s_fin_year_m as select * From n7cbs.s_fin_year_m;
Create Table n7cbs_b.s_gl_deposit_scheme_m as select * From n7cbs.s_gl_deposit_scheme_m;
Create Table n7cbs_b.s_gl_group_reference_m as select * From n7cbs.s_gl_group_reference_m;
Create Table n7cbs_b.s_gl_group_set_d as select * From n7cbs.s_gl_group_set_d;
Create Table n7cbs_b.s_glg_tm_tt_d as select * From n7cbs.s_glg_tm_tt_d;
Create Table n7cbs_b.s_group_m as select * From n7cbs.s_group_m;
Create Table n7cbs_b.s_instr_type_gl_group_d as select * From n7cbs.s_instr_type_gl_group_d;
Create Table n7cbs_b.s_instrument_type_m as select * From n7cbs.s_instrument_type_m;
Create Table n7cbs_b.s_main_gl_group_m as select * From n7cbs.s_main_gl_group_m;
Create Table n7cbs_b.s_ratio_m as select * From n7cbs.s_ratio_m;
Create Table n7cbs_b.s_acct_ref_type_m as select * From n7cbs.s_acct_ref_type_m;
Create Table n7cbs_b.s_tab_cols_m as select * From n7cbs.s_tab_cols_m;
Create Table n7cbs_b.s_tran_spl_type_m as select * From n7cbs.s_tran_spl_type_m;
Create Table n7cbs_b.s_tt_narration_d as select * From n7cbs.s_tt_narration_d;
Create Table n7cbs_b.s_tran_auto_model_d as select * From n7cbs.s_tran_auto_model_d;
Create Table n7cbs_b.b_acct_gsec_diary_d as select * From n7cbs.b_acct_gsec_diary_d;
Create Table n7cbs_b.b_acct_gsec_m as select * From n7cbs.b_acct_gsec_m;
Create Table n7cbs_b.b_acct_deposit_investment_m as select * From n7cbs.b_acct_deposit_investment_m;
Create Table n7cbs_b.b_acct_deposit_mtd_d as select * From n7cbs.b_acct_deposit_mtd_d;
Create Table n7cbs_b.b_acct_loan_dp_d as select * From n7cbs.b_acct_loan_dp_d;
Create Table n7cbs_b.b_acct_loan_deposit_acct_d as select * From n7cbs.b_acct_loan_deposit_acct_d;
Create Table n7cbs_b.b_acct_loan_deposit_appl_m as select * From n7cbs.b_acct_loan_deposit_appl_m;
Create Table n7cbs_b.b_acct_loan_dp_stock_d as select * From n7cbs.b_acct_loan_dp_stock_d;
Create Table n7cbs_b.b_acct_loan_emi_diary_d as select * From n7cbs.b_acct_loan_emi_diary_d;
Create Table n7cbs_b.b_acct_loan_limit_as_disb_m as select * From n7cbs.b_acct_loan_limit_as_disb_m;
Create Table n7cbs_b.b_acct_loan_limit_adhoc_d as select * From n7cbs.b_acct_loan_limit_adhoc_d;
Create Table n7cbs_b.b_acct_loan_roi_slab_d as select * From n7cbs.b_acct_loan_roi_slab_d;
Create Table n7cbs_b.b_acct_loan_surety_d as select * From n7cbs.b_acct_loan_surety_d;
Create Table n7cbs_b.b_acct_loan_security_d as select * From n7cbs.b_acct_loan_security_d;
Create Table n7cbs_b.b_acct_loan_security_deposit_d as select * From n7cbs.b_acct_loan_security_deposit_d;
Create Table n7cbs_b.b_acct_ref_all_m as select * From n7cbs.b_acct_ref_all_m;
Create Table n7cbs_b.b_acct_safe_box_locker_m as select * From n7cbs.b_acct_safe_box_locker_m;
Create Table n7cbs_b.b_acct_deposit_m as select * From n7cbs.b_acct_deposit_m;
Create Table n7cbs_b.b_acct_deposit_renew_d as select * From n7cbs.b_acct_deposit_renew_d;
Create Table n7cbs_b.b_cbr_holiday_d as select * From n7cbs.b_cbr_holiday_d;
Create Table n7cbs_b.b_cbr_week_holiday_d as select * From n7cbs.b_cbr_week_holiday_d;
Create Table n7cbs_b.b_charge_calc_m as select * From n7cbs.b_charge_calc_m;
Create Table n7cbs_b.b_charge_calc_acct_d as select * From n7cbs.b_charge_calc_acct_d;
Create Table n7cbs_b.b_charge_gl_scheme_d as select * From n7cbs.b_charge_gl_scheme_d;
Create Table n7cbs_b.b_charge_m as select * From n7cbs.b_charge_m;
Create Table n7cbs_b.b_cbr_incharge_d as select * From n7cbs.b_cbr_incharge_d;
Create Table n7cbs_b.b_cash_point_denom_bal_d as select * From n7cbs.b_cash_point_denom_bal_d;
Create Table n7cbs_b.b_charge_rate_m as select * From n7cbs.b_charge_rate_m;
Create Table n7cbs_b.b_charge_rate_slab_d as select * From n7cbs.b_charge_rate_slab_d;
Create Table n7cbs_b.b_cbr_work_date_m as select * From n7cbs.b_cbr_work_date_m;
Create Table n7cbs_b.b_interest_calc_loan_d as select * From n7cbs.b_interest_calc_loan_d;
Create Table n7cbs_b.b_interest_calc_sh_d as select * From n7cbs.b_interest_calc_sh_d;
Create Table n7cbs_b.b_mast_change_diff_d as select * From n7cbs.b_mast_change_diff_d;
Create Table n7cbs_b.s_process_type_m as select * From n7cbs.s_process_type_m;
Create Table n7cbs_b.b_process_job_done_m as select * From n7cbs.b_process_job_done_m;
Create Table n7cbs_b.b_process_job_running_m as select * From n7cbs.b_process_job_running_m;
Create Table n7cbs_b.b_process_log_d as select * From n7cbs.b_process_log_d;
Create Table n7cbs_b.b_process_job_run_log_d as select * From n7cbs.b_process_job_run_log_d;
Create Table n7cbs_b.s_alert_m as select * From n7cbs.s_alert_m;
Create Table n7cbs_b.b_q_alert_msg_d as select * From n7cbs.b_q_alert_msg_d;
Create Table n7cbs_b.b_recon_m as select * From n7cbs.b_recon_m;
Create Table n7cbs_b.b_recon_period_m as select * From n7cbs.b_recon_period_m;
Create Table n7cbs_b.b_recon_period_seq_m as select * From n7cbs.b_recon_period_seq_m;
Create Table n7cbs_b.b_share_appl_cert_d as select * From n7cbs.b_share_appl_cert_d;
Create Table n7cbs_b.b_share_appl_nominee_d as select * From n7cbs.b_share_appl_nominee_d;
Create Table n7cbs_b.b_safe_box_m as select * From n7cbs.b_safe_box_m;
Create Table n7cbs_b.b_safe_box_locker_rent_m as select * From n7cbs.b_safe_box_locker_rent_m;
Create Table n7cbs_b.b_si_m as select * From n7cbs.b_si_m;
Create Table n7cbs_b.b_si_exe_log_d as select * From n7cbs.b_si_exe_log_d;
Create Table n7cbs_b.s_eft_iface_type_m as select * From n7cbs.s_eft_iface_type_m;
Create Table n7cbs_b.c_all_ref_d as select * From n7cbs.c_all_ref_d;
Create Table n7cbs_b.c_ccy_m as select * From n7cbs.c_ccy_m;
Create Table n7cbs_b.s_balance_type_m as select * From n7cbs.s_balance_type_m;
Create Table n7cbs_b.s_gl_group_m as select * From n7cbs.s_gl_group_m;
Create Table n7cbs_b.c_gl_scheme_roi_offset_slab_d as select * From n7cbs.c_gl_scheme_roi_offset_slab_d;
Create Table n7cbs_b.c_report_category_m as select * From n7cbs.c_report_category_m;
Create Table n7cbs_b.c_report_m as select * From n7cbs.c_report_m;
Create Table n7cbs_b.c_tran_type_alert_map_d as select * From n7cbs.c_tran_type_alert_map_d;
Create Table n7cbs_b.c_pin_code_m as select * From n7cbs.c_pin_code_m;
Create Table n7cbs_b.c_pin_code_area_m as select * From n7cbs.c_pin_code_area_m;
Create Table n7cbs_b.s_alert_group_m as select * From n7cbs.s_alert_group_m;
Create Table n7cbs_b.s_arrear_tran_model_d as select * From n7cbs.s_arrear_tran_model_d;
Create Table n7cbs_b.s_ratio_component_m as select * From n7cbs.s_ratio_component_m;
Create Table n7cbs_b.s_ratio_component_source_d as select * From n7cbs.s_ratio_component_source_d;
Create Table n7cbs_b.s_report_format_m as select * From n7cbs.s_report_format_m;
Create Table n7cbs_b.s_rfc_data_source_d as select * From n7cbs.s_rfc_data_source_d;
Create Table n7cbs_b.s_rfc_acct_bal_sum_type_m as select * From n7cbs.s_rfc_acct_bal_sum_type_m;
Create Table n7cbs_b.s_rfc_column_m as select * From n7cbs.s_rfc_column_m;
Create Table n7cbs_b.s_tab_m as select * From n7cbs.s_tab_m;