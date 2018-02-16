class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :vendor

  def self.new_sale(user, vendor)
    user.decrement_credit!
    Sale.create({vendor_id: vendor.id, user_id: user.id})
  end
  
  def self.refund
    self.user.increment_credit!
    self.destroy!
  end

end
