class ResourcesController < ApplicationController
  before_filter :find_resource_by_id, only: [:show, :edit, :update, :destroy]

  def index
    @resources = Resource.all
  end

  def show
    @resources = Resource.all
  end

  def new
    @resources = Resource.all
    @resource = Resource.new
  end

  def edit
    @resources = Resource.all
  end

  def create
    @resources = Resource.all
    @resource = Resource.new(params[:resource])
    if @resource.save
      redirect_to resources_path, notice: 'Resource successfully created'
    else
      render :new
    end
  end

  def update
    @resources = Resource.all
    if @resource.update_attributes (params[:resource])
      redirect_to @resource, notice: 'Resource successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @resources = Resource.all
    if @resource.delete
      redirect_to resources_path, notice: 'Resource successfully deleted'
    else
      render :edit
    end
  end

  private
  def find_resource_by_id
    @resource = Resource.find(params[:id])
  end
end
