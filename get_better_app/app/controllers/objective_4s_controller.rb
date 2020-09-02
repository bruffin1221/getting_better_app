class Objective_4sController < ApplicationController

  # GET: /objective_4s
  get "/objective_4s" do
    erb :"/objective_4s/index.html"
  end

  # GET: /objective_4s/new
  get "/objective_4s/new" do
    @goals=Goal.all
    erb :"/objective_4s/new.html"
  end

  # POST: /objective_4s
  post "/objective_4s" do
    @objective=Objective_4.create(name: params[:objective_4][:name], description: params[:objective_4][:description], deadline: params[:objective_4][:deadline])
    goal=Goal.find_by(name: params[:goal][:goal_ids])
    @objective.update(goal_id: goal.id)
    redirect "/objective_4s/#{@objective.id}"
  end

  # GET: /objective_4s/5
  get "/objective_4s/:id" do
    @objective=Objective_4.find_by_id(params[:id])
    erb :"/objective_4s/show.html"
  end

  # GET: /objective_4s/5/edit
  get "/objective_4s/:id/edit" do
    erb :"/objective_4s/edit.html"
  end

  # PATCH: /objective_4s/5
  patch "/objective_4s/:id" do
    redirect "/objective_4s/:id"
  end

  # DELETE: /objective_4s/5/delete
  delete "/objective_4s/:id/delete" do
    redirect "/objective_4s"
  end
end