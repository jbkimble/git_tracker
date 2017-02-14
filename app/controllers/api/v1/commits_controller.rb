class Api::V1::CommitsController < ApplicationController
  # protect_from_forgery with: :null_session
  skip_before_filter  :verify_authenticity_token

  def create

  end

  private
    def commit_params
      commit = params['payload']['head_commit']
      { sha: commit['id'][0..6], message: commit['message'], author: commit['author']['name'], timestamp: commit['timestamp'] }
    end

end
