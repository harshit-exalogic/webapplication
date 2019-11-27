class AddDateofbirthToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :date_of_joining, :date
    add_column :users, :salary_per_annum, :decimal
    add_column :users, :salary_per_month, :decimal
    add_column :users, :addrress, :string
    add_column :users, :mobile, :string
    add_column :users, :email_id, :string
    add_column :users, :blood_type, :string
    add_column :users, :emergency_contact_name, :string
    add_column :users, :emergency_contact_number, :string
    add_column :users, :primary_skill, :string
    add_column :users, :secondary_skill_1, :string
    add_column :users, :secondary_skill_2, :string
    add_column :users, :notice_period_in_days, :integer

  end
end
