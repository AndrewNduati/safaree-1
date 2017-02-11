class Experience < ApplicationRecord
	has_many :activities
	mount_uploader :poster_url, PosterUrlUploader
end
