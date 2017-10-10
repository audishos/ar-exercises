class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store, presence: true
  validates :hourly_rate,
    numericality: {
      greater_than_or_equal_to: 40,
      less_than_or_equal_to: 200,
    }

  before_create :generate_random_password

  private
    def generate_random_password
      self.password = SecureRandom.urlsafe_base64(10)
    end
end
