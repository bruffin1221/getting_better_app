class Objective2sController < ApplicationController

  # GET: /objective_2s
  get "/objective_2s" do
    erb :"/objective_2s/index.html"
  end

  # GET: /objective_2s/new
  get "/objective2s/new" do
    @goals=Goal.all
    erb :"/objective2s/new.html"
  end

  # POST: /objective2s
  post "/objective2s" do
    @objective=Objective2.create(name: params[:objective_2][:name], description: params[:objective_2][:description], deadline: params[:objective_2][:deadline])
    goal=Goal.find_by(name: params[:goal][:goal_ids])
    @objective.update(goal_id: goal.id)
    redirect "/objective2s/#{@objective.id}"
  end

  # GET: /objective2s/5
  get "/objective2s/:id" do
    @objective=Objective2.find_by_id(params[:id])
    erb :"/objective2s/show.html"
  end

  # GET: /objective2s/5/edit
  get "/objective2s/:id/edit" do
    erb :"/objective2s/edit.html"
  end

  # PATCH: /objective2s/5
  patch "/objective2s/:id" do
    @objective=Objective.find_by_id(params[:id])
    redirect "/objective2s/:id"
  end

  # DELETE: /objective2s/5/delete
  delete "/objective2s/:id/delete" do
    redirect "/objective2s"
  end
end
