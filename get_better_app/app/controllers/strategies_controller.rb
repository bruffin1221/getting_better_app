class StrategiesController < ApplicationController

  # GET: /strategies
  get "/strategies" do
    @strategies=Strategy.all
    erb :"/strategies/index.html"
  end

  # GET: /strategies/new
  get "/strategies/new" do
    @objective1=Objective1.all
    @objective2=Objective2.all
    @objective3=Objective3.all
    @objective4=Objective4.all
    @goals=Goal.all
    erb :"/strategies/new.html"
  end

  # POST: /strategies
  post "/strategies" do
    objective1=Objective1.find_by(name: params[:objective1][:objective_1_ids])
    objective2=Objective2.find_by(name: params[:objective2][:objective_2_ids])
     
    strategy1=Strategy.find_or_create_by(name: params[:strategy1][:name], description: params[:strategy1][:description], deadline: params[:strategy1][:deadline])
    1.update(goal_id: objective1.goal_id)
    objective1.update(objective1_id: objective1.id)
    objective2.update(goal_id: objective1.goal_id)
    objective2.update(objective2_id: objective2.id)

    #objective2=Objective2.find_or_create_by(name: params[:objective2][:name], description: params[:objective2][:description], deadline: params[:objective2][:deadline])
    #objective2.update(goal_id: @goal.id)
    
    #objective3=Objective3.find_or_create_by(name: params[:objective3][:name], description: params[:objective3][:description], deadline: params[:objective3][:deadline])
    #objective3.update(goal_id: @goal.id)
    
    #objective4=Objective4.find_or_create_by(name: params[:objective4][:name], description: params[:objective4][:description], deadline: params[:objective4][:deadline])
    #objective4.update(goal_id: @goal.id)
    redirect "/strategies"
  end

  # GET: /strategies/5
  get "/strategies/:id" do
    @strategy=Strategy.find_by_id(params[:id])
    erb :"/strategies/show.html"
  end

  # GET: /strategies/5/edit
  get "/strategies/:id/edit" do

    erb :"/strategies/edit.html"
  end

  # PATCH: /strategies/5
  patch "/strategies/:id" do
    redirect "/strategies/:id"
  end

  # DELETE: /strategies/5/delete
  delete "/strategies/:id/delete" do
    redirect "/strategies"
  end
end
