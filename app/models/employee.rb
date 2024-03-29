class Employee < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :personal_email, presence: true, uniqueness: true
  validates :city, :state, :country, :pincode, :address_line_1, presence: true

  def name
    "#{first_name} #{last_name}".strip
  end

  def full_address
    "#{city} #{state} #{country} #{pincode} #{address_line_1} "
  end

end
