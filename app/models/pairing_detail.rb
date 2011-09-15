class PairingDetail < ActiveRecord::Base

  belongs_to :pair1, :class_name => 'EmployeeDetail'
  belongs_to :pair2, :class_name => 'EmployeeDetail'

  def self.edit_count(pair1,pair2,count)
      pair_detail=EmployeeDetail.find(pair1).pairing_detail.find_by_pair2_id(pair2)
      pair_detail.number_of_times_paired=count
      pair_inverse=EmployeeDetail.find(pair2).pairing_detail.find_by_pair2_id(pair1)
      pair_inverse.number_of_times_paired=0
      pair_detail.save!
      pair_inverse.save!
  end



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
      puts pair_counts[2][1]
    }

  end

  def self.generate_counts_in_hash
    count=Hash.new
       EmployeeDetail.all.each { |employee|
       count[employee.id]=Hash.new
       count[employee.id].default=0
         employee.pairing_detail.all.each { |pair|
            count[employee.id][pair.pair2_id]=pair.number_of_times_paired
         }
       }

       count
    end

end
