# frozen_string_literal: true

class UffizziCore::Api::Cli::V1::Projects::ClustersPolicy < UffizziCore::ApplicationPolicy
  def index?
    context.user_access_module.any_access_to_project?(context.user, context.project)
  end

  def show?
    context.user_access_module.any_access_to_project?(context.user, context.project)
  end

  def create?
    context.user_access_module.admin_or_developer_access_to_project?(context.user, context.project)
  end

  def scale_down?
    context.user_access_module.admin_or_developer_access_to_project?(context.user, context.project)
  end

  def scale_up?
    context.user_access_module.admin_or_developer_access_to_project?(context.user, context.project)
  end

  def destroy?
    context.user_access_module.admin_or_developer_access_to_project?(context.user, context.project)
  end
end
