class Api::V1::TagsController < ApplicationController
  def create
    tag = Tag.new(tag_params)
    if tag.save
      render json: tag
    else
      render json: tag.errors
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    render json: @tag.destroy
  end

  def update
   @tag = Tag.find(params[:id])

  end
end