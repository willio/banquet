class BanquetsController < ApplicationController

	def index
		@banquets = Banquet.all
	end

	def new
		@banquet = Banquet.new
	end

	def create
		@banquet = Banquet.new(banquet_params)

		if @banquet.save
			redirect_to @banquet
		else
			render 'new'
		end
	end

	def show
		@banquet = Banquet.find(params[:id])
	end

	def edit
		@banquet = Banquet.find(params[:id])
	end

	def update
		@banquet = Banquet.find(params[:id])

		if @banquet.update(banquet_params)
			redirect_to @banquet
		else
			render 'edit'
		end
	end

	def destroy
		@banquet = Banquet.find(params[:id])
		@banquet.destroy

		redirect_to banquets_path
	end

	private
	def banquet_params
		params.require(:banquet).permit(:title, :link)
	end
end
