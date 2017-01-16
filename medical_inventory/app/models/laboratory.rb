class Laboratory < ApplicationRecord
  has_many :products, class_name: "Product", dependent: :restrict_with_error
end
