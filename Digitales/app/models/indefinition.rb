class Indefinition < ApplicationRecord
  belongs_to :variable
  has_and_belongs_to_many :portraits
end
