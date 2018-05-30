class CreateSkintones < ActiveRecord::Migration[5.1]
  def change
    create_table :skintones do |t|
      t.string :color

      t.timestamps
    end
  end
end
