class WinnersController < ApplicationController
  before_action :set_winner, only: [:show, :edit, :update, :destroy]

  # GET /winners
  def index
    @winners = winner.all
  end

  # GET /winners/1
  def show
  end

  # GET /winners/new
  def new
    @winner = winner.new
  end

  # GET /winners/1/edit
  def edit
  end

  # POST /winners
  def create
    @winner = winner.new(winner_params)

    if @winner.save
      redirect_to @winner, notice: 'winner was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /winners/1
  def update
    if @winner.update(winner_params)
      redirect_to @winner, notice: 'winner was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /winners/1
  def destroy
    @winner.destroy
    redirect_to winners_url, notice: 'winner was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winner
      @winner = winner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def winner_params
      params.require(:winner).permit()
    end
end
