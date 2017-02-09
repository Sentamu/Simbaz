class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         acts_as_messageable

          def mailboxer_name
          	self.name
          end

          def mailboxer_email(object)
          	self.email
          end













validates :name, presence: true
validates_uniqueness_of :name

validates :tel, presence: true


has_many :listings, dependent: :destroy
has_many :sales, class_name: "Order", foreign_key: "seller_id"
has_many :purchases, class_name: "Order", foreign_key: "buyer_id"


if Rails.env.production?
		           has_attached_file :avatar,:styles => { :medium => "200x", :thumb => "200x>" }, :default_url => "img.jpg",
											:storage => :dropbox,
											:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
											:path => ":style/:id_:filename"
		validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)
	else
		           has_attached_file :avatar,:styles => { :medium => "200x", :thumb => "200x>" }, :default_url => "img.jpg"
		validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)
	end
   
   


end
