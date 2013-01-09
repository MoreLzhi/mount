class RoutesController < ApplicationController
  inherit_resources
  actions :all, :except => [ :index ]
  respond_to :json, :js, :html

  def index
    if params[:continent]
      continent = Continent.find params[:continent]
      @routes = continent.routes.all
    elsif params[:region]
      region = Region.find params[:region]
      @routes = region.routes.all
    elsif params[:mount]
      region = Mount.find params[:mount]
      @routes = mount.routes.all
    else
      @routes = Route.all
    end    
    render
  end

  def filter
    params[:route].each {|key, param| params[:route].delete(key) if param == "" }    
    @routes = Route.where(params[:route]).all
    render :layout => false 
  end
end
