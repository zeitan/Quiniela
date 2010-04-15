class Match < ActiveRecord::Base
  has_many :results
  has_many :teams, :through => :results
  belongs_to  :team
  belongs_to  :group
  validates_presence_of :name, :datematch, :group_id
  #validates_associated :results
  accepts_nested_attributes_for :results
def after_validation
 debugger
 #console.debug "Entre a after_validations"
end

end

