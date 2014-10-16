class IngredientsController < ApplicationController

	def index
		@ingredients = Ingredient.all
	end

	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(item_params)

		if @ingredient.save
			redirect_to @ingredient
		else
			render 'new'
		end
	end

	def show
		@ingredient = Ingredient.find(params[:id])
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
		# Ingredient.find(params[:ing_id])
		# i = Item.find(item_id)
		# i.ingredients.push(ingredient)
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		@ingredient.update_attributes(ingredients_params)
		if @ingredient.update(item_params)
			redirect_to @ingredient
		else
			render 'edit'
		end
	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		@ingredient.destroy

		redirect_to items_path
	end

	private
	def item_params
		params.require(:ingredient).permit(:id, :name, :price, :item_id)
	end
end
