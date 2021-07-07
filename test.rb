require 'uri'
require 'cgi'

def query(string)
  uri = URI(string)
  query = uri.query
  params = CGI.parse(uri.query)
end

p query('https://www.w3schools.com/test/names.asp?name=John&age=30')