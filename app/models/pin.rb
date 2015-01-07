class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, :styles => { :medium => "500x500>", :large => "200x200", :thumb => "50x50>" }, :default_url => "/images/:style/missing.png"
 	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end