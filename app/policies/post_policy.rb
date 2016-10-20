class PostPolicy < ApplicationPolicy
  def create?
    user.has_role? :admin or user.has_role? :moderator
  end

  def update?
    user.has_role? :admin or (user.has_role? :moderator and record.user_id==user.id)
  end

  def destroy?
    user.has_role? :admin or (user.has_role? :moderator and record.user_id==user.id)
  end

end
