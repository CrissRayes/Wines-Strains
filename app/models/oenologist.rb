class Oenologist < ApplicationRecord
  has_many :oenologist_positions
  has_many :positions, :through => :oenologist_positions, dependent: :destroy

  has_many :wine_oenologists
  has_many :wines, :through => :wine_oenologists, dependent: :destroy
end
