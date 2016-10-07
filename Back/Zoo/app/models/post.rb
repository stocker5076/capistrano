class Post < ApplicationRecord
	belongs_to :usuario
	before_validation  :estableceUsuario
	validates :title, presence:true
	validates :usuario, presence:true


	def estableceUsuario
		if usuario.nil?
		 self.usuario = Usuario.where(username: "Usuario x defecto").first  
		end
	end	

end


