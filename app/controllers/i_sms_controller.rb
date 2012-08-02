class ISmsController < ApplicationController
  # GET /i_sms
  # GET /i_sms.xml
  def index
    @i_sms = ISm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @i_sms }
    end
  end

  # GET /i_sms/1
  # GET /i_sms/1.xml
  def show
    @i_sm = ISm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @i_sm }
    end
  end

  # GET /i_sms/new
  # GET /i_sms/new.xml
  def new
    @i_sm = ISm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @i_sm }
    end
  end

  # GET /i_sms/1/edit
  def edit
    @i_sm = ISm.find(params[:id])
  end

  # POST /i_sms
  # POST /i_sms.xml
  def create
    @i_sm = ISm.new(params[:i_sm])

    respond_to do |format|
      if @i_sm.save
        format.html { redirect_to(@i_sm, :notice => 'I sm was successfully created.') }
        format.xml  { render :xml => @i_sm, :status => :created, :location => @i_sm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @i_sm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /i_sms/1
  # PUT /i_sms/1.xml
  def update
    @i_sm = ISm.find(params[:id])

    respond_to do |format|
      if @i_sm.update_attributes(params[:i_sm])
        format.html { redirect_to(@i_sm, :notice => 'I sm was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @i_sm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /i_sms/1
  # DELETE /i_sms/1.xml
  def destroy
    @i_sm = ISm.find(params[:id])
    @i_sm.destroy

    respond_to do |format|
      format.html { redirect_to(i_sms_url) }
      format.xml  { head :ok }
    end
  end
end
