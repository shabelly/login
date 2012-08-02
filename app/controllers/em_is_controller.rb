class EmIsController < ApplicationController
  # GET /em_is
  # GET /em_is.xml
  def index
    @em_is = EmI.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @em_is }
    end
  end

  # GET /em_is/1
  # GET /em_is/1.xml
  def show
    @em_i = EmI.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @em_i }
    end
  end

  # GET /em_is/new
  # GET /em_is/new.xml
  def new
    @em_i = EmI.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @em_i }
    end
  end

  # GET /em_is/1/edit
  def edit
    @em_i = EmI.find(params[:id])
  end

  # POST /em_is
  # POST /em_is.xml
  def create
    @em_i = EmI.new(params[:em_i])

    respond_to do |format|
      if @em_i.save
        format.html { redirect_to(@em_i, :notice => 'Em i was successfully created.') }
        format.xml  { render :xml => @em_i, :status => :created, :location => @em_i }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @em_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /em_is/1
  # PUT /em_is/1.xml
  def update
    @em_i = EmI.find(params[:id])

    respond_to do |format|
      if @em_i.update_attributes(params[:em_i])
        format.html { redirect_to(@em_i, :notice => 'Em i was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @em_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /em_is/1
  # DELETE /em_is/1.xml
  def destroy
    @em_i = EmI.find(params[:id])
    @em_i.destroy

    respond_to do |format|
      format.html { redirect_to(em_is_url) }
      format.xml  { head :ok }
    end
  end
end
