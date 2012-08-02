class RIsController < ApplicationController
  # GET /r_is
  # GET /r_is.xml
  def index
    @r_is = RI.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @r_is }
    end
  end

  # GET /r_is/1
  # GET /r_is/1.xml
  def show
    @r_i = RI.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @r_i }
    end
  end

  # GET /r_is/new
  # GET /r_is/new.xml
  def new
    @r_i = RI.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @r_i }
    end
  end

  # GET /r_is/1/edit
  def edit
    @r_i = RI.find(params[:id])
  end

  # POST /r_is
  # POST /r_is.xml
  def create
    @r_i = RI.new(params[:r_i])

    respond_to do |format|
      if @r_i.save
        format.html { redirect_to(@r_i, :notice => 'R i was successfully created.') }
        format.xml  { render :xml => @r_i, :status => :created, :location => @r_i }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @r_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /r_is/1
  # PUT /r_is/1.xml
  def update
    @r_i = RI.find(params[:id])

    respond_to do |format|
      if @r_i.update_attributes(params[:r_i])
        format.html { redirect_to(@r_i, :notice => 'R i was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @r_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /r_is/1
  # DELETE /r_is/1.xml
  def destroy
    @r_i = RI.find(params[:id])
    @r_i.destroy

    respond_to do |format|
      format.html { redirect_to(r_is_url) }
      format.xml  { head :ok }
    end
  end
end
