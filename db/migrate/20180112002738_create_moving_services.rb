class CreateMovingServices < ActiveRecord::Migration[5.0]
  def change
    create_table :moving_services do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :number
      t.string :items

      t.timestamps
    end
  end
end
