class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  # validates_format_of :first_name,:last_name,:presence => true,
  # :allow_blank => true,
  # :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/ 

  validates :first_name,:presence => true,
  format: {with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/}

  validates :primary_skill,
  format: {with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/}

  validates :secondary_skill_1,
  format: {with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/}

  validates :secondary_skill_2,:presence => true,
  format: {with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/}
  

  
  validates :mobile,:presence => true,
                 :numericality => true

  validates :pincode, :numericality => true
  #validates_format_of :salary_per_annum, :with => /\0[0-9]+(?: [0-9]+)?\9/          
  
  # validates :salary_per_annum, :salary_per_month,
  #             :numericality => true 
  validates :role, :presence => true                          
                 

end
