require 'uri'
require 'net/http'

url = URI.parse('https://example.com/') # Define a URL

puts url # https://example.com/
puts url.class # URI::HTTPS

http = Net::HTTP.new(url.host, url.port) # Cria um objeto Net::HTTP
http.use_ssl = (url.scheme == 'https') # Define se usa SSL com base no esquema da URL

request = Net::HTTP::Get.new(url.request_uri) # Cria a requisição GET
response = http.request(request) # Envia a requisição

if response.is_a?(Net::HTTPSuccess)
  puts "Status: #{response.code} #{response.message}"
  puts response.body # Exibe o corpo da resposta
else
  puts "A requisição falhou com status #{response.code}"
end

