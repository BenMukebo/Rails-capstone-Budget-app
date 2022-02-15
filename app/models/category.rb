class Category < ApplicationRecord
  belongs_to :user
  has_many :category_transactions, dependent: :destroy
  has_many :transactions, through: :category_transactions

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon, presence: true, length: { maximum: 250 }

  def recent_transactions
    transactions.order(created_at: :DESC).limit(3)
  end
end
