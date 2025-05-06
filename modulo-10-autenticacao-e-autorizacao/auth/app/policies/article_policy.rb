class ArticlePolicy < ApplicationPolicy
  # NOTE: Up to Pundit v2.3.1, the inheritance was declared as
  # `Scope < Scope` rather than `Scope < ApplicationPolicy::Scope`.
  # In most cases the behavior will be identical, but if updating existing
  # code, beware of possible changes to the ancestors:
  # https://gist.github.com/Burgestrand/4b4bc22f31c8a95c425fc0e30d7ef1f5

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # - **Retorna todos os registros** da model (`Model.all`).  
      # - Ou seja: **não aplica nenhuma filtragem com base no usuário**. Todo mundo vê tudo.
      scope.all

      # Exemplo de filtro:
      # if user.admin?
      #   scope.all
      # else
      #   scope.where(published: true)
      # end
    end
  end

  def create?
    user&.has_role? :writer
  end

  def new?
    create?
  end

  def update?
    # se é admin
    # user&.admin?
    # se é dono do artigo
    user&.has_role? :editor || user&.id == record.user_id
  end

  def edit?
    update?
  end

  def destroy?
    # se é admin
    # user&.admin?
    # se é dono do artigo
    user&.admin? || user&.id == record.user_id
  end
end
