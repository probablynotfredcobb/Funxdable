class Party < ActiveRecord::Base
  validates :who,:what,:where,:when,:phone, presence: true;
  validate :cannot_party_in_the_past, on: :create;
  validates :phone, length: {minimum: 10, message: "number needed" }

  def cannot_party_in_the_past
    if self.when.present? && self.when < Date.today
      errors.add(:when, "can't be in the past")
    end
  end

end
