require 'business/organizations'

class OrganizationsController < ApplicationController
  def create
    begin
      name = params[:name]
      user = params[:user]

      username = user[:name]
      email = user[:email]
      password = user[:password]

      organization = Business::Organizations.create!(name, username, email, password)

      render json: organization, status: :ok
    rescue OrganizationNameError => e
      render status: 400, json: {
        status: 'ERROR', message: e.message
      }
    rescue UserEmailError => e
      render status: 400, json: {
        status: 'ERROR', message: e.message
      }
    end
  end
end
