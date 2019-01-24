class Contact < ApplicationRecord
  has_many :phones

  def id_and_name
  "#{self.id} - #{self.name}"
  end
end
