class RemoveUserFromCoffeeAttempt < ActiveRecord::Migration
  def change
  	remove_column :coffee_attempts, :user
  	remove_column :coffee_attempts, :user_name
  	add_column :coffee_attempts, :user_id, :integer

  	remove_column :comments, :user_name
  	add_column :comments, :user_id, :integer
  end
end
