class TasksController < ApplicationController

  # GET: /tasks
  get "/tasks" do
    @tasks=Task.all
    erb :"/tasks/index.html"
  end

  # GET: /tasks/new
  get "/tasks/new" do
    erb :"/tasks/new.html"
  end

  # POST: /tasks
  post "/tasks" do
    redirect "/tasks"
  end

  # GET: /tasks/5
  get "/tasks/:id" do
    @task=Task.find_by_id(params[:id])
    erb :"/tasks/show.html"
  end

  # GET: /tasks/5/edit
  get "/tasks/:id/edit" do
    @task=Task.find_by_id(params[:id])
    erb :"/tasks/edit.html"
  end

  # PATCH: /tasks/5
  patch "/tasks/:id" do
    @task=Task.find_by_id(params[:id])
    @task.update(name: params[:name], description: params[:description], deadline: params[:deadline])
    redirect "/tasks/#{@task.id}"
  end

  # DELETE: /tasks/5/delete
  delete "/tasks/:id" do
    Task.find_by_id(params[:id]).destroy
    redirect "/tasks"
  end
end
