class Api::V1::CommitsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    commit = Commit.new(commit_params)
    commit.save
  end

  private
    def commit_params
      commit = params['head_commit']
      { sha: commit['id'][0..6], message: commit['message'], author: commit['author']['name'], timestamp: commit['timestamp'] }
    end

end
