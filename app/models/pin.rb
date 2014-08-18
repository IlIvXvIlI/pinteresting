class Pin < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)

  validates :description, presence: true
  validates :image, presence: true
end
