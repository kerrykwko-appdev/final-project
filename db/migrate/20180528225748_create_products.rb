class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :item
      t.string :shade

      t.timestamps
    end
  end
end
