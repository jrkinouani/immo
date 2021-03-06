class Logement < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :image1 , dependent: :destroy
  has_many :image2 , dependent: :destroy
  has_many :image3 , dependent: :destroy
  has_many :image4 , dependent: :destroy
  has_many :image5 , dependent: :destroy
  has_many :image6 , dependent: :destroy
  validates :desc_home, length: { maximum: 300 }

  def self.display
    Logement.where('locked' => true)
  end

def self.search(search)
  where("city LIKE ?", "%#{search}%")
end
   mount_uploader :image1, ImageUploader
   mount_uploader :image2, ImageUploader
   mount_uploader :image3, ImageUploader
   mount_uploader :image4, ImageUploader
   mount_uploader :image5, ImageUploader
   mount_uploader :image6, ImageUploader

    rails_admin do

      list do
        field :id
        field :city
        field :capacity
        field :price
        field :image1
        field :display
      end


      edit do
      field :name
      field :price
      field :desc
      field :desc_home
      field :city
      field :postal
      field :country
      field :street
      field :street_number
      field :surface
      field :capacity
      field :bedroom
      field :image1, :carrierwave
      field :image2, :carrierwave
      field :image3, :carrierwave
      field :image4, :carrierwave
      field :image5, :carrierwave
      field :image6, :carrierwave
    end
  end
end
