# 1 - Renomeia arquivos
# altera o nome do arquivo courses.txt para files2.txt
if File.exist?("data/courses.txt")
  File.rename("data/courses.txt", "data/files3.txt")
end

# 2 - Exclui arquivo
if File.exist?("data/files.txt")
  File.delete("data/files.txt")
end