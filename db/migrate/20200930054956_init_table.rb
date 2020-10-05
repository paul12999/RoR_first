class InitTable < ActiveRecord::Migration[6.0]
  def change
	create_table :users do |t|
		t.string :name
	end	
	create_table :profiles do |t|
		t.integer :user_id , :null =>false
	end	
	add_index :profiles , [:user_id] , :unique => true  #一個user必一個id
	
	create_table :items do |t| 
		t.integer :user_id , :null =>false
		t.string :title
    end                                           #一對多
  
	create_table :book_owners do |t|
		t.integer :user_id 
		t.integer :book_id 
	end	  
	create_table :books do |t|
		t.string :owner_type
		t.integer :owner_id
		t.string :title
	end	                                          #多對多 
    
    create_table :animals do |t|
		t.string :type
		t.string :name
	end                                           #STI
	
  end
end
