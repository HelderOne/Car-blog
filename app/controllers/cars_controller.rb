class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(name: "...", summary: "...",body: "...", description: "...",engine: "...", price: "...",drive_unit: "...", to100: "...",maxspeed: "...")

    if @car.save
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end
  end
end
