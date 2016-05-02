class Post < ActiveRecord::Base
	validates_presence_of :content, :scheduled_at
	validates_length_of :content, maximum: 140, message: "less than 140 please"

	belongs_to :user
end
