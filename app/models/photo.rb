class Photo < ActiveRecord::Base
	belongs_to :album
	mount_uploader :file, PhotoUploader 
  # Remember to create a migration!
end
