class Portrait < ApplicationRecord
  belongs_to :variable
  has_and_belongs_to_many :indefinitions
end
