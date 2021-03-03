class ClutchesController < ApplicationController
  before_action :set_clutch, only: [:show, :update, :destroy]

  # GET /clutches
  def index
    @clutches = Clutch.all

    render json: @clutches
  end

  # GET /clutches/1
  def show
    render json: @clutch
  end

  # POST /clutches
  def create
    @clutch = Clutch.new(clutch_params)

    if @clutch.save
      render json: @clutch, status: :created, location: @clutch
    else
      render json: @clutch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clutches/1
  def update
    if @clutch.update(clutch_params)
      render json: @clutch
    else
      render json: @clutch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clutches/1
  def destroy
    @clutch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clutch
      @clutch = Clutch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clutch_params
      params.require(:clutch).permit(:stage, :brand)
    end
end
