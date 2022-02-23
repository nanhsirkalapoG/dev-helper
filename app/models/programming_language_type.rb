class ProgrammingLanguageType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
