class ProgrammingLanguage < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
