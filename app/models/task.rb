class Task < ApplicationRecord
  belongs_to :project

  validates :title, length: { minimum: 5, maximum: 255 }, presence: true
end
