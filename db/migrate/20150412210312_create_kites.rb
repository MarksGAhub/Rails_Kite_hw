class CreateKites < ActiveRecord::Migration
  def change
    create_table :kites do |t|
      t.string :name
      t.string :size
      t.float :quantity

      t.timestamps null: false
    end
  end
end
