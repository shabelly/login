class IiAsController < ApplicationController
  # GET /ii_as
  # GET /ii_as.xml
  def index
    @ii_as = IiA.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ii_as }
    end
  end

  # GET /ii_as/1
  # GET /ii_as/1.xml
  def show
    @ii_a = IiA.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ii_a }
    end
  end

  # GET /ii_as/new
  # GET /ii_as/new.xml
  def new
    @ii_a = IiA.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ii_a }
    end
  end

  # GET /ii_as/1/edit
  def edit
    @ii_a = IiA.find(params[:id])
  end

  # POST /ii_as
  # POST /ii_as.xml
  def create
    @ii_a = IiA.new(params[:ii_a])

    respond_to do |format|
      if @ii_a.save
        format.html { redirect_to(@ii_a, :notice => 'Ii a was successfully created.') }
        format.xml  { render :xml => @ii_a, :status => :created, :location => @ii_a }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ii_a.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ii_as/1
  # PUT /ii_as/1.xml
  def update
    @ii_a = IiA.find(params[:id])

    respond_to do |format|
      if @ii_a.update_attributes(params[:ii_a])
        format.html { redirect_to(@ii_a, :notice => 'Ii a was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ii_a.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ii_as/1
  # DELETE /ii_as/1.xml
  def destroy
    @ii_a = IiA.find(params[:id])
    @ii_a.destroy

    respond_to do |format|
      format.html { redirect_to(ii_as_url) }
      format.xml  { head :ok }
    end
  end
end
