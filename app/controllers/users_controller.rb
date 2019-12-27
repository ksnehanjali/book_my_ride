class UsersController < ApplicationController
  
  def index
    @users_list = User.all
  end

  def new

  end
  
  def create
    puts params[:first_name]
    User.create(first_name: params[:first_name], last_name: params[:last_name], contact_number: params[:contact_number],
                employee_id: params[:employee_id], email_id: params[:email_id], password: params[:password])
    redirect_to users_path
  end  
end
