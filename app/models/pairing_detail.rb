class PairingDetail < ActiveRecord::Base

  belongs_to :pair1, :class_name => 'Employee_Details'
  belongs_to :pair2, :class_name => 'Employee_Details'

  validates :pair1_id, :presence => true, :uniqueness => {:scope => :pair2_id}

  validates_presence_of :pair1_id, :pair2_id, :number_of_times_paired,
  :message=>'mandatory'

  validates_numericality_of :pair1_id, :pair2_id, :number_of_times_paired,
  :message=>'should be a number'


end
