class ProductsController < ApplicationController

 def index
  @products = Product.all
  @products_json = @products.as_json
 end
 
 def show
  @product = Product.find(params[:id])
  @assets = current_customer.assets if signed_in?
  @current_order = session[:cookies_orderid]
  @get_lines = HTTParty.get("https://preview.webservices.fujifilmesys.com/spa/v2/Orders/#{@current_order}/lines?ApiKey=6dc08434e25b48ec9c0f209ee83eb5aa")
 end

end