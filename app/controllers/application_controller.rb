class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authenticate_user!

  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def render_404
    redirect_to main_app.root_url # Quando der um erro. Ele vai mandar pra pagina inicial
  end

end
