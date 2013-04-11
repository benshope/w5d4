class Team < ActiveRecord::Base
  belongs_to :supervisor
  attr_accessible :name
end
