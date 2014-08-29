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
  end

  # GET /organization_innovations/new
  def new
    @organization_innovation = OrganizationInnovation.new
  end

  # GET /organization_innovations/1/edit
  def edit
  end

  # POST /organization_innovations
  # POST /organization_innovations.json
  def create
    @organization_innovation = OrganizationInnovation.new(organization_innovation_params)

    respond_to do |format|
      if @organization_innovation.save
        format.html { redirect_to @organization_innovation, notice: 'Organization innovation was successfully created.' }
        format.json { render :show, status: :created, location: @organization_innovation }
      else
        format.html { render :new }
        format.json { render json: @organization_innovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_innovations/1
  # PATCH/PUT /organization_innovations/1.json
  def update
    respond_to do |format|
      if @organization_innovation.update(organization_innovation_params)
        format.html { redirect_to @organization_innovation, notice: 'Organization innovation was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_innovation }
      else
        format.html { render :edit }
        format.json { render json: @organization_innovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_innovations/1
  # DELETE /organization_innovations/1.json
  def destroy
    @organization_innovation.destroy
    respond_to do |format|
      format.html { redirect_to organization_innovations_url, notice: 'Organization innovation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_innovation
      @organization_innovation = OrganizationInnovation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_innovation_params
      params[:organization_innovation]
    end
end
