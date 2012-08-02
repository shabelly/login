class OrdenDeComprasController < ApplicationController
  # GET /orden_de_compras
  # GET /orden_de_compras.xml
  def index
    @orden_de_compras = OrdenDeCompra.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orden_de_compras }
    end
  end

  # GET /orden_de_compras/1
  # GET /orden_de_compras/1.xml
  def show
    @orden_de_compra = OrdenDeCompra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @orden_de_compra }
    end
  end

  # GET /orden_de_compras/new
  # GET /orden_de_compras/new.xml
  def new
    @orden_de_compra = OrdenDeCompra.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @orden_de_compra }
    end
  end

  # GET /orden_de_compras/1/edit
  def edit
    @orden_de_compra = OrdenDeCompra.find(params[:id])
  end

  # POST /orden_de_compras
  # POST /orden_de_compras.xml
  def create
    @orden_de_compra = OrdenDeCompra.new(params[:orden_de_compra])

    respond_to do |format|
      if @orden_de_compra.save
        format.html { redirect_to(@orden_de_compra, :notice => 'Orden de compra was successfully created.') }
        format.xml  { render :xml => @orden_de_compra, :status => :created, :location => @orden_de_compra }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @orden_de_compra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orden_de_compras/1
  # PUT /orden_de_compras/1.xml
  def update
    @orden_de_compra = OrdenDeCompra.find(params[:id])

    respond_to do |format|
      if @orden_de_compra.update_attributes(params[:orden_de_compra])
        format.html { redirect_to(@orden_de_compra, :notice => 'Orden de compra was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @orden_de_compra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_de_compras/1
  # DELETE /orden_de_compras/1.xml
  def destroy
    @orden_de_compra = OrdenDeCompra.find(params[:id])
    @orden_de_compra.destroy

    respond_to do |format|
      format.html { redirect_to(orden_de_compras_url) }
      format.xml  { head :ok }
    end
  end
end
