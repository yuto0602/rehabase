class Reha < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  belongs_to :evidence

  def self.search(search)
    if search != ""
      Reha.where('title LIKE(?)', "%#{search}%")
    else
      Reha.all
    end
  end

  validates :title, presence: true
  validates :category_id, presence: true
  validates :category_id, numericality: { other_than: 1 }
  validates :disease, presence: true
  validates :personality, presence: true
  validates :keyword, presence: true
  validates :evidence_id, presence: true
  validates :evidence_id, numericality: { other_than: 1 }
end
