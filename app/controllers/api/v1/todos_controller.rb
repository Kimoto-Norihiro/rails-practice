class Api::V1::TodosController < ApplicationController
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
    @todo = Todo.find(params[:id])
    render json: @todo.destroy
  end

  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors
    end
  end
end