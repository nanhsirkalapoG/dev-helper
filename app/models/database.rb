class Database < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
