class Post < ActiveRecord::Base

	belongs_to :category
	validates_presence_of :category_id, :body, :title
	
	

end
