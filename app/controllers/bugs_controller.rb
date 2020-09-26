require 'business/bugs'

class BugsController < ApplicationController
  def index
    bugs = Business::Bugs.all

    render json: bugs, status: :ok
  end

  def show
    begin
      bug = Business::Bugs.find!(params[:id])

      render json: bug, status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render status: 400, json: {
        status: 'ERROR', message: I18n.t('errors.bugs.not_found')
      }
    end
  end

  def create
    title = params[:title]
    description = params[:description]
    severity = params[:severity]
    state = params[:state]
    user_id = params[:user_id]

    bug = Business::Bugs.create(title, description, severity, state)

    render json: bug, status: :ok
  end
end
