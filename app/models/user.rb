class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 8 }

  def self.authenticate(name, password)
    User.find_by(name: name, password: password)
  end
end
