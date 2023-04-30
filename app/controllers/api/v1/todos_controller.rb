class Api::V1::TodosController < ApplicationController
  before_action :set_todo, only: [:update, :destroy]

  def index
    todos = Todo.all()
    render json: todos
  end

  def create
    todo = Todo.new(todo_params)
    if todo.save
      render json: todo
    else
      render json: todo.errors
    end
  end

  def destroy 
    @todo.destroy
  end

  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :description, :user_id, :tag_id)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end