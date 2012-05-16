class ClickThrusController < ApplicationController
  # GET /click_thrus
  # GET /click_thrus.json
  def index
    @click_thrus = ClickThru.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @click_thrus }
    end
  end

  def clicked
    @click_thru = ClickThru.new(:url => "http://#{request.host}:#{request.port}#{request.fullpath}", :time => Time.now.to_i)

    respond_to do |format|
      if @click_thru.save
        format.html { redirect_to @click_thru, notice: 'Click thru was successfully created.' }
        format.json { render json: @click_thru, status: :created, location: @click_thru }
      else
        format.html { render action: "new" }
        format.json { render json: @click_thru.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /click_thrus/1
  # GET /click_thrus/1.json
  def show
    @click_thru = ClickThru.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @click_thru }
    end
  end

  # GET /click_thrus/new
  # GET /click_thrus/new.json
  def new
    @click_thru = ClickThru.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @click_thru }
    end
  end

  # GET /click_thrus/1/edit
  def edit
    @click_thru = ClickThru.find(params[:id])
  end

  # POST /click_thrus
  # POST /click_thrus.json
  def create
    @click_thru = ClickThru.new(params[:click_thru])

    respond_to do |format|
      if @click_thru.save
        format.html { redirect_to @click_thru, notice: 'Click thru was successfully created.' }
        format.json { render json: @click_thru, status: :created, location: @click_thru }
      else
        format.html { render action: "new" }
        format.json { render json: @click_thru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /click_thrus/1
  # PUT /click_thrus/1.json
  def update
    @click_thru = ClickThru.find(params[:id])

    respond_to do |format|
      if @click_thru.update_attributes(params[:click_thru])
        format.html { redirect_to @click_thru, notice: 'Click thru was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @click_thru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /click_thrus/1
  # DELETE /click_thrus/1.json
  def destroy
    @click_thru = ClickThru.find(params[:id])
    @click_thru.destroy

    respond_to do |format|
      format.html { redirect_to click_thrus_url }
      format.json { head :no_content }
    end
  end
end
