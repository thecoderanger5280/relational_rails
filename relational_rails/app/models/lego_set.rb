class LegoSet < ApplicationRecord
  has_many :pieces#, class_name: "Piece"
end