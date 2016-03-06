class CreatePosts < ActiveRecord::Migration
  def change

  	create_table :posts do |p|
  		
		p.text :content 
		p.text :name 

		#created, updated
		p.timestamps
	end

  end
end
