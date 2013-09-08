class ContentsController < ApplicationController
  # GET /contents
  # GET /contents.json
  def index
    @contents = Content.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contents }
    end
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
    @content = Content.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/new
  # GET /contents/new.json
  def new
    @content = Content.new
	@weekbg= Weekbg.find(params[:weekbg_id])
	@week = params[:week]
	@day = params[:day]
	@period = params[:period]
	@room = params[:room_id]
	@schoolclass =params[:schoolclass]
	@thisclass = Schoolclass.find(params[:schoolclass])
	@pupilnumber = params[:pupilnumber]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/1/edit
  def edit
    @content = Content.find(params[:id])
  end

  # POST /contents
  # POST /contents.json
  def create
  
    @content = Content.new(params[:content])
	@content.user_id = current_user.id
    respond_to do |format|
      if @content.save
        format.html { redirect_to user_requisition_path(:id=>@content.weekbg_id,:week=>@content.week), notice: 'Content was successfully created.' }
        format.json { render json: user_requisition_path(:id=>@content.weekbg_id, :week=>@content.week), status: :created, location: @content }
      else
        format.html { render action: "new" }
        format.json { render json: user_requisition_path(:id=>@content.weekbg_id, :week=>@content.week).errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contents/1
  # PUT /contents/1.json
  def update
    @content = Content.find(params[:id])

    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to user_requisition_path(:id=>@content.weekbg_id,:week=>@content.week), notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: user_requisition_path(:id=>@content.weekbg_id,:week=>@content.week).errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url }
      format.json { head :no_content }
    end
  end
end
