class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :validatable, authentication_keys: [:id]

  validates :name, presence: true, length: { maximum: 20 }

  # 下記はユーザのメールアドレスを使用しないため、無効化
  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
  end
end
