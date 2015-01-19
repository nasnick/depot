class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    increment_session
 end
end
  def increment_session
   session[:counter] ||= 0
   session[:counter] += 1
end
  