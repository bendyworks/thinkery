class StyleguideController < ApplicationController

   before_filter :load_navbar_resources

  def show
  end

  def index
  end

  def edit
  end

  def load_navbar_resources
    @resources = [Resource.new(path:'/nomnom', title:'Nomage', content:'Yes it is!')]
  end

end
