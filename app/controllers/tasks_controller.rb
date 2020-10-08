class TasksController < ApplicationController
  before_action :set_task, only: %w[edit update destroy]
  before_action :set_project, only: %w[new edit create update destroy]

  def new
    @task = Task.new
  end

  def edit; end

  def create
    @task = @project.tasks.create(task_params)

    if @task.save
      redirect_to project_path(@project), notice: 'Задача успешно создана'
    else
      render @project
    end
  end

  def update
    if @task.update(task_params)
      redirect_to project_path(@project), notice: 'Задача успешно обновлена'
    else
      render :edit
    end
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
    params.require(:task).permit(:title, :active, :deadline, :project_id)
  end
end
