class SeccionsController < ApplicationController
  # GET /seccions
  # GET /seccions.xml
  def index
    @seccions = Seccion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seccions }
    end
  end

  # GET /seccions/1
  # GET /seccions/1.xml
  def show
    @seccion = Seccion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seccion }
    end
  end

  # GET /seccions/new
  # GET /seccions/new.xml
  def new
    @seccion = Seccion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seccion }
    end
  end

  # GET /seccions/1/edit
  def edit
    @seccion = Seccion.find(params[:id])
  end

  # POST /seccions
  # POST /seccions.xml
  def create
    @seccion = Seccion.new(params[:seccion])

    respond_to do |format|
      if @seccion.save
        format.html { redirect_to(@seccion, :notice => 'Seccion was successfully created.') }
        format.xml  { render :xml => @seccion, :status => :created, :location => @seccion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seccion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seccions/1
  # PUT /seccions/1.xml
  def update
    @seccion = Seccion.find(params[:id])

    respond_to do |format|
      if @seccion.update_attributes(params[:seccion])
        format.html { redirect_to(@seccion, :notice => 'Seccion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seccion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seccions/1
  # DELETE /seccions/1.xml
  def destroy
    @seccion = Seccion.find(params[:id])
    @seccion.destroy

    respond_to do |format|
      format.html { redirect_to(seccions_url) }
      format.xml  { head :ok }
    end
  end
end
