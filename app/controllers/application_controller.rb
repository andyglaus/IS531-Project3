class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @employees = Employee.all
end
