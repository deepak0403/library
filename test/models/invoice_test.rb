require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "must not save a invoice when name book category address 
   are not provided" do
   invoice = Invoice.new(name: "John", 
   book: "fiction", category: "fiction" )
   assert_equal(false, invoice.save, "saved the invoice even
   though at least one of the name,
   book and/or category were not provided!")
   end
   
    test "must not save invoice if phone contains non-digits" do
     invoice = Invoice.new(name: "John",
               book: "fiction",
               phone: "12we3r",
               category: "fiction")
     assert( !invoice.save, "saved the invoice, even though
                                  the phone is not valid!")
  
  
    test "must allow only letters in name and book" do
       invoice = Invoice.new(name: "John1",book: "fiction",
                phone: "123456",
                category: "fiction")
       assert_equal(false, invoice.save, "saved the invoice even
                               though name contains non-letters!")
end



 
end
end
