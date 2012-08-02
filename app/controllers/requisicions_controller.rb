class RequisicionsController < ApplicationController
  # GET /requisicions
  # GET /requisicions.xml
  def index
    @requisicions = Requisicion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @requisicions }
    end
  end

  # GET /requisicions/1
  # GET /requisicions/1.xml
  def show
    @requisicion = Requisicion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @requisicion }
    end
  end

  # GET /requisicions/new
  # GET /requisicions/new.xml
  def new
    @requisicion = Requisicion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @requisicion }
    end
  end

  # GET /requisicions/1/edit
  def edit
    @requisicion = Requisicion.find(params[:id])
  end

  # POST /requisicions
  # POST /requisicions.xml
  def create
    @requisicion = Requisicion.new(params[:requisicion])

    respond_to do |format|
      if @requisicion.save
        format.html { redirect_to(@requisicion, :notice => 'Requisicion was successfully created.') }
        format.xml  { render :xml => @requisicion, :status => :created, :location => @requisicion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @requisicion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /requisicions/1
  # PUT /requisicions/1.xml
  def update
    @requisicion = Requisicion.find(params[:id])

    respond_to do |format|
      if @requisicion.update_attributes(params[:requisicion])
        format.html { redirect_to(@requisicion, :notice => 'Requisicion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @requisicion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /requisicions/1
  # DELETE /requisicions/1.xml
  def destroy
    @requisicion = Requisicion.find(params[:id])
    @requisicion.destroy

    respond_to do |format|
      format.html { redirect_to(requisicions_url) }
      format.xml  { head :ok }
    end
  end
end
