class AddIndexesToJoinTables < ActiveRecord::Migration
  def change
		add_index :groups_students, 					[:student_id, :group_id]
		add_index :classifications_students, 	[:classification_id, :student_id], name: 'index_classifications_students_on_classification_and_student_id'
		add_index :ethnicities_students, 			[:student_id, :ethnicity_id]
		add_index :logs_types, 								[:log_id, :type_id]
		add_index :logs_referrals, 						[:log_id, :referral_id]
		add_index :asca_domains_logs, 				[:log_id, :asca_domain_id]
		add_index :interventions_logs, 				[:log_id, :intervention_id]
		add_index :logs_seen_bies, 						[:log_id, :seen_by_id]
		add_index :logs_students, 						[:log_id, :student_id]
  end
end
