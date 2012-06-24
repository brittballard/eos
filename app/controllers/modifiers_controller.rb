class ModifiersController < ApplicationController
  # GET /modifiers
  # GET /modifiers.json
  def index
    @modifiers = Modifier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modifiers }
    end
  end

  # GET /modifiers/1
  # GET /modifiers/1.json
  def show
    @modifier = Modifier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @modifier }
    end
  end

  # GET /modifiers/new
  # GET /modifiers/new.json
  def new
    @modifier = Modifier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @modifier }
    end
  end

  # GET /modifiers/1/edit
  def edit
    @modifier = Modifier.find(params[:id])
  end

  # POST /modifiers
  # POST /modifiers.json
  def create
    @modifier = Modifier.new(params[:modifier])

    respond_to do |format|
      if @modifier.save
        format.html { redirect_to @modifier, notice: 'Modifier was successfully created.' }
        format.json { render json: @modifier, status: :created, location: @modifier }
      else
        format.html { render action: "new" }
        format.json { render json: @modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /modifiers/1
  # PUT /modifiers/1.json
  def update
    @modifier = Modifier.find(params[:id])

    respond_to do |format|
      if @modifier.update_attributes(params[:modifier])
        format.html { redirect_to @modifier, notice: 'Modifier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modifiers/1
  # DELETE /modifiers/1.json
  def destroy
    @modifier = Modifier.find(params[:id])
    @modifier.destroy

    respond_to do |format|
      format.html { redirect_to modifiers_url }
      format.json { head :no_content }
    end
  end
end
