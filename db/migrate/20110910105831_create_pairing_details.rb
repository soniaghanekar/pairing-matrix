class CreatePairingDetails < ActiveRecord::Migration
  def change
    create_table :pairing_detail do |t|
      t.integer :pair1_id
      t.integer :pair2_id
      t.integer :number_of_times_paired

      t.timestamps
    end
    add_index :pairing_detail, :pair1_id
    add_index :pairing_detail, :pair2_id
    add_index :pairing_detail, [:pair1_id, :pair2_id], :unique => true
  end
end
