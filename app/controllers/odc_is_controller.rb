class OdcIsController < ApplicationController
  # GET /odc_is
  # GET /odc_is.xml
  def index
    @odc_is = OdcI.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @odc_is }
    end
  end

  # GET /odc_is/1
  # GET /odc_is/1.xml
  def show
    @odc_i = OdcI.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @odc_i }
    end
  end

  # GET /odc_is/new
  # GET /odc_is/new.xml
  def new
    @odc_i = OdcI.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @odc_i }
    end
  end

  # GET /odc_is/1/edit
  def edit
    @odc_i = OdcI.find(params[:id])
  end

  # POST /odc_is
  # POST /odc_is.xml
  def create
    @odc_i = OdcI.new(params[:odc_i])

    respond_to do |format|
      if @odc_i.save
        format.html { redirect_to(@odc_i, :notice => 'Odc i was successfully created.') }
        format.xml  { render :xml => @odc_i, :status => :created, :location => @odc_i }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @odc_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /odc_is/1
  # PUT /odc_is/1.xml
  def update
    @odc_i = OdcI.find(params[:id])

    respond_to do |format|
      if @odc_i.update_attributes(params[:odc_i])
        format.html { redirect_to(@odc_i, :notice => 'Odc i was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @odc_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /odc_is/1
  # DELETE /odc_is/1.xml
  def destroy
    @odc_i = OdcI.find(params[:id])
    @odc_i.destroy

    respond_to do |format|
      format.html { redirect_to(odc_is_url) }
      format.xml  { head :ok }
    end
  end
end
