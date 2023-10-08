class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    # ユーザーネームの文字数のバリデーション
    validates :user_name, presence: true
    # パスワード英数字混合のバリデーション
    PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
    validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'
    # 苗字のバリデーション
    validates :last_name, presence: true, length: { maximum: 50 }, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    # 名前のバリデーション
    validates :first_name, presence: true, length: { maximum: 50 }, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
end
