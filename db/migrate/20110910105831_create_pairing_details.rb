class CreatePairingDetails < ActiveRecord::Migration
  def change
    create_table :pairing_details do |t|
      t.integer :pair1_id
      t.integer :pair2_id
      t.integer :number_of_times_paired

      t.timestamps
    end
  end
end
