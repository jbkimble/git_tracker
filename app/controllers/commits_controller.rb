class CommitsController < ApplicationController
  def index
    @commits = Commit.last(10)
  end

end
