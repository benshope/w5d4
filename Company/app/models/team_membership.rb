# == Schema Information
#
# Table name: team_memberships
#
#  id          :integer          not null, primary key
#  employee_id :integer
#  team_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TeamMembership < ActiveRecord::Base
  attr_accessible :team_id, :employee_id

  belongs_to :employee
  belongs_to :team
end
