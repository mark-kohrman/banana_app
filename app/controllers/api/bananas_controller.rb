class Api::BananasController < ApplicationController
  def index
    @bananas = Banana.all
    render 'index.json.jb'
  end
end
