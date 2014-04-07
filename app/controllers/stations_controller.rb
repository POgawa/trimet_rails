class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
    @lines = Line.all
  end


  def create
    @station = Station.new(params[:station])
    @lines = Line.where(:id => params[:line_ids])
    if @station.save
      @lines.each do |line|
        @station.lines << line
      end
      flash[:notice] = "Station created"
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
    @lines = Line.all
  end

  def update
    @station = Station.find(params[:id])
    @lines = Line.where(:id => params[:line_ids])
    if @station.update(params[:station])
       @station.lines = []
       @lines.each do |line|
        @station.lines << line
       end
      flash[:notice] = "Station updated."
      redirect_to station_path(@station)
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to stations_path
  end

end




