class Objective_1sController < ApplicationController

  # GET: /objective_1s
  get "/objective_1s" do
    erb :"/objective_1s/index.html"
  end

  # GET: /objective_1s/new
  get "/objective_1s/new" do
    @goals=Goal.all
    erb :"/objective_1s/new.html"
  end

  # POST: /objective_1s
  post "/objective_1s" do
   @objective=Objective_1.create(name: params[:objective_1][:name], description: params[:objective_1][:description], deadline: params[:objective_1][:deadline])
   goal=Goal.find_by(name: params[:goal][:goal_ids])
   @objective.update(goal_id: goal.id)
   redirect "/objective_1s/#{@objective.id}"
  end

  # GET: /objective_1s/5
  get "/objective_1s/:id" do
    @objective=Objective_1.find_by_id(params[:id])
    erb :"/objective_1s/show.html"
  end

  # GET: /objective_1s/5/edit
  get "/objective_1s/:id/edit" do
    erb :"/objective_1s/edit.html"
  end

  # PATCH: /objective_1s/5
  patch "/objective_1s/:id" do
    redirect "/objective_1s/:id"
  end

  # DELETE: /objective_1s/5/delete
  delete "/objective_1s/:id/delete" do
    redirect "/objective_1s"
  end
end
