class ParticipatorsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_participator, only: [:show, :edit, :update, :destroy]

  # GET /participators
  # GET /participators.json
  def index
    @participators = Participator.all
  end

  # GET /participators/1
  # GET /participators/1.json
  def show
  end

  # GET /participators/new
  def new
    @participator = Participator.new
  end

  # GET /participators/1/edit
  def edit
  end

  # POST /participators
  # POST /participators.json
  def create
    @participator = Participator.new(participator_params)

    respond_to do |format|
      if @participator.save
        format.html { redirect_to @participator, notice: 'Participator was successfully created.' }
        format.json { render action: 'show', status: :created, location: @participator }
      else
        format.html { render action: 'new' }
        format.json { render json: @participator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participators/1
  # PATCH/PUT /participators/1.json
  def update
    respond_to do |format|
      if @participator.update(participator_params)
        format.html { redirect_to @participator, notice: 'Participator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @participator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participators/1
  # DELETE /participators/1.json
  def destroy
    @participator.destroy
    respond_to do |format|
      format.html { redirect_to participators_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participator
      @participator = Participator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participator_params
      params.require(:participator).permit(:name, :email, :enabled)
    end
end
