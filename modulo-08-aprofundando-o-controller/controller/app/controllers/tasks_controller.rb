class TasksController < ApplicationController
  def index
    @tasks = ['Tarefa 1', 'Tarefa 2', 'Tarefa 3']
    render json: { tasks: @tasks }
  end

  def show
    @tasks = ['Tarefa 1', 'Tarefa 2', 'Tarefa 3']
    task_id = params[:id].to_i - 1
    @task = @tasks[task_id]
    render json: { task: @task }
  end
end
