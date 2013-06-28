class BeetsController < ApplicationController
  # GET /beets
  # GET /beets.json
  def index
    @beets = Beet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beets }
    end
  end

  # GET /beets/1
  # GET /beets/1.json
  def show
    @beet = Beet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beet }
    end
  end

  # GET /beets/new
  # GET /beets/new.json
  def new
    @beet = Beet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beet }
    end
  end

  # GET /beets/1/edit
  def edit
    @beet = Beet.find(params[:id])
  end

  # POST /beets
  # POST /beets.json
  def create
    @beet = Beet.new(params[:beet])

    respond_to do |format|
      if @beet.save
        format.html { redirect_to @beet, notice: 'Beet was successfully created.' }
        format.json { render json: @beet, status: :created, location: @beet }
      else
        format.html { render action: "new" }
        format.json { render json: @beet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beets/1
  # PUT /beets/1.json
  def update
    @beet = Beet.find(params[:id])

    respond_to do |format|
      if @beet.update_attributes(params[:beet])
        format.html { redirect_to @beet, notice: 'Beet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beets/1
  # DELETE /beets/1.json
  def destroy
    @beet = Beet.find(params[:id])
    @beet.destroy

    respond_to do |format|
      format.html { redirect_to beets_url }
      format.json { head :no_content }
    end
  end
end
