class CommitsController < ApplicationController
  def index
    @commits = Commit.limit(10)
  end

end
