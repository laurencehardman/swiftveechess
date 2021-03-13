class ApplicationController < ActionController::Base

  # If we had user-authentication, we would enforce it at this level, something like the below:

  # before_action :require_login, except: [:register]

end
