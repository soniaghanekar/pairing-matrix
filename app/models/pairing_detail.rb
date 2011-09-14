class PairingDetail < ActiveRecord::Base

  belongs_to :pair1, :class_name => 'Employee_Details'
  belongs_to :pair2, :class_name => 'Employee_Details'

  validates :pair1_id, :presence => true, :uniqueness => {:scope => :pair2_id}

  validates_presence_of :pair1_id, :pair2_id, :number_of_times_paired,
  :message=>'mandatory'

  validates_numericality_of :pair1_id, :pair2_id, :number_of_times_paired,
  :message=>'should be a number'

  def self.get_total_count(pair_counts)
    pair_counts.each_key{|id|

      pair_counts[id].each_key{|pair|
            if(id!=pair)
              count1=pair_counts[id][pair]
              count2=pair_counts[pair][id]
              pair_counts[id][pair]=count1+count2
              pair_counts[pair][id]=count1+count2
            end
        }
    }


  end



end
