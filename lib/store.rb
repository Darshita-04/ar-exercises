class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_at_least_one_apparel

  private

  def must_carry_at_least_one_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Store must carry at least one type of apparel (men's or women's)")
    end
  end
end
