class ModelBasicsController < ApplicationController
  before_action :set_model_basic, only: [:show, :edit, :update, :destroy]

  # GET /model_basics
  # GET /model_basics.json
  def index
    @model_basics = ModelBasic.all
  end

  # GET /model_basics/1
  # GET /model_basics/1.json
  def show
  end

  # GET /model_basics/new
  def new
    @model_basic = ModelBasic.new
  end

  # GET /model_basics/1/edit
  def edit
  end

  # POST /model_basics
  # POST /model_basics.json
  def create
    @model_basic = ModelBasic.new(model_basic_params)

    respond_to do |format|
      if @model_basic.save
        format.html { redirect_to @model_basic, notice: 'Model basic was successfully created.' }
        format.json { render :show, status: :created, location: @model_basic }
      else
        format.html { render :new }
        format.json { render json: @model_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_basics/1
  # PATCH/PUT /model_basics/1.json
  def update
    respond_to do |format|
      if @model_basic.update(model_basic_params)
        format.html { redirect_to @model_basic, notice: 'Model basic was successfully updated.' }
        format.json { render :show, status: :ok, location: @model_basic }
      else
        format.html { render :edit }
        format.json { render json: @model_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_basics/1
  # DELETE /model_basics/1.json
  def destroy
    @model_basic.destroy
    respond_to do |format|
      format.html { redirect_to model_basics_url, notice: 'Model basic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_basic
      @model_basic = ModelBasic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_basic_params
      params.require(:model_basic).permit(:title, :post, :date)
    end
end
