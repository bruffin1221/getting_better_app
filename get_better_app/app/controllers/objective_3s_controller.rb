class Objective_3sController < ApplicationController

  # GET: /objective_3s
  get "/objective_3s" do
    erb :"/objective_3s/index.html"
  end

  # GET: /objective_3s/new
  get "/objective_3s/new" do
    @goals=Goal.all
    erb :"/objective_3s/new.html"
  end

  # POST: /objective_3s
  post "/objective_3s" do
    @objective=Objective_3.create(name: params[:objective_3][:name], description: params[:objective_3][:description], deadline: params[:objective_3][:deadline])
    goal=Goal.find_by(name: params[:goal][:goal_ids])
    @objective.update(goal_id: goal.id)
    redirect "/objective_3s/#{@objective.id}"
  end

  # GET: /objective_3s/5
  get "/objective_3s/:id" do
    @objective=Objective_3.find_by_id(params[:id])
    erb :"/objective_3s/show.html"
  end

  # GET: /objective_3s/5/edit
  get "/objective_3s/:id/edit" do
    erb :"/objective_3s/edit.html"
  end

  # PATCH: /objective_3s/5
  patch "/objective_3s/:id" do
    redirect "/objective_3s/:id"
  end

  # DELETE: /objective_3s/5/delete
  delete "/objective_3s/:id/delete" do
    redirect "/objective_3s"
  end
end
