class DateModifiersController < ApplicationController
  # GET /date_modifiers
  # GET /date_modifiers.json
  def index
    @date_modifiers = DateModifier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @date_modifiers }
    end
  end

  # GET /date_modifiers/1
  # GET /date_modifiers/1.json
  def show
    @date_modifier = DateModifier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @date_modifier }
    end
  end

  # GET /date_modifiers/new
  # GET /date_modifiers/new.json
  def new
    @date_modifier = DateModifier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @date_modifier }
    end
  end

  # GET /date_modifiers/1/edit
  def edit
    @date_modifier = DateModifier.find(params[:id])
  end

  # POST /date_modifiers
  # POST /date_modifiers.json
  def create
    @date_modifier = DateModifier.new(params[:date_modifier])

    respond_to do |format|
      if @date_modifier.save
        format.html { redirect_to @date_modifier, notice: 'Date modifier was successfully created.' }
        format.json { render json: @date_modifier, status: :created, location: @date_modifier }
      else
        format.html { render action: "new" }
        format.json { render json: @date_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /date_modifiers/1
  # PUT /date_modifiers/1.json
  def update
    @date_modifier = DateModifier.find(params[:id])

    respond_to do |format|
      if @date_modifier.update_attributes(params[:date_modifier])
        format.html { redirect_to @date_modifier, notice: 'Date modifier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @date_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_modifiers/1
  # DELETE /date_modifiers/1.json
  def destroy
    @date_modifier = DateModifier.find(params[:id])
    @date_modifier.destroy

    respond_to do |format|
      format.html { redirect_to date_modifiers_url }
      format.json { head :no_content }
    end
  end
end
