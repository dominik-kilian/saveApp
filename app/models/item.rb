class Item < ApplicationRecord
  validates :name, length: {minimum: 3, maximum: 20, message: "This is only short name, if you want some more then go to description"}

  enum type_of: %i[tiktok youtube movie clothes other]
end
