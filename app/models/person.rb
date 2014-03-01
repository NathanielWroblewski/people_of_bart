class Person < ActiveRecord::Base
  has_attached_file :photo, default_url: 'images/missing.png'
  validates_attachment :photo,
    presence: true,
    content_type: { content_type: /\Aimage\/.*\Z/ },
    size: { in: 0..5120.kilobytes }

  validates :photo_cred, presence: true
  validates :caption, presence: true
end
