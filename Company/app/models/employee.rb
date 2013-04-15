# == Schema Information
#
# Table name: employees
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  supervisor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Employee < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :employee_profile_attributes
  accepts_nested_attributes_for :employee_profile

  belongs_to :supervisor, 
  	class_name: "Employee"
  	inverse_of: :subordinates

  has_many :subordinates, 
  	class_name: "Employee", 
  	foreign_key: "supervisor_id"

  has_many :team_memberships

  has_many :teams, 
  	through: :team_memberships

  has_one :employee_profile, 
  	dependent: :destroy

  accepts_nested_attributes_for :employee_profile

  validates :name, :supervisor, presence: :true
end
