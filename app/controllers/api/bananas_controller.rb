class Api::BananasController < ApplicationController
  def index
    @bananas = Banana.all
    render 'index.json.jb'
  end

  def create
    @banana = Banana.new(
      country: params[:country],
      company: params[:company],
      price: params[:price]
    )
    @banana.save

    render 'show.json.jb'
  end
end
