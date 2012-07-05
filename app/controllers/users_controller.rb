class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Se a creado exitosamente el User"
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end 
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice  => "El perfil se a actualizado exitosamente"
    else
      render :action => 'edit'
    end
  end
end
