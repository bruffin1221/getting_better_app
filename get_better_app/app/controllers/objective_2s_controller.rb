class Objective_2sController < ApplicationController

  # GET: /objective_2s
  get "/objective_2s" do
    erb :"/objective_2s/index.html"
  end

  # GET: /objective_2s/new
  get "/objective_2s/new" do
    @goals=Goal.all
    erb :"/objective_2s/new.html"
  end

  # POST: /objective_2s
  post "/objective_2s" do
    @objective=Objective_2.create(name: params[:objective_2][:name], description: params[:objective_2][:description], deadline: params[:objective_2][:deadline])
    goal=Goal.find_by(name: params[:goal][:goal_ids])
    @objective.update(goal_id: goal.id)
    redirect "/objective_2s/#{@objective.id}"
  end

  # GET: /objective_2s/5
  get "/objective_2s/:id" do
    @objective=Objective_2.find_by_id(params[:id])
    erb :"/objective_2s/show.html"
  end

  # GET: /objective_2s/5/edit
  get "/objective_2s/:id/edit" do
    erb :"/objective_2s/edit.html"
  end

  # PATCH: /objective_2s/5
  patch "/objective_2s/:id" do
    @objective=Objective.find_by_id(params[:id])
    redirect "/objective_2s/:id"
  end

  # DELETE: /objective_2s/5/delete
  delete "/objective_2s/:id/delete" do
    redirect "/objective_2s"
  end
end
