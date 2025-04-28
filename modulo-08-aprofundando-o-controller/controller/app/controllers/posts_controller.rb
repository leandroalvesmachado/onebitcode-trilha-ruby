class PostsController < ApplicationController
  def index
    render json: { message: "Listagem de posts" }
  end

  def show
    render json: { message: "Detalhes do post #{params[:id]}" }
  end

  def new
    render json: { message: "Formulário de criação de post" }
  end

  def create
    render json: { message: "Criando um novo post" }
  end

  def edit
    render json: { message: "Formulário de edição de post #{params[:id]}" }
  end

  def update
    render json: { message: "Atualizando post #{params[:id]}" }
  end

  def destroy
    render json: { message: "Removendo post #{params[:id]}" }
  end

  def comments
    render json: { message: "Listagem de comentários para o post #{params[:post_id]}" }
  end

  def new_comment
    render json: { message: "Formulário de criação de comentário para o post #{params[:post_id]}" }
  end

  def create_comment
    render json: { message: "Criando um novo comentário para o post #{params[:post_id]}" }
  end
end
