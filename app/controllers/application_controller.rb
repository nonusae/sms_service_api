class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    include ActionController::HttpAuthentication::Token::ControllerMethods
    include ActionController::HttpAuthentication::Basic::ControllerMethods

end
