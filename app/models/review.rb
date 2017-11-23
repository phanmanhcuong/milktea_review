class Review < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  has_many :comment
  has_many :like
  has_one :aji

  before_save :average_point

  def average_point
    self.average_point = (self.quality + self.place + self.service + self.price)/4
  end
end
