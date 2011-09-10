class CreatePairingMartrixes < ActiveRecord::Migration
  def change
    create_table :pairing_martrixes do |t|
      t.integer :matrix_id
      t.string :project_name

      t.timestamps
    end
  end
end
