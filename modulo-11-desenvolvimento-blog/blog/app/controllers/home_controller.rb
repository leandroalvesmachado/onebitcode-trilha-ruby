class HomeController < ApplicationController
  def index
    # @msg = 'Olá mundo' # @ = variável de instância
    # render html: "<h2>Olá mundo</h2>".html_safe
    # render html: "<h2>#{@msg}</h2>".html_safe

    @name = "Rodrigo"
    @posts = [
      {title: "Rails", body: "Aprendendo com a OBC"},
      {title: "Javascript", body: "Aprendendo com a OBC"},
      {title: "Python", body: "Aprendendo com a OBC"},
    ]
  end
end