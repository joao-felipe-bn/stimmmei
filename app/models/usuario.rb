class Usuario < ApplicationRecord
  has_secure_password
  before_save { self.login = login.downcase }
  validates :login, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
end
