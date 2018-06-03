class CreateNebulas < ActiveRecord::Migration[5.2]
  def change
    create_table :nebulas do |t|
      t.string :name
      t.string :group

      t.timestamps
    end
  end
end
