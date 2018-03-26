class WinableProductsController < ApplicationController
  before_action :set_winable_product, only: [:show, :edit, :update, :destroy]

  # GET /giveaways
  def index
    @winable_products = winable_product.all
  end

  # GET /winable_products/1
  def show
  end

  # GET /winable_products/new
  def new
    @winable_product = winable_product.new
  end

  # GET /winable_products/1/edit
  def edit
  end

  # POST /winable_products
  def create
    @winable_product = winable_product.new(winable_product_params)

    if @winable_product.save
      redirect_to @winable_product, notice: 'winable_product was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /winable_products/1
  def update
    if @winable_product.update(winable_product_params)
      redirect_to @winable_product, notice: 'winable_product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /winable_products/1
  def destroy
    @winable_product.destroy
    redirect_to winable_products_url, notice: 'winable_product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winable_product
      @winable_product = winable_product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def winable_product_params
      params.require(:winable_product).permit(:photo, :value, :description)
    end
end
