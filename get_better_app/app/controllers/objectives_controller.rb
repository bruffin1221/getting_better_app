class ObjectivesController < ApplicationController

  # GET: /objectives
  get "/objectives" do
    erb :"/objectives/index.html"
  end

  # GET: /objectives/new
  get "/objectives/new" do
    @goals=Goal.all
    erb :"/objectives/new.html"
  end

  # POST: /objectives
  post "/objectives" do
    goal=Goal.find_by(name: params[:goal][:goal_ids])
    @objective=Objective.create(name: params["objective"]["name"], description: params["objective"]["description"], deadline: params["objective"]["deadline"])
    @objective.update(goal_id: goal.id)
    redirect "/objectives/#{@objective.id}"
  end

  # GET: /objectives/5
  get "/objectives/:id" do
    @objective=Objective.find_by_id(params[:id])
    erb :"/objectives/show.html"
  end

  # GET: /objectives/5/edit
  get "/objectives/:id/edit" do
    erb :"/objectives/edit.html"
  end

  # PATCH: /objectives/5
  patch "/objectives/:id" do
    redirect "/objectives/:id"
  end

  # DELETE: /objectives/5/delete
  delete "/objectives/:id/delete" do
    redirect "/objectives"
  end
end
