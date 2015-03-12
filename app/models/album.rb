class Album < ActiveRecord::Base
	has_many :photos
	belongs_to :user
  # Remember to create a migration!
end
