class OdcRsController < ApplicationController
  # GET /odc_rs
  # GET /odc_rs.xml
  def index
    @odc_rs = OdcR.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @odc_rs }
    end
  end

  # GET /odc_rs/1
  # GET /odc_rs/1.xml
  def show
    @odc_r = OdcR.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @odc_r }
    end
  end

  # GET /odc_rs/new
  # GET /odc_rs/new.xml
  def new
    @odc_r = OdcR.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @odc_r }
    end
  end

  # GET /odc_rs/1/edit
  def edit
    @odc_r = OdcR.find(params[:id])
  end

  # POST /odc_rs
  # POST /odc_rs.xml
  def create
    @odc_r = OdcR.new(params[:odc_r])

    respond_to do |format|
      if @odc_r.save
        format.html { redirect_to(@odc_r, :notice => 'Odc r was successfully created.') }
        format.xml  { render :xml => @odc_r, :status => :created, :location => @odc_r }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @odc_r.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /odc_rs/1
  # PUT /odc_rs/1.xml
  def update
    @odc_r = OdcR.find(params[:id])

    respond_to do |format|
      if @odc_r.update_attributes(params[:odc_r])
        format.html { redirect_to(@odc_r, :notice => 'Odc r was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @odc_r.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /odc_rs/1
  # DELETE /odc_rs/1.xml
  def destroy
    @odc_r = OdcR.find(params[:id])
    @odc_r.destroy

    respond_to do |format|
      format.html { redirect_to(odc_rs_url) }
      format.xml  { head :ok }
    end
  end
end
