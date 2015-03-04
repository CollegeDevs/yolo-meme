class AccessesController < ApplicationController
  before_action :set_project
  def new
    @accesses = Access.new
    @accesses.user = current_user
    @accesses.project = @project
    @accesses.save
    redirect_to project_path(@project)
  end

  def destroy
    @accesses = Project.find(params[:project_id]).accesses
    @accesses.destroy
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end
end
