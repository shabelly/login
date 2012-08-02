class OrdenDeTrabajosController < ApplicationController
  # GET /orden_de_trabajos
  # GET /orden_de_trabajos.xml
  def index
    @orden_de_trabajos = OrdenDeTrabajo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orden_de_trabajos }
    end
  end

  # GET /orden_de_trabajos/1
  # GET /orden_de_trabajos/1.xml
  def show
    @orden_de_trabajo = OrdenDeTrabajo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @orden_de_trabajo }
    end
  end

  # GET /orden_de_trabajos/new
  # GET /orden_de_trabajos/new.xml
  def new
    @orden_de_trabajo = OrdenDeTrabajo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @orden_de_trabajo }
    end
  end

  # GET /orden_de_trabajos/1/edit
  def edit
    @orden_de_trabajo = OrdenDeTrabajo.find(params[:id])
  end

  # POST /orden_de_trabajos
  # POST /orden_de_trabajos.xml
  def create
    @orden_de_trabajo = OrdenDeTrabajo.new(params[:orden_de_trabajo])

    respond_to do |format|
      if @orden_de_trabajo.save
        format.html { redirect_to(@orden_de_trabajo, :notice => 'Orden de trabajo was successfully created.') }
        format.xml  { render :xml => @orden_de_trabajo, :status => :created, :location => @orden_de_trabajo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @orden_de_trabajo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orden_de_trabajos/1
  # PUT /orden_de_trabajos/1.xml
  def update
    @orden_de_trabajo = OrdenDeTrabajo.find(params[:id])

    respond_to do |format|
      if @orden_de_trabajo.update_attributes(params[:orden_de_trabajo])
        format.html { redirect_to(@orden_de_trabajo, :notice => 'Orden de trabajo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @orden_de_trabajo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_de_trabajos/1
  # DELETE /orden_de_trabajos/1.xml
  def destroy
    @orden_de_trabajo = OrdenDeTrabajo.find(params[:id])
    @orden_de_trabajo.destroy

    respond_to do |format|
      format.html { redirect_to(orden_de_trabajos_url) }
      format.xml  { head :ok }
    end
  end
end
