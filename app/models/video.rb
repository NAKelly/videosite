class Video < ActiveRecord::Base
	mount_uploader :video, VideoUploader
	extend FriendlyId
	friendly_id :title, use: :slugged
end


class AddVideoToVideos < ActiveRecord::Migration
	def change
		add_column :videos, :media, :string
	end
end