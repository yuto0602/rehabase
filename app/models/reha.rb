class Reha < ApplicationRecord

  belongs_to :user

  validates :category, presence: true
  validates :disease, presence: true
  validates :personality, presence: true
  validates :keyword, presence: true
  validates :evidence_id, presence: true
end
