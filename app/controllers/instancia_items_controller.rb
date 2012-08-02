class InstanciaItemsController < ApplicationController
  # GET /instancia_items
  # GET /instancia_items.xml
  def index
    @instancia_items = InstanciaItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @instancia_items }
    end
  end

  # GET /instancia_items/1
  # GET /instancia_items/1.xml
  def show
    @instancia_item = InstanciaItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @instancia_item }
    end
  end

  # GET /instancia_items/new
  # GET /instancia_items/new.xml
  def new
    @instancia_item = InstanciaItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @instancia_item }
    end
  end

  # GET /instancia_items/1/edit
  def edit
    @instancia_item = InstanciaItem.find(params[:id])
  end

  # POST /instancia_items
  # POST /instancia_items.xml
  def create
    @instancia_item = InstanciaItem.new(params[:instancia_item])

    respond_to do |format|
      if @instancia_item.save
        format.html { redirect_to(@instancia_item, :notice => 'Instancia item was successfully created.') }
        format.xml  { render :xml => @instancia_item, :status => :created, :location => @instancia_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @instancia_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /instancia_items/1
  # PUT /instancia_items/1.xml
  def update
    @instancia_item = InstanciaItem.find(params[:id])

    respond_to do |format|
      if @instancia_item.update_attributes(params[:instancia_item])
        format.html { redirect_to(@instancia_item, :notice => 'Instancia item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @instancia_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /instancia_items/1
  # DELETE /instancia_items/1.xml
  def destroy
    @instancia_item = InstanciaItem.find(params[:id])
    @instancia_item.destroy

    respond_to do |format|
      format.html { redirect_to(instancia_items_url) }
      format.xml  { head :ok }
    end
  end
end
