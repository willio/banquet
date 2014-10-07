class ItemsController < ApplicationController

	def index
		@items = Items.all
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item)
		@item.save
		redirect_to @item
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		@item.update(item)
		redirect_to @item
	end

	def show
		@item = Item.find(params[:id])
	end
end