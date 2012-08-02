class TelefonoEmpresaClientesController < ApplicationController
  # GET /telefono_empresa_clientes
  # GET /telefono_empresa_clientes.xml
  def index
    @telefono_empresa_clientes = TelefonoEmpresaCliente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @telefono_empresa_clientes }
    end
  end

  # GET /telefono_empresa_clientes/1
  # GET /telefono_empresa_clientes/1.xml
  def show
    @telefono_empresa_cliente = TelefonoEmpresaCliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @telefono_empresa_cliente }
    end
  end

  # GET /telefono_empresa_clientes/new
  # GET /telefono_empresa_clientes/new.xml
  def new
    @telefono_empresa_cliente = TelefonoEmpresaCliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @telefono_empresa_cliente }
    end
  end

  # GET /telefono_empresa_clientes/1/edit
  def edit
    @telefono_empresa_cliente = TelefonoEmpresaCliente.find(params[:id])
  end

  # POST /telefono_empresa_clientes
  # POST /telefono_empresa_clientes.xml
  def create
    @telefono_empresa_cliente = TelefonoEmpresaCliente.new(params[:telefono_empresa_cliente])

    respond_to do |format|
      if @telefono_empresa_cliente.save
        format.html { redirect_to(@telefono_empresa_cliente, :notice => 'Telefono empresa cliente was successfully created.') }
        format.xml  { render :xml => @telefono_empresa_cliente, :status => :created, :location => @telefono_empresa_cliente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @telefono_empresa_cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telefono_empresa_clientes/1
  # PUT /telefono_empresa_clientes/1.xml
  def update
    @telefono_empresa_cliente = TelefonoEmpresaCliente.find(params[:id])

    respond_to do |format|
      if @telefono_empresa_cliente.update_attributes(params[:telefono_empresa_cliente])
        format.html { redirect_to(@telefono_empresa_cliente, :notice => 'Telefono empresa cliente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @telefono_empresa_cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telefono_empresa_clientes/1
  # DELETE /telefono_empresa_clientes/1.xml
  def destroy
    @telefono_empresa_cliente = TelefonoEmpresaCliente.find(params[:id])
    @telefono_empresa_cliente.destroy

    respond_to do |format|
      format.html { redirect_to(telefono_empresa_clientes_url) }
      format.xml  { head :ok }
    end
  end
end
