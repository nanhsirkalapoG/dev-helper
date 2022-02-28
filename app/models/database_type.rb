class DatabaseType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
