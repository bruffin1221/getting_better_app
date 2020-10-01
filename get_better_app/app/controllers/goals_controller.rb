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
    if !params[:objective_1][:name].empty?
      objective1=Objective1.create(name: params[:objective_1][:name], description: params[:objective_1][:description], deadline: params[:objective_1][:deadline])
      objective1.update(goal_id: @goal.id)
    end
    if !params[:objective_2][:name].empty? 
      objective_2=Objective2.create(name: params[:objective_2][:name], description: params[:objective_2][:description], deadline: params[:objective_2][:deadline] )
      objective_2.update(goal_id: @goal.id)
    end
    if !params[:objective_3][:name].empty? 
      objective3=Objective3.create(name: params[:objective_3][:name], description: params[:objective_3][:description], deadline: params[:objective_3][:deadline] )
      objective3.update(goal_id: @goal.id)
    end
    if !params[:objective_4][:name].empty? 
      objective4=Objective4.create(name: params[:objective_4][:name], description: params[:objective_4][:description], deadline: params[:objective_4][:description]) 
      objective4.update(goal_id: @goal.id)
    end
    redirect "/goals/#{@goal.id}"
  end

  get "/goals/:id" do
    @goal=Goal.find_by_id(params[:id])
    erb :"/goals/show.html"
  end

  # GET: /goals/5/edit
  get "/goals/:id/edit" do
    @goal=Goal.find_by_id(params[:id])
    erb :"/goals/edit.html"
  end

  # PATCH: /goals/5
  post "/goals/:id" do
    @goal=Goal.find_by_id(params[:id])
    @goal.update(name: params[:name], description: params[:description], deadline: params[:deadline])
    redirect "/goals/#{@goal.id}" 
  end

  # DELETE: /goals/5/delete
  delete "/goals/:id/delete" do
    redirect "/goals"
  end
end
