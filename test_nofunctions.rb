def query(string)
  splited = string.split('?')
  query = splited[1]
  atributes = query.split('&')
  hash = Hash.new()
  for i in 0...atributes.length
    pair = atributes[i].split('=')
    if hash[pair[0]]
      hash[pair[0]].push(pair[1])
    else
      hash[pair[0]] = [pair[1]]
    end
  end
  hash
end

p query('https://www.w3schools.com/test/names.asp?name=John&age=30')