class EntradaMaterialsController < ApplicationController
  # GET /entrada_materials
  # GET /entrada_materials.xml
  def index
    @entrada_materials = EntradaMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entrada_materials }
    end
  end

  # GET /entrada_materials/1
  # GET /entrada_materials/1.xml
  def show
    @entrada_material = EntradaMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entrada_material }
    end
  end

  # GET /entrada_materials/new
  # GET /entrada_materials/new.xml
  def new
    @entrada_material = EntradaMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entrada_material }
    end
  end

  # GET /entrada_materials/1/edit
  def edit
    @entrada_material = EntradaMaterial.find(params[:id])
  end

  # POST /entrada_materials
  # POST /entrada_materials.xml
  def create
    @entrada_material = EntradaMaterial.new(params[:entrada_material])

    respond_to do |format|
      if @entrada_material.save
        format.html { redirect_to(@entrada_material, :notice => 'Entrada material was successfully created.') }
        format.xml  { render :xml => @entrada_material, :status => :created, :location => @entrada_material }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entrada_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entrada_materials/1
  # PUT /entrada_materials/1.xml
  def update
    @entrada_material = EntradaMaterial.find(params[:id])

    respond_to do |format|
      if @entrada_material.update_attributes(params[:entrada_material])
        format.html { redirect_to(@entrada_material, :notice => 'Entrada material was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entrada_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entrada_materials/1
  # DELETE /entrada_materials/1.xml
  def destroy
    @entrada_material = EntradaMaterial.find(params[:id])
    @entrada_material.destroy

    respond_to do |format|
      format.html { redirect_to(entrada_materials_url) }
      format.xml  { head :ok }
    end
  end
end
