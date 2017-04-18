class AdminController < ApplicationController
  before_action :set_product, except: [:index, :new, :create]

  def index
    @products = Product.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @product.destroy
    redirect :back
  end

  private

  def set_product
    @product = Product.find params[:id]
  end
end
