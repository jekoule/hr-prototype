class UsersController < ApplicationController
  before_action :load_user, only: [:show, :edit, :update]
  before_action :load_users, only: [:index, :org_charts, :admo_org_chart, :bpf_org_chart, :hr_org_chart, :smf_org_chart]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/users/home', notice: "#{@user.email} account created! Please update your settings"
    else
      render :new
    end
  end

  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("name ASC").distinct
    end
  end

  def home
    @opportunities = Opportunity.all.order("created_at DESC")
    @received_badges = Recognition.where.not(receiver_id: nil).order("created_at DESC")
    @opportunity_badges = Badge.where.not(opportunity_id: nil).order("created_at DESC")
    @edu_badges = Badge.where(opportunity_id: nil, education: true).order("created_at DESC")
    @exp_badges = Badge.where(opportunity_id: nil, exp: true).order("created_at DESC")
    @users = User.where.not(co_op: nil).order("name DESC")
    reset_time
  end

  def org_charts
  end

  def admo_org_chart
  end

  def bpf_org_chart
  end

  def hr_org_chart
  end

  def smf_org_chart
  end

  def show
  end

  def edit
  end

  def update
    @signup = @user.signup
    if @user.update_attributes(user_params) && @user.agreement == true && PulseSurvey.exists?(@user.id) == false
      flash[:alert] = "Account Sign Up complete"
      PulseSurvey.create(id: current_user.id)
      redirect_to user_url
    elsif @user.update_attributes(user_params) && @user.agreement == true && PulseSurvey.exists?(@user.id) == true
      redirect_to user_url, notice: "Account Settings Updated"
    elsif @user.update_attributes(user_params) && @signup.current_step == 3
      redirect_to "/signups/step_three", notice: "Describe your Career Aspirations and Job Responsibilities below"
    elsif @user.update_attributes(user_params) && @signup.current_step == 4
      redirect_to "/signups/step_four", notice: "Choose or Create your Education Badges below"
    elsif @user.update_attributes(user_params) && @signup.current_step == 5
      redirect_to "/signups/step_five", notice: "Choose or Create your Experience Badges below"
    elsif @user.update_attributes(user_params) && @signup.current_step == 6
      redirect_to "/signups/step_six", notice: "Verify your Sign Up below to start using the App"
    elsif @user.update_attributes(user_params) == false && @signup.current_step == 2
      render 'signups/step_two'
    elsif @user.update_attributes(user_params) == false && @signup.current_step == 3
      render 'signups/step_three'
    else
      render :edit
    end
  end

private
  def load_user
    @user = User.find(params[:id])
  end

  def load_users
    @users = User.all.order("team ASC")
  end

  def user_params
    params.require(:user).permit(:name, :email, :encrypted_password, :password,
    :password_confirmation, :phone, :title, :avatar, :job_description, :chart_level,
    :office, :team, :co_op, :image_delete, :career_aspirations, :direct_report,
    :agreement, :intranet, signup_attributes: [:id, :user_id, :current_step])
  end

  def reset_time
    @reset_time = Date.new(2017, 6, 5)
  end
end
