class VersionControl < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
