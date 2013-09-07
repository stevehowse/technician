class SchoolclassesController < ApplicationController
  # GET /schoolclasses
  # GET /schoolclasses.json
  def index
    @schoolclasses = Schoolclass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schoolclasses }
    end
  end

  # GET /schoolclasses/1
  # GET /schoolclasses/1.json
  def show
    @schoolclass = Schoolclass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @schoolclass }
    end
  end

  # GET /schoolclasses/new
  # GET /schoolclasses/new.json
  def new
    @schoolclass = Schoolclass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @schoolclass }
    end
  end

  # GET /schoolclasses/1/edit
  def edit
    @schoolclass = Schoolclass.find(params[:id])
  end

  # POST /schoolclasses
  # POST /schoolclasses.json
  def create
    @schoolclass = Schoolclass.new(params[:schoolclass])

    respond_to do |format|
      if @schoolclass.save
        format.html { redirect_to @schoolclass, notice: 'Schoolclass was successfully created.' }
        format.json { render json: @schoolclass, status: :created, location: @schoolclass }
      else
        format.html { render action: "new" }
        format.json { render json: @schoolclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schoolclasses/1
  # PUT /schoolclasses/1.json
  def update
    @schoolclass = Schoolclass.find(params[:id])

    respond_to do |format|
      if @schoolclass.update_attributes(params[:schoolclass])
        format.html { redirect_to @schoolclass, notice: 'Schoolclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @schoolclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schoolclasses/1
  # DELETE /schoolclasses/1.json
  def destroy
    @schoolclass = Schoolclass.find(params[:id])
    @schoolclass.destroy

    respond_to do |format|
      format.html { redirect_to schoolclasses_url }
      format.json { head :no_content }
    end
  end
end
