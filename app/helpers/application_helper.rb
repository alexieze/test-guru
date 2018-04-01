module ApplicationHelper

  def current_year
    Time.current.year
  end

  def git_repo(author, repo)
    link_to author, repo, target: '_blank'
  end
end
