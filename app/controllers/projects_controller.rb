class ProjectsController < ApplicationController
  before_action :set_project, only: %w[show edit update destroy]

  def index
    @projects = Project.all
  end

  def show; end

  def new
    @project = Project.new
  end

  def edit; end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Проект успешно создан'
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project), notice: 'Проект успешно изменен'
    else
      render :edit
    end
  end

  def destroy
    if @project.destroy
      redirect_to projects_path, alert: 'Проект удален'
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title)
  end
end
