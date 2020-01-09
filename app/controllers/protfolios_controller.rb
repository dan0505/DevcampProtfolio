class ProtfoliosController < ApplicationController
  def index
    @protfolios = Protfolio.all
  end
end
