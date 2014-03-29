require 'bcrypt'

class User < ActiveRecord::Base
  has_many :dogs

  validates :password, length: {in: 6..30}, uniqueness: true

  validates :username, length: {in: 3..25}, format: {
    with: %r{\A\w(\w|\s{1}\w)+\z},
    message: "This username doesn't follow the format demanded by the website"
  }

  validates :forname, length: {in: 2..20}, format: {
    with: %r{\A[a-zA-Z]+\z},
    message: "bad first name fomat"
  }

  validates :lastname, length: {in: 2..20}, format: {
    with: %r{\A[a-zA-Z]+\z},
    message: "bad last name fomat"
  }


  validates :city, length: {in: 2..75}, format: {
    with: %r{\A[a-zA-Z]([a-zA-Z]|\s[a-zA-Z])+\z},
    message: "bad city fomat"
  }

  validates :occupation, length: {maximum: 400}
 
  validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 5, less_than: 130}
  
  before_create :hash
  before_create :hash_the_password 

  private

  def hash
    self.salt = SecureRandom.base64
  end

  def hash_the_password
    self.password = BCrypt::Password.create(self.salt + self.password) 
  end

end
