class CreatePairingMembers < ActiveRecord::Migration
  def change
    create_table :pairing_members do |t|
      t.integer :matrix_id
      t.string :pairing_members

      t.timestamps
    end
  end
end
