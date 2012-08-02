class TelefonoPersonasController < ApplicationController
  # GET /telefono_personas
  # GET /telefono_personas.xml
  def index
    @telefono_personas = TelefonoPersona.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @telefono_personas }
    end
  end

  # GET /telefono_personas/1
  # GET /telefono_personas/1.xml
  def show
    @telefono_persona = TelefonoPersona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @telefono_persona }
    end
  end

  # GET /telefono_personas/new
  # GET /telefono_personas/new.xml
  def new
    @telefono_persona = TelefonoPersona.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @telefono_persona }
    end
  end

  # GET /telefono_personas/1/edit
  def edit
    @telefono_persona = TelefonoPersona.find(params[:id])
  end

  # POST /telefono_personas
  # POST /telefono_personas.xml
  def create
    @telefono_persona = TelefonoPersona.new(params[:telefono_persona])

    respond_to do |format|
      if @telefono_persona.save
        format.html { redirect_to(@telefono_persona, :notice => 'Telefono persona was successfully created.') }
        format.xml  { render :xml => @telefono_persona, :status => :created, :location => @telefono_persona }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @telefono_persona.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telefono_personas/1
  # PUT /telefono_personas/1.xml
  def update
    @telefono_persona = TelefonoPersona.find(params[:id])

    respond_to do |format|
      if @telefono_persona.update_attributes(params[:telefono_persona])
        format.html { redirect_to(@telefono_persona, :notice => 'Telefono persona was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @telefono_persona.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telefono_personas/1
  # DELETE /telefono_personas/1.xml
  def destroy
    @telefono_persona = TelefonoPersona.find(params[:id])
    @telefono_persona.destroy

    respond_to do |format|
      format.html { redirect_to(telefono_personas_url) }
      format.xml  { head :ok }
    end
  end
end
