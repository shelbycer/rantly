class User < ActiveRecord::Base
  has_secure_password

  has_many :rants

  has_many :follows, foreign_key: :follower_id
  has_many :follows, foreign_key: :followee_id


  validates :username, presence: {error: "Username required, must be unique."}
  validates :password, length: {minimum: 8}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, length: {maximum: 500}




end