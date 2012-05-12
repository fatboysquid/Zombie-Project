class ShowTimesController < ApplicationController
  def index
    @showTimes = ShowTime.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @showTimes }
    end
  end
  
  def create
    @user = current_user
    @showTime = @user.showTimes.new(params[:show_time])

      respond_to do |format|
        if @showTime.save
          format.html { redirect_to @user, notice: 'Show Time was successfully created.' }
          format.json { render json: @user, status: :created, location: @user }
        end
      end
  end

  def show
  end

  def edit
  end

  def new
  end
end
