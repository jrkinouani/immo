class StaticPagesController < ApplicationController

  def home
  end

  def apropos
  end

  def galerie
      @logement = Logement.find(params[:id])
  end

  def galerie_vente
      @vente = Vente.find(params[:id])
  end
  def saisonniere

  end
  def reunion
    @logements = Logement.all
  end
  def capetown
    @logements = Logement.all
  end

  def equipe
  end

  def achat
    @ventes = Vente.all
  end

  def gestion

  end
end
