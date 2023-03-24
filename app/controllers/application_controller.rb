class ApplicationController < ActionController::Base
    helper_method :current_property

    def current_property
        current_user.properties.find(params[:id])
    end
end
