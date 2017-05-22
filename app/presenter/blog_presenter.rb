class BlogPresenter < SimpleDelegator
  include Rails.application.routes.url_helpers
  attr_reader :user

  def initialize(user = nil)
    @user = user
    set_view_paths
  end

  def content
    return body if user
    helpers.link_to('Faça login para continuar!!!',
      new_user_session_path, class: 'btn btn-lg btn-success')
  end

  private

  def helpers
    ApplicationController.helpers
  end

  def set_view_paths
    view_paths = Rails::Application::Configuration
      .new(Rails.root).paths['app/views']
    helpers.view_paths = view_paths
  end
end
