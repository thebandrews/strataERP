class UserLogsController < ApplicationController
  # GET /user_logs
  # GET /user_logs.xml
  def index
    @user_logs = UserLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_logs }
    end
  end

  # GET /user_logs/1
  # GET /user_logs/1.xml
  def show
    @user_log = UserLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_log }
    end
  end

  # GET /user_logs/new
  # GET /user_logs/new.xml
  def new
    @user_log = UserLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_log }
    end
  end

  # GET /user_logs/1/edit
  def edit
    @user_log = UserLog.find(params[:id])
  end

  # POST /user_logs
  # POST /user_logs.xml
  def create
    @user_log = UserLog.new(params[:user_log])

    respond_to do |format|
      if @user_log.save
        format.html { redirect_to(@user_log, :notice => 'User log was successfully created.') }
        format.xml  { render :xml => @user_log, :status => :created, :location => @user_log }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_logs/1
  # PUT /user_logs/1.xml
  def update
    @user_log = UserLog.find(params[:id])

    respond_to do |format|
      if @user_log.update_attributes(params[:user_log])
        format.html { redirect_to(@user_log, :notice => 'User log was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_logs/1
  # DELETE /user_logs/1.xml
  def destroy
    @user_log = UserLog.find(params[:id])
    @user_log.destroy

    respond_to do |format|
      format.html { redirect_to(user_logs_url) }
      format.xml  { head :ok }
    end
  end
end
