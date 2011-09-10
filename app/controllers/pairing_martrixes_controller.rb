class PairingMartrixesController < ApplicationController
  # GET /pairing_martrixes
  # GET /pairing_martrixes.json
  def index
    @pairing_martrixes = PairingMartrix.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pairing_martrixes }
    end
  end

  # GET /pairing_martrixes/1
  # GET /pairing_martrixes/1.json
  def show
    @pairing_martrix = PairingMartrix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pairing_martrix }
    end
  end

  # GET /pairing_martrixes/new
  # GET /pairing_martrixes/new.json
  def new
    @pairing_martrix = PairingMartrix.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pairing_martrix }
    end
  end

  # GET /pairing_martrixes/1/edit
  def edit
    @pairing_martrix = PairingMartrix.find(params[:id])
  end

  # POST /pairing_martrixes
  # POST /pairing_martrixes.json
  def create
    @pairing_martrix = PairingMartrix.new(params[:pairing_martrix])

    respond_to do |format|
      if @pairing_martrix.save
        format.html { redirect_to @pairing_martrix, :notice => 'Pairing martrix was successfully created.' }
        format.json { render :json => @pairing_martrix, :status => :created, :location => @pairing_martrix }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pairing_martrix.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pairing_martrixes/1
  # PUT /pairing_martrixes/1.json
  def update
    @pairing_martrix = PairingMartrix.find(params[:id])

    respond_to do |format|
      if @pairing_martrix.update_attributes(params[:pairing_martrix])
        format.html { redirect_to @pairing_martrix, :notice => 'Pairing martrix was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pairing_martrix.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pairing_martrixes/1
  # DELETE /pairing_martrixes/1.json
  def destroy
    @pairing_martrix = PairingMartrix.find(params[:id])
    @pairing_martrix.destroy

    respond_to do |format|
      format.html { redirect_to pairing_martrixes_url }
      format.json { head :ok }
    end
  end
end
