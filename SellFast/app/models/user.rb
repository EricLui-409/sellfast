class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bids, :foreign_key => 'bidder', dependent: :destroy
  has_many :items, :foreign_key => 'seller', dependent: :destroy
end
