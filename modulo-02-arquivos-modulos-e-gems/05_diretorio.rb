# 1 - Exibe o diretório atual
puts Dir.pwd # /var/www/html/onebitcode-trilha-ruby/modulo-02-arquivos-modulos-e-gems

# 2 - Criando diretório
# Cria um diretório chamado teste caso ele não exista
if !Dir.exist?('teste')
  Dir.mkdir('teste')
end

# 3 - Lista arquivos e pastas no diretório atual
puts Dir.glob('*')

# 3 - Listar apenas arquivo .rb
puts Dir.glob('*.rb')

# 4 - Incluir subdiretórios na listagem
puts Dir.glob('**/*')

# 5 - Navegando entre diretórios
Dir.chdir "data"
puts Dir.pwd

# 6 - Listar arquivos ocultos também
puts Dir.glob('{.*,**/*}')