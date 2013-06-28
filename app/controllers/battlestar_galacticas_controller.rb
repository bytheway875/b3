class BattlestarGalacticasController < ApplicationController
  # GET /battlestar_galacticas
  # GET /battlestar_galacticas.json
  def index
    @battlestar_galacticas = BattlestarGalactica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @battlestar_galacticas }
    end
  end

  # GET /battlestar_galacticas/1
  # GET /battlestar_galacticas/1.json
  def show
    @battlestar_galactica = BattlestarGalactica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @battlestar_galactica }
    end
  end

  # GET /battlestar_galacticas/new
  # GET /battlestar_galacticas/new.json
  def new
    @battlestar_galactica = BattlestarGalactica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @battlestar_galactica }
    end
  end

  # GET /battlestar_galacticas/1/edit
  def edit
    @battlestar_galactica = BattlestarGalactica.find(params[:id])
  end

  # POST /battlestar_galacticas
  # POST /battlestar_galacticas.json
  def create
    @battlestar_galactica = BattlestarGalactica.new(params[:battlestar_galactica])

    respond_to do |format|
      if @battlestar_galactica.save
        format.html { redirect_to @battlestar_galactica, notice: 'Battlestar galactica was successfully created.' }
        format.json { render json: @battlestar_galactica, status: :created, location: @battlestar_galactica }
      else
        format.html { render action: "new" }
        format.json { render json: @battlestar_galactica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /battlestar_galacticas/1
  # PUT /battlestar_galacticas/1.json
  def update
    @battlestar_galactica = BattlestarGalactica.find(params[:id])

    respond_to do |format|
      if @battlestar_galactica.update_attributes(params[:battlestar_galactica])
        format.html { redirect_to @battlestar_galactica, notice: 'Battlestar galactica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @battlestar_galactica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battlestar_galacticas/1
  # DELETE /battlestar_galacticas/1.json
  def destroy
    @battlestar_galactica = BattlestarGalactica.find(params[:id])
    @battlestar_galactica.destroy

    respond_to do |format|
      format.html { redirect_to battlestar_galacticas_url }
      format.json { head :no_content }
    end
  end
end
