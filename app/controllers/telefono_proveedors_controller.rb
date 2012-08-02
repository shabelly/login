class TelefonoProveedorsController < ApplicationController
  # GET /telefono_proveedors
  # GET /telefono_proveedors.xml
  def index
    @telefono_proveedors = TelefonoProveedor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @telefono_proveedors }
    end
  end

  # GET /telefono_proveedors/1
  # GET /telefono_proveedors/1.xml
  def show
    @telefono_proveedor = TelefonoProveedor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @telefono_proveedor }
    end
  end

  # GET /telefono_proveedors/new
  # GET /telefono_proveedors/new.xml
  def new
    @telefono_proveedor = TelefonoProveedor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @telefono_proveedor }
    end
  end

  # GET /telefono_proveedors/1/edit
  def edit
    @telefono_proveedor = TelefonoProveedor.find(params[:id])
  end

  # POST /telefono_proveedors
  # POST /telefono_proveedors.xml
  def create
    @telefono_proveedor = TelefonoProveedor.new(params[:telefono_proveedor])

    respond_to do |format|
      if @telefono_proveedor.save
        format.html { redirect_to(@telefono_proveedor, :notice => 'Telefono proveedor was successfully created.') }
        format.xml  { render :xml => @telefono_proveedor, :status => :created, :location => @telefono_proveedor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @telefono_proveedor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telefono_proveedors/1
  # PUT /telefono_proveedors/1.xml
  def update
    @telefono_proveedor = TelefonoProveedor.find(params[:id])

    respond_to do |format|
      if @telefono_proveedor.update_attributes(params[:telefono_proveedor])
        format.html { redirect_to(@telefono_proveedor, :notice => 'Telefono proveedor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @telefono_proveedor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telefono_proveedors/1
  # DELETE /telefono_proveedors/1.xml
  def destroy
    @telefono_proveedor = TelefonoProveedor.find(params[:id])
    @telefono_proveedor.destroy

    respond_to do |format|
      format.html { redirect_to(telefono_proveedors_url) }
      format.xml  { head :ok }
    end
  end
end
