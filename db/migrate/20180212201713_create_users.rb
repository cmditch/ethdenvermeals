class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :tokenid
      t.integer :credits, null: false
      t.string :name

      t.timestamps null: false
    end
  end
end
