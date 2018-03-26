class DistributionChannelsController < ApplicationController
  before_action :set_distibution_channel, only: [:show, :edit, :update, :destroy]

    # GET /giveaways
    def index
      @distibution_channels = distibution_channel.all
    end

    # GET /distibution_channels/1
    def show
    end

    # GET /distibution_channels/new
    def new
      @distibution_channel = distibution_channel.new
    end

    # GET /distibution_channels/1/edit
    def edit
    end

    # POST /distibution_channels
    def create
      @distibution_channel = distibution_channel.new(distibution_channel_params)

      if @distibution_channel.save
        redirect_to @distibution_channel, notice: 'distibution_channel was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /distibution_channels/1
    def update
      if @distibution_channel.update(distibution_channel_params)
        redirect_to @distibution_channel, notice: 'distibution_channel was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /distibution_channels/1
    def destroy
      @distibution_channel.destroy
      redirect_to distibution_channels_url, notice: 'distibution_channel was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_distibution_channel
        @distibution_channel = distibution_channel.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def distibution_channel_params
        params.require(:distibution_channel).permit(:type)
      end
end
