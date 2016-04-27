require 'aws/s3'

class Article < ActiveRecord::Base
  #mount_uploader :image, ImageUploader
  has_many :comments, dependent: :destroy
  has_attached_file :image, styles: { large: "900x900>", medium: "500x500>", thumb: "250x250>" }
  belongs_to :user
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  acts_as_taggable_on :tags
  
end