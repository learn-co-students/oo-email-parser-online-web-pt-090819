class EmailAddressParser
  attr_accessor :parser
  
  def initialize(emails)
    @parser=emails
  end
  
  def parse
    emails=@parser.split (/[\s,,]/)
    emails.delete_if(&:empty?).uniq
  end
  
end

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
