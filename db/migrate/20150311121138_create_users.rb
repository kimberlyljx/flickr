class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |u|
  		u.string :username, unique: true
  		u.string :password
  	end
  end
end
