class RoundRobinPromosController < ApplicationController
  # GET /round_robin_promos
  # GET /round_robin_promos.json
  def index
    @round_robin_promos = RoundRobinPromo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @round_robin_promos }
    end
  end

  # GET /round_robin_promos/1
  # GET /round_robin_promos/1.json
  def show
    @round_robin_promo = RoundRobinPromo.find(params[:id])
    
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @round_robin_promo }
    end
  end

  # GET /round_robin_promos/new
  # GET /round_robin_promos/new.json
  def new
    @round_robin_promo = RoundRobinPromo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @round_robin_promo }
    end
  end

  # GET /round_robin_promos/1/edit
  def edit
    @round_robin_promo = RoundRobinPromo.find(params[:id])
  end

  # POST /round_robin_promos
  # POST /round_robin_promos.json
  def create
    @round_robin_promo = RoundRobinPromo.new(params[:round_robin_promo])

    respond_to do |format|
      if @round_robin_promo.save
        format.html { redirect_to @round_robin_promo, notice: 'Round robin promo was successfully created.' }
        format.json { render json: @round_robin_promo, status: :created, location: @round_robin_promo }
      else
        format.html { render action: "new" }
        format.json { render json: @round_robin_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /round_robin_promos/1
  # PUT /round_robin_promos/1.json
  def update
    @round_robin_promo = RoundRobinPromo.find(params[:id])

    respond_to do |format|
      if @round_robin_promo.update_attributes(params[:round_robin_promo])
        format.html { redirect_to @round_robin_promo, notice: 'Round robin promo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @round_robin_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /round_robin_promos/1
  # DELETE /round_robin_promos/1.json
  def destroy
    @round_robin_promo = RoundRobinPromo.find(params[:id])
    @round_robin_promo.destroy

    respond_to do |format|
      format.html { redirect_to round_robin_promos_url }
      format.json { head :no_content }
    end
  end
end
