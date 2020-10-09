class TasksController < ApplicationController
  before_action :set_task, only: %w[edit update destroy complete]
  before_action :set_project, only: %w[new edit create update destroy complete]

  def new
    @task = Task.new
  end

  def edit; end

  def create
    @tasks = @project.tasks.persisted
    @task = @project.tasks.build(task_params)

    if @task.save(task_params)
      redirect_to project_path(@project)
    else
      render 'projects/show'
    end
  end

  def update
    if @task.update(task_params)
      redirect_to project_path(@project), notice: 'Задача успешно обновлена'
    else
      render :edit
    end
  end

  def complete
    @task.update(complete: true)

    redirect_to @project
  end

  def destroy
    if @task.destroy
      redirect_to @project, alert: 'Задача удалена'
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title, :complete, :project_id)
  end
end
