class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cargos }
    end
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to new_user_path , :notice => "Se a creado exitosamente el User"
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
