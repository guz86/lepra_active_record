class CreateComments < ActiveRecord::Migration
  def change

  	create_table :comments do |c|
  		
		c.text :content 

		#created, updated
		c.timestamps
	end

  end
end
