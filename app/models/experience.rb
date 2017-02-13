class Experience < ApplicationRecord
	has_many :activities
	mount_uploader :poster_url, PosterUrlUploader

	def self.search(search)
		if search.present?
			where("country @@ :s", s: search )
        else
           search(:all)
        end
    end
end
