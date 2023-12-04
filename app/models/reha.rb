class Reha < ApplicationRecord

  belongs_to :user
  belongs_to :category
  belongs_to :evidence

  validates :category_id, presence: true
  validates :category_id, numericality: { other_than: 1 message: "can't be blank"}
  validates :disease, presence: true
  validates :personality, presence: true
  validates :keyword, presence: true
  validates :evidence_id, presence: true
  validates :evidence_id, numericality: { other_than: 1 message: "can't be blank"}
end
