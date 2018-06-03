class Star < ApplicationRecord
  validates :name, uniqueness: true
end
