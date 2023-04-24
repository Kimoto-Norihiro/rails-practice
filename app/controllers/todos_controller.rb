module API
  module V1
    class TodosController < ApplicationController
      def index
        todos = Todo.all()
        render json: todos status: :ok
      end
    
      def create
        todo = Todo.new(todo_params)
        if todo.save
          render json: todo status: :created
        else
          render json: todo.errors status: :unprocessable_entity
        end
      end
    
      def delete 
        @todo = Todo.find(params[:id])
        render json: @todo.destroy status: :ok
      end
    
      def update
        if @todo.update(todo_params)
          render json: @todo status: :ok
        else
          render json: @todo.errors status: :unprocessable_entity
        end
      end
    end
  end
end