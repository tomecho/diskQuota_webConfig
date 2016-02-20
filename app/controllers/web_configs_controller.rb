class WebConfigsController < ApplicationController
  before_action :set_web_config, only: [:show, :edit, :update, :destroy]

  # GET /web_configs
  # GET /web_configs.json
  def index
    @web_configs = WebConfig.all
  end

  # GET /web_configs/1
  # GET /web_configs/1.json
  def show
  end

  # GET /web_configs/new
  def new
    @web_config = WebConfig.new
  end

  # GET /web_configs/1/edit
  def edit
  end

  # POST /web_configs
  # POST /web_configs.json
  def create
    @web_config = WebConfig.new(web_config_params)

    respond_to do |format|
      if @web_config.save
        format.html { redirect_to @web_config, notice: 'Web config was successfully created.' }
        format.json { render :show, status: :created, location: @web_config }
      else
        format.html { render :new }
        format.json { render json: @web_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_configs/1
  # PATCH/PUT /web_configs/1.json
  def update
    respond_to do |format|
      if @web_config.update(web_config_params)
        format.html { redirect_to @web_config, notice: 'Web config was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_config }
      else
        format.html { render :edit }
        format.json { render json: @web_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_configs/1
  # DELETE /web_configs/1.json
  def destroy
    @web_config.destroy
    respond_to do |format|
      format.html { redirect_to web_configs_url, notice: 'Web config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_config
      @web_config = WebConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_config_params
      params.require(:web_config).permit(:directory, :scan_interval, :old)
    end
end
