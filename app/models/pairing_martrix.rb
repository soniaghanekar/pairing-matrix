class PairingMartrix < ActiveRecord::Base
  validates_presence_of :matrix_id, :project_name
  :message=>'mandatory'

  validates_numericality_of :matrix_id
  :message=>'should be a number'

end
