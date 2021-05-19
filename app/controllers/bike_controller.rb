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
    #@values = params.fetch()
    
    @season = @list.at(0)
    @geography = @list.at(1)
    @climate = @list.at(2)
    @type = @list.at(3)

    @recc = Spot.where({@season => true}).where({@geography => true}).where({@climate => true}).where({@type => true}).first.location
    
    render({:template => "bike_templates/selected.html.erb"})
  end
    
end

