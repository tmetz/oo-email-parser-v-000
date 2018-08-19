# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emailstring
  @emails = []
  def parse
    @emails = self.emailstring.split(/[\s,?]/)
    @emails.delete_if {|element| element.length == 0}
    @emails = @emails.unique
    @emails
  end

  def initialize(emailstring)
    self.emailstring = emailstring
    self
  end
end
