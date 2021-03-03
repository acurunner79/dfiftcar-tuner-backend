class RollcagesController < ApplicationController
  before_action :set_rollcage, only: [:show, :update, :destroy]

  # GET /rollcages
  def index
    @rollcages = Rollcage.all

    render json: @rollcages
  end

  # GET /rollcages/1
  def show
    render json: @rollcage
  end

  # POST /rollcages
  def create
    @rollcage = Rollcage.new(rollcage_params)

    if @rollcage.save
      render json: @rollcage, status: :created, location: @rollcage
    else
      render json: @rollcage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rollcages/1
  def update
    if @rollcage.update(rollcage_params)
      render json: @rollcage
    else
      render json: @rollcage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rollcages/1
  def destroy
    @rollcage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rollcage
      @rollcage = Rollcage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rollcage_params
      params.require(:rollcage).permit(:name, :brand)
    end
end
