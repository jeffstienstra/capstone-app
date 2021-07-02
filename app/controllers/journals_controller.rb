class JournalsController < ApplicationController
  def index
    journals = Journal.all.order(:date).reverse
    render json: journals
  end
end
