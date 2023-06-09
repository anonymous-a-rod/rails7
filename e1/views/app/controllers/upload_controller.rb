#---
# Excerpted from "Agile Web Development with Rails 7",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails7 for more book information.
#---
class UploadController < ApplicationController
  def get
    @picture = Picture.new
  end
  # . . .

  def save
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to(action: 'show', id: @picture.id)
    else
      render(action: :get)
    end
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def picture
    @picture = Picture.find(params[:id])
    send_data(@picture.data,
              filename: @picture.name,
              type: @picture.content_type,
              disposition: "inline")
  end
  private
    # Never trust parameters from the scary internet, only allow the white
    # list through.
    def picture_params
      params.require(:picture).permit(:comment, :uploaded_picture)
    end
end
