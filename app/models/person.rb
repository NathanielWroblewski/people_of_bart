class Person < ActiveRecord::Base
  has_attached_file :photo, default_url: 'images/missing.png'
  validates_attachment :photo,
    presence: true,
    content_type: { content_type: /\Aimage\/.*\Z/ },
    size: { in: 0..5120.kilobytes }

  validates :photo_cred, presence: true
  validates :caption, presence: true

  def self.approved
    where(status: :approved)
  end

  def self.line_cutters
    where(line_cutter: true)
  end

  def self.non_line_cutters
    where(line_cutter: false)
  end

  def approve
    update_attributes(status: :approved)
  end
end
