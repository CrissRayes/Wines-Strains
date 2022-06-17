class Position < ApplicationRecord
  has_many :oenologist_position
  has_many :oenologists, :through => :oenologist_position, dependent: :destroy
end
