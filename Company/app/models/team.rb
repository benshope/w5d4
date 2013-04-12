# == Schema Information
#
# Table name: teams
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  supervisor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Team < ActiveRecord::Base
  belongs_to :supervisor, class_name: "Employee"
  has_many :team_memberships
  has_many :members, through: :team_memberships, source: :employee

  attr_accessible :name, :supervisor_id
end
