class UsersController < ApplicationController

   def top
   	end
   	def about
   	end


    def index
    	@user = current_user
    	@users = User.all
        @book = Book.new

    end

    def show

    	@user = User.find(params[:id])
    	@book = Book.new
    end

    def edit
    	@user = User.find(params[:id])
      if current_user.id != @user.id
      redirect_to user_path(current_user)
    end
  end

    def update
    	@user = current_user
    	if @user.update(user_params)
            flash[:notice] = "You have updated user successfully."
        	redirect_to user_path
         else
          render :edit
        end

    end




    private
    def user_params
        params.require(:user).permit(:name, :profile_image, :introduction)
    end
end

