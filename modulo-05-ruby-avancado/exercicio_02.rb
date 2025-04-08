=begin
  Exercício 2

  Crie um programa que solicite ao usuário uma data no formato "dd/mm/aaaa" e verifique se a entrada corresponde a este formato.
  Se sim, o programa deve imprimir a data no formato "aaaa-mm-dd". Caso contrário, deve exibir uma mensagem de erro.

  # \d: Corresponde a qualquer dígito de 0 a 9.
  # \D: Corresponde a qualquer caractere que não seja um dígito.
  # \w: Corresponde a qualquer caractere alfanumérico (letras, dígitos e sublinhados).
  # \W: Corresponde a qualquer caractere que não seja alfanumérico.
  # \s: Corresponde a qualquer caractere de espaço em branco, como espaço, tabulação, nova linha, entre outros.
  # \S: Corresponde a qualquer caractere que não seja espaço em branco.
  # \b: Corresponde a uma fronteira de palavra.
  # \B: Corresponde a qualquer posição que não seja uma fronteira de palavra.
  # \A: Corresponde ao início da string.
  # \Z: Corresponde ao final da string, ou ao final da linha se a opção multiline estiver habilitada.
=end

# Verificação e conversão do formato de data em uma string usando expressões regulares
def verificar_e_converter_data(string)

  # /.../	    Delimita a expressão regular no Ruby
  # \A	      Início exato da string (diferente de ^, que funciona por linha)
  # (\d{2})	  Dois dígitos numéricos → corresponde ao dia
  # \/	      Barra literal / (precisa ser escapada com \)
  # (\d{2})	  Dois dígitos numéricos → corresponde ao mês
  # \/	      Outra barra literal
  # (\d{4})	  Quatro dígitos numéricos → corresponde ao ano
  # \z	      Final exato da string (diferente de $, que funciona por linha)
  
  if string =~ /\A(\d{2})\/(\d{2})\/(\d{4})\z/
    dia, mes, ano = string.scan(/\d+/)
    nova_data = "#{ano}-#{mes}-#{dia}"
    puts "A data no formato 'dd/mm/aaaa' é válida e convertida para o formato 'aaaa-mm-dd': #{nova_data}"
  else
    puts "A data inserida não está no formato correto 'dd/mm/aaaa'."
  end
end

# Solicita ao usuário uma data no formato "dd/mm/aaaa"
puts "Insira uma data no formato 'dd/mm/aaaa': "
data = gets.chomp

# Chama a função para verificar e converter a data
verificar_e_converter_data(data)