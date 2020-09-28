class Objective2sController < ApplicationController

  # GET: /objective_2s
  get "/objective_2s" do
    erb :"/objective_2s/index.html"
  end

  # GET: /objective_2s/new
  get "/objective2s/new" do
    @objectives=Objective2.all
    erb :"/objective2s/new.html"
  end

  # POST: /objective2s
  post "/objective2s" do
    @objective=Objective2.find_by(name: params[:objective_2][:name])
    if !params[:strategy1][:name].empty?
      strategy1=Strategy.find_or_create_by(name: params[:strategy1][:name], description: params[:strategy1][:description], deadline: params[:strategy1][:deadline])
      strategy1.update(goal_id: @objective.goal_id, objective2_id: @objective.id)
    end
    
    if !params[:strategy2][:name].empty?
      strategy2=Strategy.find_or_create_by(name: params[:strategy2][:name], description: params[:strategy2][:description], deadline: params[:strategy2][:deadline])
      strategy2.update(goal_id: @goal.id)
      strategy2.update(objective2_id: @objective.id)
    end
    
    if !params[:strategy3][:name].empty?
      strategy3=Strategy.find_or_create_by(name: params[:strategy3][:name], description: params[:strategy3][:description], deadline: params[:strategy3][:deadline])
      strategy3.update(goal_id: @goal.id)
      strategy3.update(objective2_id: @objective.id)
    end
    
    if !params[:strategy4][:name].empty?
      strategy4=Strategy.find_or_create_by(name: params[:strategy4][:name], description: params[:strategy4][:description], deadline: params[:strategy4][:deadline])
      strategy4.update(goal_id: @goal.id)
      strategy4.update(objective2_id: @objective.id)
    end
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
