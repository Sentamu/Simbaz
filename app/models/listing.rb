class Listing < ActiveRecord::Base

	if Rails.env.production?
		           has_attached_file :image,:styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "img.jpg",
											:storage => :dropbox,
											:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
											:path => ":style/:id_:filename"
		validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
	else
		           has_attached_file :image,:styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "img.jpg"
		validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
	end
   validates :name, :description, :price, :category_id, presence: true
   validates :price, numericality: {greater_than_or_equal_to: 0 }
   validates_attachment_presence :image


   belongs_to :user
   has_many :orders
   belongs_to :category
   


end 


