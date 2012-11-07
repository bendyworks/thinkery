class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def show
    @resource = Resource.find(params[:id])
  end

  def new
    @resource = Resource.new
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def create
    @resource = Resource.new(params[:resource])
    if @resource.save
      redirect_to resources_path, notice: 'Resource successfully created'
    else
      render :new
    end
  end

  def update
    @resource = Resource.find(params[:id])
    if @resource.update_attributes (params[:resource])
      redirect_to resources_path, notice: 'Resource successfully updated'
    else
      render :new
    end
  end
end
