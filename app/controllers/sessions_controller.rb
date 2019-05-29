class SessionsController < ApplicationController
  def new
    
  end

  def create
    session[:name] = params[:name]
    return redirect_to action: :new if !session[:name].present?
    redirect_to root_path
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end