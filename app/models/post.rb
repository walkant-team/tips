class Post < ActiveRecord::Base
	acts_as_taggable # Alias for acts_as_taggable_on :tags
	include Bootsy::Container

	has_attached_file :image, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
