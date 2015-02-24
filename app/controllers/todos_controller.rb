class TodosController < ApplicationController
  def index
    @todos = session[:todos] ||=[]
  end
  def create
    form_data = params[:task]
    @todos = session[:todos]
    @todos << form_data
    redirect_to todos_path

  end
  def delete
    todos = session[:todos]
    todos.delete(params[:task])
      redirect_to todos_path
  end

  def delete_all
    todos = session[:todos]
    todos.clear
    redirect_to todos_path

  end
end
