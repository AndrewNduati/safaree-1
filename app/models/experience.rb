class Experience < ApplicationRecord
	has_many :activities
	mount_uploader :poster_url, PosterUrlUploader
	include PgSearch

	pg_search_scope :search_for,
	                 against: %i(title country),
	                 using: {tsearch: {prefix: true}}

	# def self.search(search)
	# 	where("country LIKE?", "%#{search}%") # Ruby is a bitch when it comes to brackets and spaces!
 #    end
end
