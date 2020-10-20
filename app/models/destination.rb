class Destination < ApplicationRecord
  belongs_to :user, optional: true

  validates :first_name, :last_name, :kana_first_name, :kana_last_name, :postal_code, :prefecture_id, :city, :address, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture


end
