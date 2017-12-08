class User < ApplicationRecord
  validates :first_name, :last_name, :dateofbirth, presence: true
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
