class PhotosController < ApplicationController
  def index
    @photostories = photostories.order('id desc')
  end

  def show
    @photostory = photostories.find_by_slug!(params[:slug])
  end

  private

  def photostories
    PhotoStory.published
  end
end
