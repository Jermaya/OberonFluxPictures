class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :picture_name
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
