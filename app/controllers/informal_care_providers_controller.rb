class InformalCareProvidersController < ApplicationController
before_action :find_senior
before_action :set_informal_care_provider, only: [:show, :edit, :update, :destroy]


def index
    @informal_care_providers = InformalCareProvider.all
  end

  # GET /informal_care_provider/1
  # GET /informal_care_provider/1.json
  def show
  end

  # GET /informal_care_provider/new
  def new
    @informal_care_provider = InformalCareProvider.new
  end

  # GET /informal_care_provider/1/edit
  def edit
  end

  # POST /informal_care_provider
  # POST /informal_care_provider.json
  def create
    @informal_care_provider = @senior.informal_care_providers.create(informal_care_provider_params)
    redirect_to senior_path(@senior)
    # # respond_to do |format|
    # #   if @informal_care_provider.save
    # #     format.html { redirect_to senior_path(@senior), notice: 'informal_care_provider was successfully created.' }
    # #     format.json { render :show, status: :created, location: @informal_care_provider }
    # #   else
    # #     format.html { render :new }
    # #     format.json { render json: @informal_care_providers.errors, status: :unprocessable_entity }
    # #   end
    # end
  end

  # PATCH/PUT /informal_care_provider/1
  # PATCH/PUT /informal_care_provider/1.json
  def update
    respond_to do |format|
      if @informal_care_provider.update(informal_care_provider_params)
        format.html { redirect_to @informal_care_provider, notice: 'Informal_care_provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @informal_care_provider }
      else
        format.html { render :edit }
        format.json { render json: @informal_care_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informal_care_provider/1
  # DELETE /informal_care_provider/1.json
  def destroy
    @informal_care_provider.destroy
    respond_to do |format|
      format.html { redirect_to seniors_url, notice: 'Senior was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



private
    # Use callbacks to share common setup or constraints between actions.
    # def set_informal_care_provider
    #   @informal_care_provider = InformalCareProvider.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informal_care_provider_params
      params.require(:informal_care_provider).permit(:first_name, :last_name, :email, :password, :address)
    end

     def find_senior
    @senior = Senior.find(params[:senior_id])
  end
end
