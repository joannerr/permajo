class HomeController < ApplicationController

	def index
	end

	def search
		redirect_to "/search/#{params[:plante_search].upcase}"
	end

	def search2
		@plante_cherche = params[:plante].upcase

		if params[:plante] != nil && Plantae.find_by(Plante: @plante_cherche) != nil
			@id_plante_search = Plantae.find_by(Plante: @plante_cherche).id

			@tab_ecosystem_plante = Ecosystem.where(plantae_id2: @id_plante_search )
		else
			redirect_to root_path
		end
	end

	def presentation	
	end

	def profil
		if user_signed_in?
			@id_user = current_user.id
			@tab_don = Don.where(user_id: @id_user)
		end
	end

end
