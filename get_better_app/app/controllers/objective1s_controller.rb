class Objective1sController < ApplicationController

  # GET: /objective1s
  get "/objective_1s" do
    erb :"/objective_1s/index.html"
  end

  # GET: /objective_1s/new
  get "/objective1s/new" do
    @goals=Goal.all
    erb :"/objective1s/new.html"
  end

  # POST: /objective1s
  post "/objective1s" do
   @objective=Objective_1.create(name: params[:objective_1][:name], description: params[:objective_1][:description], deadline: params[:objective_1][:deadline])
   goal=Goal.find_by(name: params[:goal][:goal_ids])
   @objective.update(goal_id: goal.id)
   redirect "/objective1s/#{@objective.id}"
  end

  # GET: /objective1s/5
  get "/objective1s/:id" do
    @objective=Objective1.find_by_id(params[:id])
    erb :"/objective1s/show.html"
  end

  # GET: /objective1s/5/edit
  get "/objective1s/:id/edit" do
    erb :"/objective1s/edit.html"
  end

  # PATCH: /objective1s/5
  patch "/objective1s/:id" do
    redirect "/objective1s/:id"
  end

  # DELETE: /objective1s/5/delete
  delete "/objective1s/:id/delete" do
    redirect "/objective1s"
  end
end
