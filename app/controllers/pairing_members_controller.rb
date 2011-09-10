class PairingMembersController < ApplicationController
  # GET /pairing_members
  # GET /pairing_members.json
  def index
    @pairing_members = PairingMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pairing_members }
    end
  end

  # GET /pairing_members/1
  # GET /pairing_members/1.json
  def show
    @pairing_member = PairingMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pairing_member }
    end
  end

  # GET /pairing_members/new
  # GET /pairing_members/new.json
  def new
    @pairing_member = PairingMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pairing_member }
    end
  end

  # GET /pairing_members/1/edit
  def edit
    @pairing_member = PairingMember.find(params[:id])
  end

  # POST /pairing_members
  # POST /pairing_members.json
  def create
    @pairing_member = PairingMember.new(params[:pairing_member])

    respond_to do |format|
      if @pairing_member.save
        format.html { redirect_to @pairing_member, :notice => 'Pairing member was successfully created.' }
        format.json { render :json => @pairing_member, :status => :created, :location => @pairing_member }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pairing_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pairing_members/1
  # PUT /pairing_members/1.json
  def update
    @pairing_member = PairingMember.find(params[:id])

    respond_to do |format|
      if @pairing_member.update_attributes(params[:pairing_member])
        format.html { redirect_to @pairing_member, :notice => 'Pairing member was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pairing_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pairing_members/1
  # DELETE /pairing_members/1.json
  def destroy
    @pairing_member = PairingMember.find(params[:id])
    @pairing_member.destroy

    respond_to do |format|
      format.html { redirect_to pairing_members_url }
      format.json { head :ok }
    end
  end
end
