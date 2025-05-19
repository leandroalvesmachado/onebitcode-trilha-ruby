class EstudantesController < ApplicationController
  def index
    @estudantes = [
      {nome: "Aluno 1", idade: 19, curso: "Direito"},
      {nome: "Aluno 2", idade: 20, curso: "Computação"},
      {nome: "Aluno 3", idade: 21, curso: "Engenharia"},
    ]
  end
end