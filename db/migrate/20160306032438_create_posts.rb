class CreatePosts < ActiveRecord::Migration
  def change

  	create_table :post do |p|
  		
		p.text :content 
		p.text :name 
		
		#created, updated
		p.timestamps
	end

  end
end
