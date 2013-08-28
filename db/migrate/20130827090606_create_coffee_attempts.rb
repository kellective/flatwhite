class CreateCoffeeAttempts < ActiveRecord::Migration
  def change
    create_table :coffee_attempts do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
