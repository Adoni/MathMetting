class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new do |u|
      u.name=params[:name]
      u.email=params[:email]
      u.address=params[:address]
      u.title=params[:title]
      u.school=params[:school]
      u.age=params[:age].to_i
      u.gender=params[:gender]
      u.tel=params[:tel]
      u.phone=params[:phone]
      u.syndic=params[:syndic]
      u.style=params[:style]
      u.require=params[:require]
      u.postcode=params[:postcode]
      u.arrivedate=params[:arrivedate]
      u.leavedate=params[:leave]
    end
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: '注册成功！' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def all
    @users=User.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
    end
end
