class HandBrakesController < ApplicationController
  before_action :set_hand_brake, only: [:show, :update, :destroy]

  # GET /hand_brakes
  def index
    @hand_brakes = HandBrake.all

    render json: @hand_brakes
  end

  # GET /hand_brakes/1
  def show
    render json: @hand_brake
  end

  # POST /hand_brakes
  def create
    @hand_brake = HandBrake.new(hand_brake_params)

    if @hand_brake.save
      render json: @hand_brake, status: :created, location: @hand_brake
    else
      render json: @hand_brake.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hand_brakes/1
  def update
    if @hand_brake.update(hand_brake_params)
      render json: @hand_brake
    else
      render json: @hand_brake.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hand_brakes/1
  def destroy
    @hand_brake.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hand_brake
      @hand_brake = HandBrake.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hand_brake_params
      params.require(:hand_brake).permit(:name)
    end
end
