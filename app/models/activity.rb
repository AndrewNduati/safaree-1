class Activity < ApplicationRecord
	belongs_to :experience

	# NOTICE: mount_uploaders is pluralized for multiple file uploads
	mount_uploaders :pictures, PicturesUploader 
	
	
end
