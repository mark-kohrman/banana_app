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

  def show
    @banana = Banana.find_by(id: params[:id])

    render 'show.json.jb'
  end

  def update
    @banana = Banana.find_by(id: params[:id])
    @banana.update(
      country: params[:country] || @banana.country,
      company: params[:company] || @banana.company,
      price: params[:company] || @banana.price
    )
    @banana.save

    render 'show.json.jb'
  end

end
