class Nebula < ApplicationRecord
  validates :name, uniqueness: true
end
