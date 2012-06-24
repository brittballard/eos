class PercentageModifiersController < ApplicationController
  # GET /percentage_modifiers
  # GET /percentage_modifiers.json
  def index
    @percentage_modifiers = PercentageModifier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @percentage_modifiers }
    end
  end

  # GET /percentage_modifiers/1
  # GET /percentage_modifiers/1.json
  def show
    @percentage_modifier = PercentageModifier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @percentage_modifier }
    end
  end

  # GET /percentage_modifiers/new
  # GET /percentage_modifiers/new.json
  def new
    @percentage_modifier = PercentageModifier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @percentage_modifier }
    end
  end

  # GET /percentage_modifiers/1/edit
  def edit
    @percentage_modifier = PercentageModifier.find(params[:id])
  end

  # POST /percentage_modifiers
  # POST /percentage_modifiers.json
  def create
    @percentage_modifier = PercentageModifier.new(params[:percentage_modifier])

    respond_to do |format|
      if @percentage_modifier.save
        format.html { redirect_to @percentage_modifier, notice: 'Percentage modifier was successfully created.' }
        format.json { render json: @percentage_modifier, status: :created, location: @percentage_modifier }
      else
        format.html { render action: "new" }
        format.json { render json: @percentage_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /percentage_modifiers/1
  # PUT /percentage_modifiers/1.json
  def update
    @percentage_modifier = PercentageModifier.find(params[:id])

    respond_to do |format|
      if @percentage_modifier.update_attributes(params[:percentage_modifier])
        format.html { redirect_to @percentage_modifier, notice: 'Percentage modifier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @percentage_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /percentage_modifiers/1
  # DELETE /percentage_modifiers/1.json
  def destroy
    @percentage_modifier = PercentageModifier.find(params[:id])
    @percentage_modifier.destroy

    respond_to do |format|
      format.html { redirect_to percentage_modifiers_url }
      format.json { head :no_content }
    end
  end
end
