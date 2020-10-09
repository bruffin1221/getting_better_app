class Objective1sController < ApplicationController

  # GET: /objective1s
  get "/objective_1s" do
    erb :"/objective_1s/index.html"
  end

  # GET: /objective_1s/new
  get "/objective1s/new" do
    @objectives=Objective1.all
    erb :"/objective1s/new.html"
  end

  # POST: /objective1s
  post "/objective1s" do
    objective=Objective1.find_by(name: params[:objective][:objective_ids])
    if !params[:strategy1][:name].empty?
      strategy1=Strategy.create(name: params[:strategy1][:name], description: params[:strategy1][:description], deadline: params[:strategy1][:deadline])
      strategy1.update( goal_id: objective.goal_id, objective1_id: objective.id )
    end
    if !params[:strategy2][:name].empty?
      strategy2=Strategy.create(name: params[:strategy2][:name], description: params[:strategy2][:description], deadline: params[:strategy2][:deadline])
      strategy2.update( goal_id: objective.goal_id, objective1_id: objective.id )
    end
    if !params[:strategy3][:name].empty?
      strategy3=Strategy.create(name: params[:strategy3][:name], description: params[:strategy3][:description], deadline: params[:strategy3][:deadline])
      strategy3.update( goal_id: objective.goal_id, objective1_id: objective.id )
    end
    if !params[:strategy4][:name].empty?
      strategy4=Strategy.create(name: params[:strategy4][:name], description: params[:strategy4][:description], deadline: params[:strategy4][:deadline])
      strategy4.update( goal_id: objective.goal_id, objective1_id: objective.id )
    end
    redirect "/objective1s/#{objective.id}"
  end

  # GET: /objective1s/5
  get "/objective1s/:id" do
    @objective=Objective1.find_by_id(params[:id])
    erb :"/objective1s/show.html"
  end

  # GET: /objective1s/5/edit
  get "/objective1s/:id/edit" do
    @objective=Objective1.find_by_id(params[:id])
    erb :"/objective1s/edit.html"
  end

  # PATCH: /objective1s/5
  post "/objective1s/:id" do
    @objective=Objective1.find_by_id(params[:id])
    @objective.update(name: params[:name], description: params[:description], deadline: params[:deadline])
    redirect "/objective1s/#{@objective.id}" 
  end

  # DELETE: /objective1s/5/delete
  delete "/objective1s/:id" do
    Objective1.find_by_id(params[:id]).destroy
    redirect "/goals"
  end

end
