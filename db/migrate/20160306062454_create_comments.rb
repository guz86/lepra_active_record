class CreateComments < ActiveRecord::Migration
  def change

  	create_table :comments do |c|
  		
		c.text :content 
		c.belongs_to :post, index: true
		#created, updated
		c.timestamps
	end

  end
end
