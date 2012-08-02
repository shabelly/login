class SalidaMaterialsController < ApplicationController
  # GET /salida_materials
  # GET /salida_materials.xml
  def index
    @salida_materials = SalidaMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salida_materials }
    end
  end

  # GET /salida_materials/1
  # GET /salida_materials/1.xml
  def show
    @salida_material = SalidaMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @salida_material }
    end
  end

  # GET /salida_materials/new
  # GET /salida_materials/new.xml
  def new
    @salida_material = SalidaMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @salida_material }
    end
  end

  # GET /salida_materials/1/edit
  def edit
    @salida_material = SalidaMaterial.find(params[:id])
  end

  # POST /salida_materials
  # POST /salida_materials.xml
  def create
    @salida_material = SalidaMaterial.new(params[:salida_material])

    respond_to do |format|
      if @salida_material.save
        format.html { redirect_to(@salida_material, :notice => 'Salida material was successfully created.') }
        format.xml  { render :xml => @salida_material, :status => :created, :location => @salida_material }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @salida_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salida_materials/1
  # PUT /salida_materials/1.xml
  def update
    @salida_material = SalidaMaterial.find(params[:id])

    respond_to do |format|
      if @salida_material.update_attributes(params[:salida_material])
        format.html { redirect_to(@salida_material, :notice => 'Salida material was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @salida_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salida_materials/1
  # DELETE /salida_materials/1.xml
  def destroy
    @salida_material = SalidaMaterial.find(params[:id])
    @salida_material.destroy

    respond_to do |format|
      format.html { redirect_to(salida_materials_url) }
      format.xml  { head :ok }
    end
  end
end
