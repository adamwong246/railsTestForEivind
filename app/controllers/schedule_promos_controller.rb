class SchedulePromosController < ApplicationController
  # GET /schedule_promos
  # GET /schedule_promos.json
  def index
    @schedule_promos = SchedulePromo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schedule_promos }
    end
  end

  def more_games
     @schedule_promo = SchedulePromo.find(:last, :order => "start_time ASC", :conditions => ['start_time < ? AND stop_time > ?', Time.now.to_i, Time.now.to_i])

    @page_view = PageView.new(:url => "somwhere over the rainbw", :time => Time.now.to_i)
    @page_view.save()
    
    #@schedule_promo = SchedulePromo.find(:last, :order => "start_time ASC")
     if @schedule_promo == nil
      @schedule_promo = SchedulePromo.find(:last, :order => "start_time ASC")
    end

    

    puts(@schedule_promo.inspect)
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @schedule_promo }
    end
  end

  def clear_future
    @future_scheduled_promos = SchedulePromo.find(:all, :conditions => ['start_time > ?', Time.now.to_i])
    @future_scheduled_promos.each{|e| e.destroy}
    redirect_to :action => "index"
  end

  def clear_all
    @future_scheduled_promos = SchedulePromo.find(:all)
    @future_scheduled_promos.each{|e| e.destroy}
    redirect_to :action => "index"
  end
  
  def populate

    time = Time.now.to_i
    
    @round_robin = RoundRobinPromo.find(:all, :order => "position")
    puts @round_robin.inspect
    @round_robin.each { |elem|
      @schedule_promo = SchedulePromo.new(:app_id => elem.app_id, :promo_id => elem.promo_id, :start_time => time, :stop_time => time + elem.duration)
      time = @schedule_promo.stop_time
      @schedule_promo.save()
    }

    redirect_to :action => "index"

    
  end

  # GET /schedule_promos/1
  # GET /schedule_promos/1.json
  def show
    @schedule_promo = SchedulePromo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @schedule_promo }
    end
  end

  # GET /schedule_promos/new
  # GET /schedule_promos/new.json
  def new
    @schedule_promo = SchedulePromo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @schedule_promo }
    end
  end

  # GET /schedule_promos/1/edit
  def edit
    @schedule_promo = SchedulePromo.find(params[:id])
  end

  # POST /schedule_promos
  # POST /schedule_promos.json
  def create
    @schedule_promo = SchedulePromo.new(params[:schedule_promo])

    respond_to do |format|
      if @schedule_promo.save
        format.html { redirect_to @schedule_promo, notice: 'Schedule promo was successfully created.' }
        format.json { render json: @schedule_promo, status: :created, location: @schedule_promo }
      else
        format.html { render action: "new" }
        format.json { render json: @schedule_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schedule_promos/1
  # PUT /schedule_promos/1.json
  def update
    @schedule_promo = SchedulePromo.find(params[:id])

    respond_to do |format|
      if @schedule_promo.update_attributes(params[:schedule_promo])
        format.html { redirect_to @schedule_promo, notice: 'Schedule promo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @schedule_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_promos/1
  # DELETE /schedule_promos/1.json
  def destroy
    @schedule_promo = SchedulePromo.find(params[:id])
    @schedule_promo.destroy

    respond_to do |format|
      format.html { redirect_to schedule_promos_url }
      format.json { head :no_content }
    end
  end
end
