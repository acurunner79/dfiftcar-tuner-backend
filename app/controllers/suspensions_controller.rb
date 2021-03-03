class SuspensionsController < ApplicationController
  before_action :set_suspension, only: [:show, :update, :destroy]

  # GET /suspensions
  def index
    @suspensions = Suspension.all

    render json: @suspensions
  end

  # GET /suspensions/1
  def show
    render json: @suspension
  end

  # POST /suspensions
  def create
    @suspension = Suspension.new(suspension_params)

    if @suspension.save
      render json: @suspension, status: :created, location: @suspension
    else
      render json: @suspension.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /suspensions/1
  def update
    if @suspension.update(suspension_params)
      render json: @suspension
    else
      render json: @suspension.errors, status: :unprocessable_entity
    end
  end

  # DELETE /suspensions/1
  def destroy
    @suspension.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suspension
      @suspension = Suspension.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suspension_params
      params.require(:suspension).permit(:name, :brand)
    end
end
