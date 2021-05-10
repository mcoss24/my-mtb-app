class BikeController < ApplicationController

  def index
    render({:template => "bike_templates/index.html.erb"})
  end

  def destination
    
    @locale = params.fetch("destination")

    @spot = Spot.all

    render({:template => "bike_templates/destination.html.erb"})
  end

end

