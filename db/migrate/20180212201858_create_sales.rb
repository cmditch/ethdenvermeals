class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.references :user, index: true, foreign_key: true
      t.references :vendor, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
