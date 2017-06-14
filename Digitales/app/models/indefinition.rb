class Indefinition < ApplicationRecord
  has_and_belongs_to_many :variable
  has_and_belongs_to_many :portraits
end
