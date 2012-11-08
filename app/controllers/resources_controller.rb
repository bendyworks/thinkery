class ResourcesController < ApplicationController
  before_filter :find_resource_by_id, only: [:show, :edit, :update, :destroy]

  def index
    @resources = Resource.all
  end

  def show
  end

  def new
    @resource = Resource.new
  end

  def edit
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
    if @resource.update_attributes (params[:resource])
      redirect_to @resource, notice: 'Resource successfully updated'
    else
      render :edit
    end
  end

  def destroy
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
