class EmployeeDetail < ActiveRecord::Base

  has_many :pairing_detail, :foreign_key => "pair1_id", :dependent => :destroy
  #has_many :pair2s, :through=> :pairing_detail , :dependent => :destroy

end
