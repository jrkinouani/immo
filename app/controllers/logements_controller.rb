class LogementsController < ApplicationController

  def new
    @logement = Logement.new
  end

  def create
    @logement = Logement.create(logement_params)
    redirect_to logement_path(@logement)
  end

  private

  def logement_params
    params.require(:logement).permit(:name, :desc, :desc_home,:city,:postal,:image1,:image2,:image3, :image4, :image5, :image6 )
  end

  def set_car
    @logement = Logement.find(params[:id])
  end
end
