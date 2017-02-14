class Api::V1::CommitsController < ApplicationController
  skip_before_filter  :verify_authenticity_token


  def create
    commit = Commit.new(commit_params)
    commit.save
  end

  private
    def commit_params
      commit = JSON.parse(params[:payload])['head_commit']
      { sha: commit['id'][0..6], message: commit['message'], author: commit['author']['name'], timestamp: commit['timestamp'] }
    end

end
