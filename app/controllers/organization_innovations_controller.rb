class OrganizationInnovationsController < ApplicationController
  before_action :set_organization_innovation, only: [:show, :edit, :update, :destroy]

  # GET /organization_innovations
  # GET /organization_innovations.json
  def index
    @organization_innovations = OrganizationInnovation.all
  end

  # GET /organization_innovations/1
  # GET /organization_innovations/1.json
  def show
    if @organization_innovation
      render json: @organization_innovation.to_json(:include => :innovations)
    else
      render json: { error: "No organization:innovation with id: #{params[:id]}"}, status: 400
    end
  end

  # POST /organization_innovations
  # POST /organization_innovations.json
  def create
    @organization_innovation = OrganizationInnovation.new(organization_innovation_params)

    if @organization_innovation.save
      render json: @organization_innovation.to_json(:include => :innovations)
    else
      render json: @organization_innovation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organization_innovations/1
  # PATCH/PUT /organization_innovations/1.json
  def update
    if @organization_innovation
      if @organization_innovation.update(organization_innovation_params)
        render json: @organization_innovation.to_json(:include => :innovations)
      else
        render json: @organization_innovation.errors, status: :unprocessable_entity
      end
    else
      render json: { error: "No organization:innovation with id: #{params[:id]}"}, status: 400
    end
  end

  # DELETE /organization_innovations/1
  # DELETE /organization_innovations/1.json
  def destroy
    if @organization_innovation
      @organization_innovation.destroy
      head :no_content
    else
      render json: { error: "No organization:innovation with id: #{params[:id]}"}, status: 400
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_innovation
      @organization_innovation = OrganizationInnovation.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_innovation_params
      params[:organization_innovation]
    end
end
