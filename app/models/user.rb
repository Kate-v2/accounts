
class User < ApplicationRecord

  validates_presence_of :name, :password
  validates :email, presence: true, uniqueness: true

  def self.authenticate(email, password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
    user = Users.find_by_email(email)
    pw = user.password
    password == pw ? user : nil
  end


end
