class PageViewsController < ApplicationController
  # GET /page_views
  # GET /page_views.json
  def index
    @page_views = PageView.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @page_views }
    end
  end

  # GET /page_views/1
  # GET /page_views/1.json
  def show
    @page_view = PageView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page_view }
    end
  end

  # GET /page_views/new
  # GET /page_views/new.json
  def new
    @page_view = PageView.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page_view }
    end
  end

  # GET /page_views/1/edit
  def edit
    @page_view = PageView.find(params[:id])
  end

  # POST /page_views
  # POST /page_views.json
  def create
    @page_view = PageView.new(params[:page_view])

    respond_to do |format|
      if @page_view.save
        format.html { redirect_to @page_view, notice: 'Page view was successfully created.' }
        format.json { render json: @page_view, status: :created, location: @page_view }
      else
        format.html { render action: "new" }
        format.json { render json: @page_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /page_views/1
  # PUT /page_views/1.json
  def update
    @page_view = PageView.find(params[:id])

    respond_to do |format|
      if @page_view.update_attributes(params[:page_view])
        format.html { redirect_to @page_view, notice: 'Page view was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_views/1
  # DELETE /page_views/1.json
  def destroy
    @page_view = PageView.find(params[:id])
    @page_view.destroy

    respond_to do |format|
      format.html { redirect_to page_views_url }
      format.json { head :no_content }
    end
  end
end
