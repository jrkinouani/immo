class Vente < ApplicationRecord
  validates :desc_home, length: { maximum: 200 }

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
        field :price
        field :image1
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
