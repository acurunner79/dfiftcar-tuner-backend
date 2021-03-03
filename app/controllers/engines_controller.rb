class EnginesController < ApplicationController
  before_action :set_engine, only: [:show, :update, :destroy]

  # GET /engines
  def index
    @engines = Engine.all

    render json: @engines
  end

  # GET /engines/1
  def show
    render json: @engine
  end

  # POST /engines
  def create
    @engine = Engine.new(engine_params)

    if @engine.save
      render json: @engine, status: :created, location: @engine
    else
      render json: @engine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /engines/1
  def update
    if @engine.update(engine_params)
      render json: @engine
    else
      render json: @engine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /engines/1
  def destroy
    @engine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engine
      @engine = Engine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def engine_params
      params.require(:engine).permit(:engine_code, :horsepower)
    end
end
