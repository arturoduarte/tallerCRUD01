class ProductsController < ApplicationController
	before_action :set_category, only: [:create, :destroy]

	def create
		@product = Product.new(product_params)		
		@product.category = @category
		@product.save
		
		redirect_to @category
	end

	def destroy
		producto = Product.find(params[:id])
		producto.destroy
		
		redirect_to @category
	end
	
	private
	def product_params
		params.require(:product).permit(:name, :price)
	end

	def set_category
		@category = Category.find(params[:category_id])
	end
end
