class Api::ImagesController < ApplicationController

  # POST /api/images
  def create
    image = Image.new
    image.picture.attach(image_params[:image])
    if image.picture.attached?
      image.save
      render json: {
          **image.as_json(except: :picture),
          url: url_for(image.picture)
      }, status: :created
    else
      render json: image.errors, status: :unprocessable_entity
    end
  end

  private

  def image_params
    params.permit(:image)
  end
end
