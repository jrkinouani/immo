class StaticPagesController < ApplicationController
  def home
    
  end

  def apropos
  end

  def galerie
      @logement = Logement.find(params[:id])
  end
  def saisonniere

  end
  def reunion

  end
  def capetown
  @logements = Logement.all
  end
end
