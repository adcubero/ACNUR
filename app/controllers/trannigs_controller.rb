class TrannigsController < ApplicationController
  before_action :set_trannig, only: [:show, :edit, :update, :destroy]

  # GET /trannigs
  # GET /trannigs.json
  def index
    @trannigs = Trannig.all
  end

  # GET /trannigs/1
  # GET /trannigs/1.json
  def show
  end

  # GET /trannigs/new
  def new
    @trannig = Trannig.new
  end

  # GET /trannigs/1/edit
  def edit
  end

  # POST /trannigs
  # POST /trannigs.json
  def create
    @trannig = Trannig.new(trannig_params)

    respond_to do |format|
      if @trannig.save
        format.html { redirect_to @trannig, notice: 'Trannig was successfully created.' }
        format.json { render :show, status: :created, location: @trannig }
      else
        format.html { render :new }
        format.json { render json: @trannig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trannigs/1
  # PATCH/PUT /trannigs/1.json
  def update
    respond_to do |format|
      if @trannig.update(trannig_params)
        format.html { redirect_to @trannig, notice: 'Trannig was successfully updated.' }
        format.json { render :show, status: :ok, location: @trannig }
      else
        format.html { render :edit }
        format.json { render json: @trannig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trannigs/1
  # DELETE /trannigs/1.json
  def destroy
    @trannig.destroy
    respond_to do |format|
      format.html { redirect_to trannigs_url, notice: 'Trannig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trannig
      @trannig = Trannig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trannig_params
      params.require(:trannig).permit(:name, :description, :company_id)
    end
end
