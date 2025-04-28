class WelcomeController < ApplicationController
  before_action :initialize_produtos, only: [:index]

  def index
    @nome = 'Teste'
    # @produtos = [
    #   { nome: "Camiseta", preco: 19.99 },
    #   { nome: "Calça Jeans", preco: 39.99 },
    #   { nome: "Tênis", preco: 59.99 }
    # ]

    @produtos = session[:produtos]
    puts "Produtos: #{@produtos.inspect}" # Adicione esta linha
  end

  def adicionar_produto
    produto = { nome: params[:nome], preco: params[:preco].to_f }
    session[:produtos] << produto
    redirect_to root_path
  end

  private

  def initialize_produtos
    session[:produtos] ||= []
    @produtos = session[:produtos]
  end
end
