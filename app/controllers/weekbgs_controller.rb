class WeekbgsController < ApplicationController
  # GET /weekbgs
  # GET /weekbgs.json
  def index
    @weekbgs = Weekbg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weekbgs }
    end
  end

  # GET /weekbgs/1
  # GET /weekbgs/1.json
  def show
    @weekbg = Weekbg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weekbg }
    end
  end

  # GET /weekbgs/new
  # GET /weekbgs/new.json
  def new
    @weekbg = Weekbg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weekbg }
    end
  end

  # GET /weekbgs/1/edit
  def edit
    @weekbg = Weekbg.find(params[:id])
  end

  # POST /weekbgs
  # POST /weekbgs.json
  def create
    @weekbg = Weekbg.new(params[:weekbg])

    respond_to do |format|
      if @weekbg.save
        format.html { redirect_to @weekbg, notice: 'Weekbg was successfully created.' }
        format.json { render json: @weekbg, status: :created, location: @weekbg }
      else
        format.html { render action: "new" }
        format.json { render json: @weekbg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weekbgs/1
  # PUT /weekbgs/1.json
  def update
    @weekbg = Weekbg.find(params[:id])

    respond_to do |format|
      if @weekbg.update_attributes(params[:weekbg])
        format.html { redirect_to @weekbg, notice: 'Weekbg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weekbg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekbgs/1
  # DELETE /weekbgs/1.json
  def destroy
    @weekbg = Weekbg.find(params[:id])
    @weekbg.destroy

    respond_to do |format|
      format.html { redirect_to weekbgs_url }
      format.json { head :no_content }
    end
  end
end
