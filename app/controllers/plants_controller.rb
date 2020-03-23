class PlantsController < ApplicationController
	before_action :authenticate_user! , only: [:show]
	def index
		@plants = Plant.all
	end

	def new
		@plant = Plant.new
	end
	
	def create
		@plant = Plant.new(name: params["plant"]["name"], price: params["plant"]["price"], avatar: params["plant"]["avatar"])
		if @plant.save
			redirect_to plants_path
		else
			render 'new'
		end
	end

	def show
		@plant = Plant.find(params[:id])
	end

end
