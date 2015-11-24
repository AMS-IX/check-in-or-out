class InoroutsController < ApplicationController
  before_action :set_inorout, only: [:show, :edit, :update, :destroy]

  # GET /inorouts
  # GET /inorouts.json
  def index
    @inorouts = Inorout.all
  end

  # GET /inorouts/1
  # GET /inorouts/1.json
  def show
  end

  # GET /inorouts/new
  def new
    @inorout = Inorout.new
  end

  # GET /inorouts/1/edit
  def edit
  end

  # POST /inorouts
  # POST /inorouts.json
  def create
    @inorout = Inorout.new(inorout_params)

    respond_to do |format|
      if @inorout.save
        format.html { redirect_to @inorout, notice: 'Inorout was successfully created.' }
        format.json { render :show, status: :created, location: @inorout }
      else
        format.html { render :new }
        format.json { render json: @inorout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inorouts/1
  # PATCH/PUT /inorouts/1.json
  def update
    respond_to do |format|
      if @inorout.update(inorout_params)
        format.html { redirect_to @inorout, notice: 'Inorout was successfully updated.' }
        format.json { render :show, status: :ok, location: @inorout }
      else
        format.html { render :edit }
        format.json { render json: @inorout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inorouts/1
  # DELETE /inorouts/1.json
  def destroy
    @inorout.destroy
    respond_to do |format|
      format.html { redirect_to inorouts_url, notice: 'Inorout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inorout
      @inorout = Inorout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inorout_params
      params.require(:inorout).permit(:name, :serials, :RMA, :testing, :checkin, :checkout, :date)
    end
end
