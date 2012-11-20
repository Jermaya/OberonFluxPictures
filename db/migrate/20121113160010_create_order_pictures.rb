class CreateOrderPictures < ActiveRecord::Migration
  def change
    create_table :order_pictures do |t|
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
