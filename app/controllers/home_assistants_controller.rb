class HomeAssistantsController < ApplicationController
  before_action :set_home_assistant, only: [:show, :edit, :update, :destroy]

  # GET /home_assistants
  # GET /home_assistants.json
  def index
    @home_assistants = HomeAssistant.all
  end

  # GET /home_assistants/1
  # GET /home_assistants/1.json
  def show
  end

  # GET /home_assistants/new
  def new
    @home_assistant = HomeAssistant.new
  end

  # GET /home_assistants/1/edit
  def edit
  end

  # POST /home_assistants
  # POST /home_assistants.json
  def create
    @home_assistant = HomeAssistant.new(home_assistant_params)

    respond_to do |format|
      if @home_assistant.save
        format.html { redirect_to @home_assistant, notice: 'Home assistant was successfully created.' }
        format.json { render :show, status: :created, location: @home_assistant }
      else
        format.html { render :new }
        format.json { render json: @home_assistant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_assistants/1
  # PATCH/PUT /home_assistants/1.json
  def update
    respond_to do |format|
      if @home_assistant.update(home_assistant_params)
        format.html { redirect_to @home_assistant, notice: 'Home assistant was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_assistant }
      else
        format.html { render :edit }
        format.json { render json: @home_assistant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_assistants/1
  # DELETE /home_assistants/1.json
  def destroy
    @home_assistant.destroy
    respond_to do |format|
      format.html { redirect_to home_assistants_url, notice: 'Home assistant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_assistant
      @home_assistant = HomeAssistant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_assistant_params
      params[:home_assistant]
    end
end
