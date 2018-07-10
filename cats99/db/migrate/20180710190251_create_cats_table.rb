class CreateCatsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :cats_tables do |t|
      t.string :birth_date, null: false
      t.string :color, null: false
      t.string :name, null: false
      t.string :sex, null: false
      t.text :description
      t.timestamps
      
    end
  end
end
