class UsersController < ApplicationController
  before_filter :signed_in_user,
                only: [:index, :edit, :update, :destroy, :following, :followers]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = current_user
  @userreqs = @user.weekbgs.all
	if @user.id != current_user.id
	redirect_to current_user
	end
    @microposts = @user.microposts.paginate(page: params[:page])
	@periods = @user.school
	@wb = Weekbg.all
  end

  def techview
@weekbg = Weekbg.find(params[:date])
 @reqs = Content.where("weekbg_id = ?",@weekbg.id).all
 @rooms = Room.all
  end
  
  def timetable 
    @user = current_user
	@timetables = Timetable.where("user_id =?", current_user.id).where("week= ?",params[:week]).all
	@periods = @user.school
	@schoolclasses = Schoolclass.all
	@rooms = Room.all
  end
  
  def requisition
	@user = current_user
	@weekbg = Weekbg.find(params[:id])
	@timetable = Timetable.where("user_id = ?", current_user.id).where("week = ?",params[:week]).all
  end
  
  def newreq
    @user = current_user
  @userreqs = @user.weekbgs.all

  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
	@u = current_user
	
    if @user.save
	
	timetables = Array.new
	y=5
x=5
j=2
(1..j).each do |j|
(1..x).each do |i|
(1..y).each do |y|
	timetables << {:period => i, :day => y, :week => j, :user_id => @user.id}
	
	
	end
	end
	end
@timetable = Timetable.create(timetables)
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end