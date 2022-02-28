class Ide < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
