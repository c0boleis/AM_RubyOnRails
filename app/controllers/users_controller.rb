class UsersController < ApplicationController

	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def new
  		@titre = "Inscription"
   		@user = User.new
  	end

  	def show
  	end

  	def edit
  	end

  	def update
  	end

	def create
    	@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
  	end

	def index
  		@users = User.all
  	end

  	def destroy
    	@user.destroy
    	respond_to do |format|
      		format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      		format.json { head :no_content }
    	end
  	end

  	private
  	    # Use callbacks to share common setup or constraints between actions.
    	def set_user
      		@user = User.find(params[:id])
    	end
  		def user_params
    		params.require(:user).permit(:name, :email)
    	end
end
