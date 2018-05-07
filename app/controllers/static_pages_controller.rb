class StaticPagesController < ApplicationController

  def home
  end

  def apropos
  end

  def letsencrypt
    # use your code here, not mine
     render text: "Oqq-iH58u47abcoaWos9nOpk7yd_7WMZlegW5oCxRws"
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

  def search
    @logements = Logement.all
    if params[:search]
    @logements = Logement.search(params[:search]).order("created_at DESC")
    else
    @logements = Logement.all.order('created_at DESC')
    end
  end

  def equipe
  end

  def achat
    @ventes = Vente.all
  end

  def gestion

  end
end
