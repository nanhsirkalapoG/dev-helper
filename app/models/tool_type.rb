class ToolType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
