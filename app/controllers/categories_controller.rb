class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
    render json: @categories.to_json(:include => :innovations)
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    if @category
      render json: @category.to_json(:include => :innovations)
    else
      render json: { error: "No category with id: #{params[:id]}"}, status: 400
    end
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    if @category.save
      render :show, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        render :show, status: :ok, location: @category
      else
        render json: @category.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :order)
    end
end
