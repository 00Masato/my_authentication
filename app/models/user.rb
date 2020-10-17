class User < ActiveRecord::Base
  # password, password_confirmationをuserモデルのプロパティとして使用できる
  # validations: trueでpasswordの必須入力とpasswordとpassword_digestの一致が必要
  has_secure_password validations: true

  validates :mail, presence: true, uniqueness: true
end