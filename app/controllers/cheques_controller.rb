class ChequesController < ApplicationController
  # GET /cheques
  # GET /cheques.xml
  def index
    @cheques = Cheque.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cheques }
    end
  end

  # GET /cheques/1
  # GET /cheques/1.xml
  def show
    @cheque = Cheque.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cheque }
    end
  end

  # GET /cheques/new
  # GET /cheques/new.xml
  def new
    @cheque = Cheque.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cheque }
    end
  end

  # GET /cheques/1/edit
  def edit
    @cheque = Cheque.find(params[:id])
  end

  # POST /cheques
  # POST /cheques.xml
  def create
    @cheque = Cheque.new(params[:cheque])

    respond_to do |format|
      if @cheque.save
        format.html { redirect_to(@cheque, :notice => 'Cheque was successfully created.') }
        format.xml  { render :xml => @cheque, :status => :created, :location => @cheque }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cheque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cheques/1
  # PUT /cheques/1.xml
  def update
    @cheque = Cheque.find(params[:id])

    respond_to do |format|
      if @cheque.update_attributes(params[:cheque])
        format.html { redirect_to(@cheque, :notice => 'Cheque was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cheque.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cheques/1
  # DELETE /cheques/1.xml
  def destroy
    @cheque = Cheque.find(params[:id])
    @cheque.destroy

    respond_to do |format|
      format.html { redirect_to(cheques_url) }
      format.xml  { head :ok }
    end
  end
end
