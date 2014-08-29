class InnovationsController < ApplicationController
  before_action :set_innovation, only: [:show, :edit, :update, :destroy]

  # GET /innovations
  # GET /innovations.json
  def index
    @innovations = Innovation.all
    render json: @innovations.to_json(:include => :category)
  end

  # GET /innovations/1
  # GET /innovations/1.json
  def show
    if @innovation
      render json: @innovation.to_json(:include => :innovations)
    else
      render json: { error: "No innovation with id: #{params[:id]}"}, status: 400
    end
  end

  # POST /innovations
  # POST /innovations.json
  def create
    @innovation = Innovation.new(innovation_params)

    if @innovation.save
      render :show, status: :created, location: @innovation
    else
      render json: @innovation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /innovations/1
  # PATCH/PUT /innovations/1.json
  def update
    if @innovation.update(innovation_params)
      render :show, status: :ok, location: @innovation
    else
      render json: @innovation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /innovations/1
  # DELETE /innovations/1.json
  def destroy
    @innovation.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_innovation
      @innovation = Innovation.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def innovation_params
      params.require(:innovation).permit(:name, :caption, :order, :description)
    end
end
