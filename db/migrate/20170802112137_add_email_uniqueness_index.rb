class AddEmailUniquenessIndex < ActiveRecord::Migration[5.1]
 	def self.up
    	add_index :users, :name, :unique => true
  	end

  	def self.down
    	remove_index :users, :email
  	end
end
