class UnidadsController < ApplicationController
  # GET /unidads
  # GET /unidads.xml
  def index
    @unidads = Unidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unidads }
    end
  end

  # GET /unidads/1
  # GET /unidads/1.xml
  def show
    @unidad = Unidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unidad }
    end
  end

  # GET /unidads/new
  # GET /unidads/new.xml
  def new
    @unidad = Unidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unidad }
    end
  end

  # GET /unidads/1/edit
  def edit
    @unidad = Unidad.find(params[:id])
  end

  # POST /unidads
  # POST /unidads.xml
  def create
    @unidad = Unidad.new(params[:unidad])

    respond_to do |format|
      if @unidad.save
        format.html { redirect_to(@unidad, :notice => 'Unidad was successfully created.') }
        format.xml  { render :xml => @unidad, :status => :created, :location => @unidad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unidad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unidads/1
  # PUT /unidads/1.xml
  def update
    @unidad = Unidad.find(params[:id])

    respond_to do |format|
      if @unidad.update_attributes(params[:unidad])
        format.html { redirect_to(@unidad, :notice => 'Unidad was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unidad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unidads/1
  # DELETE /unidads/1.xml
  def destroy
    @unidad = Unidad.find(params[:id])
    @unidad.destroy

    respond_to do |format|
      format.html { redirect_to(unidads_url) }
      format.xml  { head :ok }
    end
  end
end
