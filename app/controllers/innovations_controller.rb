class InnovationsController < ApplicationController
  before_action :set_innovation, only: [:show, :edit, :update, :destroy]

  # GET /innovations
  # GET /innovations.json
  def index
    @innovations = Innovation.all
    respond_to do |format|
      format.json { render json: @innovations.to_json(:include => :category)}
    end
  end

  # GET /innovations/1
  # GET /innovations/1.json
  def show
    respond_to do |format|
      format.json { render json: @innovation.to_json(:include => :category)}
    end
  end

  # GET /innovations/new
  def new
    @innovation = Innovation.new
  end

  # GET /innovations/1/edit
  def edit
  end

  # POST /innovations
  # POST /innovations.json
  def create
    @innovation = Innovation.new(innovation_params)

    respond_to do |format|
      if @innovation.save
        format.html { redirect_to @innovation, notice: 'Innovation was successfully created.' }
        format.json { render :show, status: :created, location: @innovation }
      else
        format.html { render :new }
        format.json { render json: @innovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /innovations/1
  # PATCH/PUT /innovations/1.json
  def update
    respond_to do |format|
      if @innovation.update(innovation_params)
        format.html { redirect_to @innovation, notice: 'Innovation was successfully updated.' }
        format.json { render :show, status: :ok, location: @innovation }
      else
        format.html { render :edit }
        format.json { render json: @innovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /innovations/1
  # DELETE /innovations/1.json
  def destroy
    @innovation.destroy
    respond_to do |format|
      format.html { redirect_to innovations_url, notice: 'Innovation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_innovation
      @innovation = Innovation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def innovation_params
      params.require(:innovation).permit(:name, :caption, :order, :description)
    end
end
