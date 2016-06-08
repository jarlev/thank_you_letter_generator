class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :letters, dependent: :destroy
   has_many :greetings, dependent: :destroy
   has_many :bodies, dependent: :destroy
   has_many :closings, dependent: :destroy
   
end
