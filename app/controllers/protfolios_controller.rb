class ProtfoliosController < ApplicationController
  before_action :set_protfolio, only: [:edit, :update, :show, :destroy]

  def index
    @protfolios = Protfolio.all
  end

  def angular
    @title = "Angular"
    @protfolios = Protfolio.angular
    render :index
  end

  def ruby_on_rails
    @title = "Ruby on Rails"
    @protfolios = Protfolio.ruby_on_rails
    render :index
  end

  def new
    @protfolio = Protfolio.new
  end

  def edit
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
    if @protfolio.update(params.require(:protfolio).permit(:title, :subtitle, :body, :thumb_image))
      redirect_to protfolios_path, notice: "Record updated successfully"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @protfolio.destroy
    redirect_to protfolios_path, notice: "Protfolio Removed"
  end

  private

  def set_protfolio
    @protfolio = Protfolio.find(params[:id])
  end
end
