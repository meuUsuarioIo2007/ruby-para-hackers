require 'net/http'

print "Adiciona o nome do Alvo: "
term = gets.chomp.to_i

# PESQUISA PARA O GOOGLE
uri = URI("https://www.google.com/search?q=#{term}")
response = Net::HTTP.get_response(uri)

# MOSTRAR O CODIGO DE REQUIZIÇÃO E AS INFORMAÇÕES DO CABEÇALHO
puts "Response status: #{response.code} #{response.message}"
response.each_header do |key, value|
  puts "#{key}: #{value}"
end
