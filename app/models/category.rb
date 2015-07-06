class Category < ActiveRecord::Base
  has_many :exams, dependent: :destroy
  has_many :questions, dependent: :destroy

  validates :name, :exetime, presence: true
  validates :exetime, numericality: {only_integer: true,
    greater_than: Settings.category.exetime.minimum}
end
