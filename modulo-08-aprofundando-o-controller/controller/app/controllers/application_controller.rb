class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session # Para Api
end
