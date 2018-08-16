class RepositoriesController < ApplicationController
  def index
    githubservice = GithubService.new
    @repos_array = githubservice.get_repos
  end

  def create
    githubservice = GithubService.new
    response = githubservice.create_repo(params[:name])
    redirect_to '/'
  end
end
