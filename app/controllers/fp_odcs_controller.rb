class FpOdcsController < ApplicationController
  # GET /fp_odcs
  # GET /fp_odcs.xml
  def index
    @fp_odcs = FpOdc.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fp_odcs }
    end
  end

  # GET /fp_odcs/1
  # GET /fp_odcs/1.xml
  def show
    @fp_odc = FpOdc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fp_odc }
    end
  end

  # GET /fp_odcs/new
  # GET /fp_odcs/new.xml
  def new
    @fp_odc = FpOdc.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fp_odc }
    end
  end

  # GET /fp_odcs/1/edit
  def edit
    @fp_odc = FpOdc.find(params[:id])
  end

  # POST /fp_odcs
  # POST /fp_odcs.xml
  def create
    @fp_odc = FpOdc.new(params[:fp_odc])

    respond_to do |format|
      if @fp_odc.save
        format.html { redirect_to(@fp_odc, :notice => 'Fp odc was successfully created.') }
        format.xml  { render :xml => @fp_odc, :status => :created, :location => @fp_odc }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fp_odc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fp_odcs/1
  # PUT /fp_odcs/1.xml
  def update
    @fp_odc = FpOdc.find(params[:id])

    respond_to do |format|
      if @fp_odc.update_attributes(params[:fp_odc])
        format.html { redirect_to(@fp_odc, :notice => 'Fp odc was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fp_odc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fp_odcs/1
  # DELETE /fp_odcs/1.xml
  def destroy
    @fp_odc = FpOdc.find(params[:id])
    @fp_odc.destroy

    respond_to do |format|
      format.html { redirect_to(fp_odcs_url) }
      format.xml  { head :ok }
    end
  end
end
