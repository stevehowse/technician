class UserreqsController < ApplicationController
  # GET /userreqs
  # GET /userreqs.json
  def index
    @userreqs = Userreq.all
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userreqs }
    end
  end

  # GET /userreqs/1
  # GET /userreqs/1.json
  def show
    @userreq = Userreq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userreq }
    end
  end

  # GET /userreqs/new
  # GET /userreqs/new.json
  def new
	@userreq = Userreq.new
	@weekbgs = Weekbg.all
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userreq }
    end
  end

  # GET /userreqs/1/edit
  def edit
    @userreq = Userreq.find(params[:id])
  end

  # POST /userreqs
  # POST /userreqs.json
  def create
    
	@userreq = Userreq.new(params[:userreq])
@userreq.user_id = current_user.id
    respond_to do |format|
      if @userreq.save
        format.html { redirect_to user_requisition_path(:id=>@userreq.id,:week=>'1'), notice: 'Userreq was successfully created.' }
        format.json { render json: @userreq, status: :created, location: @userreq }
      else
        format.html { render action: "new" }
        format.json { render json: @userreq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userreqs/1
  # PUT /userreqs/1.json
  def update
    @userreq = Userreq.find(params[:id])

    respond_to do |format|
      if @userreq.update_attributes(params[:userreq])
        format.html { redirect_to @userreq, notice: 'Userreq was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userreq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userreqs/1
  # DELETE /userreqs/1.json
  def destroy
    @userreq = Userreq.find(params[:id])
    @userreq.destroy

    respond_to do |format|
      format.html { redirect_to userreqs_url }
      format.json { head :no_content }
    end
  end
end
