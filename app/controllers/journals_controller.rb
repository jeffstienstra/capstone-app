class JournalsController < ApplicationController
  def index
    journals = Journal.all.order(:date).reverse
    render json: journals
  end

  def show
    journal = Journal.find_by(favorite_id: params[:favorite_id])
    render json: journal
  end

  def create
    response = Cloudinary::Uploader.upload(params[:image_file], resource_type: :auto)
    cloudinary_url = response["secure_url"]

    journal = Journal.find_or_initialize_by(
      favorite_id: params[:favorite_id],
      parkCode: params[:parkCode],
      date: params[:date],
      title: params[:title],
      body: params[:body],
      latitude: params[:latitude],
      longitude: params[:longitude],
      image: cloudinary_url,
    )

    if journal.save
      render json: journal
    else
      render json: { errors: journal.errors.full_messages }, status: 422
    end
  end

  def update
    journal = Journal.find_by(id: params[:id])
    journal.title = params[:title] || journal.title
    journal.body = params[:body] || journal.body
    journal.date = params[:date] || journal.date
    journal.favorite_id = params[:favorite_id] || journal.favorite_id

    if journal.save
      render json: journal
    else
      render json: { errors: journal.errors.full_messages }, status: 422
    end
  end

  def destroy
    journal = Journal.find_by(id: params[:id])
    journal.destroy
    render json: { message: "This journal has been deleted." }
  end
end
