class Invoice < ApplicationRecord
    validates :name, :book, :category, :price, :isbn, :date, :price, presence: true
    
  # validate that the phone number only contains digits
# tests if the value of the phone matches
# the regular expression given via with:
validates :phone, format: { with: /\A[0-9]+\z/,
message: "accepts digits only!" }

 
  # we have to add the error so that the record becomes invalid
  # when the value of the attribute does not match the
  # regular expression
  validates_each :name, :book, :category do |record, attr, value|
     record.errors.add(attr, 'must contain only letters!') if
                                  value =~ /[^\A[a-zA-Z]+\z]/
  end


end
