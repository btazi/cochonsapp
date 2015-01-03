class CreateCochons < ActiveRecord::Migration
  def change
    create_table :cochons do |t|
      t.string :name
      t.integer :age
      t.integer :kg
      t.text :description

      t.timestamps null: false
    end
  end
end
