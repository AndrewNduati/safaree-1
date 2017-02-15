class Activity < ApplicationRecord
	belongs_to :experience
	mount_uploaders :pictures, PicturesUploader # NOTICE: mount_uploaders is pluralized for multiple file uploads
	
end
