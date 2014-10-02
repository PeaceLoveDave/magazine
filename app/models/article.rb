class Article < ActiveRecord::Base

	validates_presence_of :title
	validates_presence_of :category

	validates :content, presence: true, length: { minimum: 1, maximum: 50000 }


	def author
		"The author name!"
	end


	belongs_to :user
end
