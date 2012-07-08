class DocumentosController < ApplicationController
  # GET /documentos
  # GET /documentos.xml
  def index
    @documentos = Documento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @documentos }
    end
  end

  # GET /documentos/1
  # GET /documentos/1.xml
  def show
    @documento = Documento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @documento }
    end
  end

  # GET /documentos/new
  # GET /documentos/new.xml
  def new
    @documento = Documento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @documento }
    end
  end

  # GET /documentos/1/edit
  def edit
    @documento = Documento.find(params[:id])
  end

  # POST /documentos
  # POST /documentos.xml
  def create
    @documento = Documento.new(params[:documento])

    respond_to do |format|
      if @documento.save
        format.html { redirect_to(@documento, :notice => 'Documento was successfully created.') }
        format.xml  { render :xml => @documento, :status => :created, :location => @documento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @documento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /documentos/1
  # PUT /documentos/1.xml
  def update
    @documento = Documento.find(params[:id])

    respond_to do |format|
      if @documento.update_attributes(params[:documento])
        format.html { redirect_to(@documento, :notice => 'Documento was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @documento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos/1
  # DELETE /documentos/1.xml
  def destroy
    @documento = Documento.find(params[:id])
    @documento.destroy

    respond_to do |format|
      format.html { redirect_to(documentos_url) }
      format.xml  { head :ok }
    end
  end
end
