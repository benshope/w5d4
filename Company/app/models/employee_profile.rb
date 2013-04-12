# == Schema Information
#
# Table name: employee_profiles
#
#  id           :integer          not null, primary key
#  employee_id  :integer
#  height       :integer
#  favoritefood :string(255)
#  favoriteday  :string(255)
#  dob          :date
#  salary       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class EmployeeProfile < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :dob, :favoriteday, :favoritefood, :height, :salary
end
