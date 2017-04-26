class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.datetime :when
      t.string :who
      t.string :what
      t.string :where
      t.string :phone
      t.string :cost

      t.timestamps null: false
    end
  end
end
