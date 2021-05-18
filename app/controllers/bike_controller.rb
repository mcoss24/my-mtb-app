class BikeController < ApplicationController

  def index   
    render({:template => "bike_templates/index.html.erb"})
  end

  def destination

    @spot = Spot.all

    render({:template => "bike_templates/destination.html.erb"})
  end
    
  def selected
    #Parameters: {"winter"=>"true", "east"=>"true", "desert"=>"true", "downhill"=>"true", "destination"=>"destination"}
    @list = params.keys()
    
    season = @list.at(0)
    location = @list.at(1)
    climate = @list.at(2)
    type = @list.at(4)

    render({:template => "bike_templates/selected.html.erb"})
  end
    
end

