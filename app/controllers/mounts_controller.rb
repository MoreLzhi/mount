class MountsController < ApplicationController
  # GET /mounts
  # GET /mounts.json
  def index
    @mounts = Mount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mounts }
    end
  end

  # GET /mounts/1
  # GET /mounts/1.json
  def show
    @mount = Mount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mount }
    end
  end

  # GET /mounts/new
  # GET /mounts/new.json
  def new
    @mount = Mount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mount }
    end
  end

  # GET /mounts/1/edit
  def edit
    @mount = Mount.find(params[:id])
  end

  # POST /mounts
  # POST /mounts.json
  def create
    @mount = Mount.new(params[:mount])

    respond_to do |format|
      if @mount.save
        format.html { redirect_to @mount, notice: 'Mount was successfully created.' }
        format.json { render json: @mount, status: :created, location: @mount }
      else
        format.html { render action: "new" }
        format.json { render json: @mount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mounts/1
  # PUT /mounts/1.json
  def update
    @mount = Mount.find(params[:id])

    respond_to do |format|
      if @mount.update_attributes(params[:mount])
        format.html { redirect_to @mount, notice: 'Mount was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mounts/1
  # DELETE /mounts/1.json
  def destroy
    @mount = Mount.find(params[:id])
    @mount.destroy

    respond_to do |format|
      format.html { redirect_to mounts_url }
      format.json { head :no_content }
    end
  end
end
