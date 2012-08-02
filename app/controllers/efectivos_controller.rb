class EfectivosController < ApplicationController
  # GET /efectivos
  # GET /efectivos.xml
  def index
    @efectivos = Efectivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @efectivos }
    end
  end

  # GET /efectivos/1
  # GET /efectivos/1.xml
  def show
    @efectivo = Efectivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @efectivo }
    end
  end

  # GET /efectivos/new
  # GET /efectivos/new.xml
  def new
    @efectivo = Efectivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @efectivo }
    end
  end

  # GET /efectivos/1/edit
  def edit
    @efectivo = Efectivo.find(params[:id])
  end

  # POST /efectivos
  # POST /efectivos.xml
  def create
    @efectivo = Efectivo.new(params[:efectivo])

    respond_to do |format|
      if @efectivo.save
        format.html { redirect_to(@efectivo, :notice => 'Efectivo was successfully created.') }
        format.xml  { render :xml => @efectivo, :status => :created, :location => @efectivo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @efectivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /efectivos/1
  # PUT /efectivos/1.xml
  def update
    @efectivo = Efectivo.find(params[:id])

    respond_to do |format|
      if @efectivo.update_attributes(params[:efectivo])
        format.html { redirect_to(@efectivo, :notice => 'Efectivo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @efectivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /efectivos/1
  # DELETE /efectivos/1.xml
  def destroy
    @efectivo = Efectivo.find(params[:id])
    @efectivo.destroy

    respond_to do |format|
      format.html { redirect_to(efectivos_url) }
      format.xml  { head :ok }
    end
  end
end
