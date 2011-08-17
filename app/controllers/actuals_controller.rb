class ActualsController < ApplicationController
  # GET /actuals
  # GET /actuals.xml
  def index
    @actuals = Actual.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @actuals }
    end
  end

  # GET /actuals/1
  # GET /actuals/1.xml
  def show
    @actual = Actual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @actual }
    end
  end

  # GET /actuals/new
  # GET /actuals/new.xml
  def new
    @actual = Actual.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @actual }
    end
  end

  # GET /actuals/1/edit
  def edit
    @actual = Actual.find(params[:id])
  end

  # POST /actuals
  # POST /actuals.xml
  def create
    @actual = Actual.new(params[:actual])

    respond_to do |format|
      if @actual.save
        format.html { redirect_to(@actual, :notice => 'Actual was successfully created.') }
        format.xml  { render :xml => @actual, :status => :created, :location => @actual }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @actual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /actuals/1
  # PUT /actuals/1.xml
  def update
    @actual = Actual.find(params[:id])

    respond_to do |format|
      if @actual.update_attributes(params[:actual])
        format.html { redirect_to(@actual, :notice => 'Actual was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @actual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /actuals/1
  # DELETE /actuals/1.xml
  def destroy
    @actual = Actual.find(params[:id])
    @actual.destroy

    respond_to do |format|
      format.html { redirect_to(actuals_url) }
      format.xml  { head :ok }
    end
  end
end
