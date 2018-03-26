class GiveawayActionSettingsController < ApplicationController
   before_action :set_giveaway_action_setting, only: [:show, :edit, :update, :destroy]

  # GET /giveaways
  def index
    @giveaway_action_settings = giveaway_action_setting.all
  end

  # GET /giveaway_action_settings/1
  def show
  end

  # GET /giveaway_action_settings/new
  def new
    @giveaway_action_setting = giveaway_action_setting.new
  end

  # GET /giveaway_action_settings/1/edit
  def edit
  end

  # POST /giveaway_action_settings
  def create
    @giveaway_action_setting = giveaway_action_setting.new(giveaway_action_setting_params)

    if @giveaway_action_setting.save
      redirect_to @giveaway_action_setting, notice: 'giveaway_action_setting was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /giveaway_action_settings/1
  def update
    if @giveaway_action_setting.update(giveaway_action_setting_params)
      redirect_to @giveaway_action_setting, notice: 'giveaway_action_setting was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /giveaway_action_settings/1
  def destroy
    @giveaway_action_setting.destroy
    redirect_to giveaway_action_settings_url, notice: 'giveaway_action_setting was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giveaway_action_setting
      @giveaway_action_setting = giveaway_action_setting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def giveaway_action_setting_params
      params.require(:giveaway_action_setting).permit(:ticket_q, :like_url, :share_url, :video_url)
    end
end
