class AddUserToCoffeeAttempt < ActiveRecord::Migration
  def change
  	add_column :coffee_attempts, :user, :string
  	add_column :coffee_attempts, :user_name, :string
  end

end
