class CreateBrews < ActiveRecord::Migration[5.2]
  def change
    create_table :brews do |t|
      t.string :name, null: false
      t.string :street, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.float :lat, null: false
      t.float :lng, null: false
      t.string :rating, null: false

      t.timestamps
    end
  end
end
