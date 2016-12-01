class Product < ApplicationRecord
  has_many :stocks, class_name: "Stocks"
  belongs_to :laboratory, class_name: "Laboratoty", foreign_key: "laboratoty_id"
  mount_uploader :avatar, AvatarUploader
end
