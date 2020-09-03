class Objective3sController < ApplicationController

  # GET: /objective3s
  get "/objective3s" do
    erb :"/objective3s/index.html"
  end

  # GET: /objective3s/new
  get "/objective3s/new" do
    @goals=Goal.all
    erb :"/objective3s/new.html"
  end

  # POST: /objective_3s
  post "/objective3s" do
    @objective=Objective3.create(name: params[:objective_3][:name], description: params[:objective_3][:description], deadline: params[:objective_3][:deadline])
    goal=Goal.find_by(name: params[:goal][:goal_ids])
    @objective.update(goal_id: goal.id)
    redirect "/objective3s/#{@objective.id}"
  end

  # GET: /objective3s/5
  get "/objective3s/:id" do
    @objective=Objective3.find_by_id(params[:id])
    erb :"/objective3s/show.html"
  end

  # GET: /objective3s/5/edit
  get "/objective3s/:id/edit" do
    erb :"/objective3s/edit.html"
  end

  # PATCH: /objective3s/5
  patch "/objective3s/:id" do
    redirect "/objective3s/:id"
  end

  # DELETE: /objective3s/5/delete
  delete "/objective3s/:id/delete" do
    redirect "/objective3s"
  end
end
