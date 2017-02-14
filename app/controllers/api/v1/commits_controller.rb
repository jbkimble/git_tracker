class Api::V1::CommitsController < ApplicationController
  # protect_from_forgery with: :null_session
  skip_before_filter  :verify_authenticity_token


  def create
    # commit = Commit.new(commit_params)
    # commit.save
    puts commit_params
  end

  private
    def commit_params
      # getting 500 error, added ['payload'] to line below to try to solve, havint confirmed it works
      commit = JSON.parse(params['payload'])
      JSON.parse(params.keys.first)
      # { sha: commit['id'][0..6], message: commit['message'], author: commit['author']['name'], timestamp: commit['timestamp'] }
    end

end
