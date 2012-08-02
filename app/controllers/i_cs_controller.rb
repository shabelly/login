class ICsController < ApplicationController
  # GET /i_cs
  # GET /i_cs.xml
  def index
    @i_cs = IC.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @i_cs }
    end
  end

  # GET /i_cs/1
  # GET /i_cs/1.xml
  def show
    @i_c = IC.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @i_c }
    end
  end

  # GET /i_cs/new
  # GET /i_cs/new.xml
  def new
    @i_c = IC.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @i_c }
    end
  end

  # GET /i_cs/1/edit
  def edit
    @i_c = IC.find(params[:id])
  end

  # POST /i_cs
  # POST /i_cs.xml
  def create
    @i_c = IC.new(params[:i_c])

    respond_to do |format|
      if @i_c.save
        format.html { redirect_to(@i_c, :notice => 'I c was successfully created.') }
        format.xml  { render :xml => @i_c, :status => :created, :location => @i_c }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @i_c.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /i_cs/1
  # PUT /i_cs/1.xml
  def update
    @i_c = IC.find(params[:id])

    respond_to do |format|
      if @i_c.update_attributes(params[:i_c])
        format.html { redirect_to(@i_c, :notice => 'I c was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @i_c.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /i_cs/1
  # DELETE /i_cs/1.xml
  def destroy
    @i_c = IC.find(params[:id])
    @i_c.destroy

    respond_to do |format|
      format.html { redirect_to(i_cs_url) }
      format.xml  { head :ok }
    end
  end
end
