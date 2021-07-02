class JournalsController < ApplicationController
  def index
    journals = Journal.all.order(:date).reverse
    render json: journals
  end

  def show
    journal = Journal.find_by(id: params[:id])
    render json: journal
  end
end
