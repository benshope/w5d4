class Employee < ActiveRecord::Base
  belongs_to :supervisor
  attr_accessible :name
end
