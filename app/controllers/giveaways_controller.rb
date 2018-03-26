class GiveawaysController < ApplicationController
  before_action :set_giveaway, only: [:show, :edit, :update, :destroy]

  # GET /giveaways
  def index
    @giveaways = Giveaway.all
  end

  # GET /giveaways/1
  def show
  end

  # GET /giveaways/new
  def new
    @giveaway = Giveaway.new
  end

  # GET /giveaways/1/edit
  def edit
  end

  # POST /giveaways
  def create
    @giveaway = Giveaway.new(giveaway_params)
    @giveaway.user = current_user
    if @giveaway.save
      redirect_to @giveaway, notice: 'Giveaway was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /giveaways/1
  def update
    if @giveaway.update(giveaway_params)
      redirect_to @giveaway, notice: 'Giveaway was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /giveaways/1
  def destroy
    @giveaway.destroy
    redirect_to giveaways_url, notice: 'Giveaway was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giveaway
      @giveaway = Giveaway.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def giveaway_params
      params.require(:giveaway).permit(:title, :description, :status, :begin_giveaway, :end_giveaway)
    end
end
