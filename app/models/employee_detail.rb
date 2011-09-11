class EmployeeDetail < ActiveRecord::Base

  has_many :pairing_details, :foreign_key => "pair1_id", :dependent => :destroy
  has_many :pair2s, :through=> :pairing_details , :dependent => :destroy

  validates_presence_of :name

end
