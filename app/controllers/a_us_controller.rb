class AUsController < ApplicationController
  # GET /a_us
  # GET /a_us.xml
  def index
    @a_us = AU.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @a_us }
    end
  end

  # GET /a_us/1
  # GET /a_us/1.xml
  def show
    @a_u = AU.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @a_u }
    end
  end

  # GET /a_us/new
  # GET /a_us/new.xml
  def new
    @a_u = AU.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @a_u }
    end
  end

  # GET /a_us/1/edit
  def edit
    @a_u = AU.find(params[:id])
  end

  # POST /a_us
  # POST /a_us.xml
  def create
    @a_u = AU.new(params[:a_u])

    respond_to do |format|
      if @a_u.save
        format.html { redirect_to(@a_u, :notice => 'A u was successfully created.') }
        format.xml  { render :xml => @a_u, :status => :created, :location => @a_u }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @a_u.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /a_us/1
  # PUT /a_us/1.xml
  def update
    @a_u = AU.find(params[:id])

    respond_to do |format|
      if @a_u.update_attributes(params[:a_u])
        format.html { redirect_to(@a_u, :notice => 'A u was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @a_u.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /a_us/1
  # DELETE /a_us/1.xml
  def destroy
    @a_u = AU.find(params[:id])
    @a_u.destroy

    respond_to do |format|
      format.html { redirect_to(a_us_url) }
      format.xml  { head :ok }
    end
  end
end
