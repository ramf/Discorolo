class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   #Contants
   ROLES = {:full_access => 0, :restricted_access => 1}

   #enums
  enum role: ROLES

  #scopes
  scope :with_full_access, -> { where(role: ROLES[:full_access]) }
  scope :with_restricted_access, -> { where(role: ROLES[:restricted_access]) }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
         validates :name, :email, :role, :password, presence: true

end
