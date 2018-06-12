# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(email_list)
    @emails = email_list
  end

  def parse
    emails.split.map do |email|
      email.split(',')
    end
  end.flatten

end

#  def parse this is also an option that is more "elegant" however it took me a long time to come up with this!
    #@emails.split(/[\s,]+/).uniq
  #end
