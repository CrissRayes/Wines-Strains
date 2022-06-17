class Position < ApplicationRecord
  has_many :oenologist_positions
  has_many :oenologists, :through => :oenologist_positions, dependent: :destroy
end
