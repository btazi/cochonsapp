class CochonsController < ApplicationController
  before_action :set_cochon, only: [:show, :edit, :update, :destroy]

  # GET /cochons
  # GET /cochons.json
  def index
    @cochons = Cochon.all
  end

  # GET /cochons/1
  # GET /cochons/1.json
  def show
  end

  # GET /cochons/new
  def new
    @cochon = Cochon.new
  end

  # GET /cochons/1/edit
  def edit
  end

  # POST /cochons
  # POST /cochons.json
  def create
    @cochon = Cochon.new(cochon_params)

    respond_to do |format|
      if @cochon.save
        format.html { redirect_to @cochon, notice: 'Cochon was successfully created.' }
        format.json { render :show, status: :created, location: @cochon }
      else
        format.html { render :new }
        format.json { render json: @cochon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cochons/1
  # PATCH/PUT /cochons/1.json
  def update
    respond_to do |format|
      if @cochon.update(cochon_params)
        format.html { redirect_to @cochon, notice: 'Cochon was successfully updated.' }
        format.json { render :show, status: :ok, location: @cochon }
      else
        format.html { render :edit }
        format.json { render json: @cochon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cochons/1
  # DELETE /cochons/1.json
  def destroy
    @cochon.destroy
    respond_to do |format|
      format.html { redirect_to cochons_url, notice: 'Cochon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cochon
      @cochon = Cochon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cochon_params
      params.require(:cochon).permit(:name, :age, :kg, :description)
    end
end
