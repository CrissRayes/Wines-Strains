class Wine < ApplicationRecord
  has_many :wine_strains
  has_many :strains, :through => :wine_strains, dependent: :destroy
  accepts_nested_attributes_for :wine_strains

  has_many :wine_oenologists
  has_many :oenologists, :through => :wine_oenologists, dependent: :destroy
  accepts_nested_attributes_for :wine_oenologists
end
