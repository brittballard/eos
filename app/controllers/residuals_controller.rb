class ResidualsController < ApplicationController
  # GET /residuals
  # GET /residuals.json
  def index
    @residuals = Residual.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @residuals }
    end
  end

  # GET /residuals/1
  # GET /residuals/1.json
  def show
    @residual = Residual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @residual }
    end
  end

  # GET /residuals/new
  # GET /residuals/new.json
  def new
    @residual = Residual.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @residual }
    end
  end

  # GET /residuals/1/edit
  def edit
    @residual = Residual.find(params[:id])
  end

  # POST /residuals
  # POST /residuals.json
  def create
    @residual = Residual.new(params[:residual])

    respond_to do |format|
      if @residual.save
        format.html { redirect_to @residual, notice: 'Residual was successfully created.' }
        format.json { render json: @residual, status: :created, location: @residual }
      else
        format.html { render action: "new" }
        format.json { render json: @residual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /residuals/1
  # PUT /residuals/1.json
  def update
    @residual = Residual.find(params[:id])

    respond_to do |format|
      if @residual.update_attributes(params[:residual])
        format.html { redirect_to @residual, notice: 'Residual was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @residual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residuals/1
  # DELETE /residuals/1.json
  def destroy
    @residual = Residual.find(params[:id])
    @residual.destroy

    respond_to do |format|
      format.html { redirect_to residuals_url }
      format.json { head :no_content }
    end
  end
end
