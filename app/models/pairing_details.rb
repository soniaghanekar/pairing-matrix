class PairingDetails < ActiveRecord::Base
  validates_presence_of :pair1_id, :pair2_id, :number_of_times_paired,
  :message=>'mandatory'

  validates_numericality_of :pair1_id, :pair2_id, :number_of_times_paired,
  :message=>'should be a number'

  def number_of_times_paired
    attributes['number_of_times_paired']
  end

end
