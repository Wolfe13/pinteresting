class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :image, :attachment_presence => true, :attachment_content_type => 
  { :content_type => ["image/jpeg", "image/gif", "image/png"] }, :attachment_size => { :less_than => 4.megabytes }
end 