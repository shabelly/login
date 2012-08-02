class IiIsController < ApplicationController
  # GET /ii_is
  # GET /ii_is.xml
  def index
    @ii_is = IiI.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ii_is }
    end
  end

  # GET /ii_is/1
  # GET /ii_is/1.xml
  def show
    @ii_i = IiI.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ii_i }
    end
  end

  # GET /ii_is/new
  # GET /ii_is/new.xml
  def new
    @ii_i = IiI.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ii_i }
    end
  end

  # GET /ii_is/1/edit
  def edit
    @ii_i = IiI.find(params[:id])
  end

  # POST /ii_is
  # POST /ii_is.xml
  def create
    @ii_i = IiI.new(params[:ii_i])

    respond_to do |format|
      if @ii_i.save
        format.html { redirect_to(@ii_i, :notice => 'Ii i was successfully created.') }
        format.xml  { render :xml => @ii_i, :status => :created, :location => @ii_i }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ii_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ii_is/1
  # PUT /ii_is/1.xml
  def update
    @ii_i = IiI.find(params[:id])

    respond_to do |format|
      if @ii_i.update_attributes(params[:ii_i])
        format.html { redirect_to(@ii_i, :notice => 'Ii i was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ii_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ii_is/1
  # DELETE /ii_is/1.xml
  def destroy
    @ii_i = IiI.find(params[:id])
    @ii_i.destroy

    respond_to do |format|
      format.html { redirect_to(ii_is_url) }
      format.xml  { head :ok }
    end
  end
end
