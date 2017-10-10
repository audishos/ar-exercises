class Store < ActiveRecord::Base
  has_many :employees

  validates :name,
    presence: true,
    length: { minimum: 3}
  validates :annual_revenue,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 0
    }
  validate :must_sell_one_of_mens_or_womens

  before_destroy :do_not_destroy_with_employees, prepend: true

  private

  def must_sell_one_of_mens_or_womens
    if (mens_apparel.blank? || mens_apparel == false) && (womens_apparel.blank? || womens_apparel == false)
      errors.add(:base, 'A store must sell at least one type of apparel')
    end
  end

  def do_not_destroy_with_employees
    if self.employees.size > 0
      errors.add(:base, 'Cannot destroy store with employees!')
      throw :abort
    end
  end
end
