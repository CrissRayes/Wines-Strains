class Oenologist < ApplicationRecord
  has_many :oenologist_positions
  has_many :positions, :through => :oenologist_positions, dependent: :destroy
end
