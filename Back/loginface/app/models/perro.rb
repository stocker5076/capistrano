class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers:[:facebook]

  def self.find_for_facebook_oauth(auth)
 perro = Perro.where(provider: auth.provider, uid: auth.uid).first
 # The User was found in our database
 return perro if perro
 # Check if the User is already registered without Facebook
 perro = Perro.where(email: auth.info.email).first
 return perro if perro
 Perro.create(
 name: auth.extra.raw_info.name,
 provider: auth.provider, uid: auth.uid,
 email: auth.info.email,
 password: Devise.friendly_token[0,20])
 end


end
