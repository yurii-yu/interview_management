class RegistrationsController < Devise::RegistrationsController
  def update
   new_params = params.require(:user).permit(:username, :email_password)

   if new_params['email_password'].empty? 
     new_params.delete('email_password')
   end

   @user = User.find(current_user.id)
   if @user.update_without_password(new_params)
     set_flash_message :notice, :updated
     #sign_in @user, :bypass => true
     render "edit"
     #redirect_to after_update_path_for(@user)
   else
     render "edit"
   end
  end
end
