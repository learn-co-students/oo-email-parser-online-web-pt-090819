# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser 
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)
    @csv_emails = csv_emails
  end 


  def parse 
    csv_emails.split.collect do |address|
      address.split(',') ||
       address.split(' ') 
    end
    .flatten.uniq 
  end 
end 