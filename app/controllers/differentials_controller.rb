class DifferentialsController < ApplicationController
  before_action :set_differential, only: [:show, :update, :destroy]

  # GET /differentials
  def index
    @differentials = Differential.all

    render json: @differentials
  end

  # GET /differentials/1
  def show
    render json: @differential
  end

  # POST /differentials
  def create
    @differential = Differential.new(differential_params)

    if @differential.save
      render json: @differential, status: :created, location: @differential
    else
      render json: @differential.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /differentials/1
  def update
    if @differential.update(differential_params)
      render json: @differential
    else
      render json: @differential.errors, status: :unprocessable_entity
    end
  end

  # DELETE /differentials/1
  def destroy
    @differential.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_differential
      @differential = Differential.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def differential_params
      params.require(:differential).permit(:name, :brand)
    end
end
