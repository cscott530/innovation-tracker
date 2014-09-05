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
      save_innovations
      render json: @organization.to_json(:include => :innovations)
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    if @organization
      if @organization.update(organization_params)
        save_innovations
        render json: @organization.to_json(:include => :innovations)
      else
        render json: @organization.errors, status: :unprocessable_entity
      end
    else
      render json: { error: "No organization with id: #{params[:id]}"}, status: 400
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    if @organization
      @organization.destroy
      head :no_content
    else
      render json: { error: "No organization with id: #{params[:id]}"}, status: 400
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.permit(:name, :description, :url)
    end

    def save_innovations
      if params[:innovations]
        #delete all entries for innovations in the join table
        @organization.organization_innovations.delete_all

        #loop over innovations by id and remap to Innovation objects, then create join
        innovations = params[:innovations].each do | i |
          innovation = Innovation.find_by_id(i[:id])
          OrganizationInnovation.create({
            organization: @organization,
            innovation: innovation
          });
        end
      end
    end
end
