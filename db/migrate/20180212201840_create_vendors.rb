class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name, unique: true
      t.integer :pin, unique: true

      t.timestamps null: false
    end
  end
end
