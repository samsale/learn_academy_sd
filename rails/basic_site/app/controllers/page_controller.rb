class PageController < ApplicationController
  def index
    render "home.html.erb"
  end

  def about
    render "about.html.erb"
  end
end
