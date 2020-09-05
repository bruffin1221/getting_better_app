class GoalsController < ApplicationController

  get "/goals" do
    @goals=Goal.all
    erb :"/goals/index.html"
  end

  # GET: /goals/new
  get "/goals/new" do
    erb :"/goals/new.html"
  end

  # POST: /goals
  post "/goals" do
    @goal=Goal.find_or_create_by(name: params[:goal][:name], description: params[:goal][:description], deadline: params[:goal][:deadline]) 
    
    objective1=Objective1.find_or_create_by(name: params[:objective1][:name], description: params[:objective1][:description], deadline: params[:objective1][:deadline])
    objective1.update(goal_id: @goal.id)
    
    objective2=Objective2.find_or_create_by(name: params[:objective2][:name], description: params[:objective2][:description], deadline: params[:objective2][:deadline])
    objective2.update(goal_id: @goal.id)
    
    objective3=Objective3.find_or_create_by(name: params[:objective3][:name], description: params[:objective3][:description], deadline: params[:objective3][:deadline])
    objective3.update(goal_id: @goal.id)
    
    objective4=Objective4.find_or_create_by(name: params[:objective4][:name], description: params[:objective4][:description], deadline: params[:objective4][:deadline])
    objective4.update(goal_id: @goal.id)

   redirect "/goals/#{@goal.id}"
  end

  get "/goals/:id" do
    @goal=Goal.find_by_id(params[:id])
    erb :"/goals/show.html"
  end

  # GET: /goals/5/edit
  get "/goals/:id/edit" do
    erb :"/goals/edit.html"
  end

  # PATCH: /goals/5
  patch "/goals/:id" do
    redirect "/goals/:id"
  end

  # DELETE: /goals/5/delete
  delete "/goals/:id/delete" do
    redirect "/goals"
  end
end
