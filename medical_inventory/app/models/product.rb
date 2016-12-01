class Product < ApplicationRecord
  has_many :stocks, class_name: "Stocks"
  belongs_to :laboratory, class_name: "Laboratory", foreign_key: "laboratory_id"
  mount_uploader :avatar, AvatarUploader
end
