class ProtfoliosController < ApplicationController
  before_action :load_item, only: [:update]

  def index
    @protfolios = Protfolio.all
  end

  def new
    @protfolio = Protfolio.new
  end

  def create
    @protfolio = Protfolio.new(params.require(:protfolio).permit(:title, :subtitle, :body, :thumb_image))

    if @protfolio.save!
      redirect_to protfolios_path, flash: { notice: "#{@protfolio.title} saved!" }
    else
      redirect_to protfolios_path, flash: { error: " not saved!" }
    end
  end

  def update
  end

  def destroy
  end

  def load_item
    @protfolio = Protfolio.find(params(:id))
  end
end
