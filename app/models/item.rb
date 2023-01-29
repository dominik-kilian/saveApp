class Item < ApplicationRecord
  validates :name, length: {minimum: 3, maximum: 20, message: "This is only short name, if you want some more then go to description"}

  enum type_of: %i[tiktok youtube movie clothes other]

  scope :tiktok, -> {where(type_of: 0)}
  scope :youtube, -> {where(type_of: 1)}
  scope :movie, -> {where(type_of: 2)}
  scope :clothes, -> {where(type_of: 3)}
  scope :other, -> {where(type_of: 4)}
end
