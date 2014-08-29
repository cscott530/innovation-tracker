class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all
    render json: @organizations.to_json(:include => :innovations)
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    if @organization
      render json: @organization.to_json(:include => :innovations)
    else
      render json: { error: "No organization with id: #{params[:id]}"}, status: 400
    end
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)

    if @organization.save
      render :show, status: :created, location: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    if @organization.update(organization_params)
      render :show, status: :ok, location: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:name, :description, :url)
    end
end
