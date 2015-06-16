class ScrumBoardController < ApplicationController
  def index
    @projects = Project.all
  end
end
