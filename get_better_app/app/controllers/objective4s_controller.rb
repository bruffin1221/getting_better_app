class Objective4sController < ApplicationController

  # GET: /objective4s
  get "/objective_4s" do
    erb :"/objective_4s/index.html"
  end

  # GET: /objective4s/new
  get "/objective4s/new" do
    @goals=Goal.all
    erb :"/objective4s/new.html"
  end

  # POST: /objective4s
  post "/objective4s" do
    @objective=Objective4.create(name: params[:objective_4][:name], description: params[:objective_4][:description], deadline: params[:objective_4][:deadline])
    goal=Goal.find_by(name: params[:goal][:goal_ids])
    @objective.update(goal_id: goal.id)
    redirect "/objective4s/#{@objective.id}"
  end

  # GET: /objective4s/5
  get "/objective4s/:id" do
    @objective=Objective4.find_by_id(params[:id])
    erb :"/objective4s/show.html"
  end

  # GET: /objective4s/5/edit
  get "/objective4s/:id/edit" do
    erb :"/objective4s/edit.html"
  end

  # PATCH: /objective4s/5
  patch "/objective4s/:id" do
    redirect "/objective4s/:id"
  end

  # DELETE: /objective4s/5/delete
  delete "/objective4s/:id/delete" do
    redirect "/objective4s"
  end
end
