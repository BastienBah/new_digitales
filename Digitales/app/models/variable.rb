class Variable < ApplicationRecord
  has_and_belongs_to_many :portraits
  has_and_belongs_to_many :indefinitions
end
