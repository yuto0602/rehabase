class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation


    validates :user_name, presence: true
    PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
    validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'
    validates :last_name, presence: true, length: { maximum: 50 }, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :first_name, presence: true, length: { maximum: 50 }, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :occupation_id, numericality: { other_than: 1, message: "職業を選択してください。"} 
end
