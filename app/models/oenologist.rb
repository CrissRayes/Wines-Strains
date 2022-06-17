class Oenologist < ApplicationRecord
  has_many :oenologist_position
  has_many :positions, :through => :oenologist_position, dependent: :destroy
end
