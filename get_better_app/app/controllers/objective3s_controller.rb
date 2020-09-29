class Objective3sController < ApplicationController

  # GET: /objective3s
  get "/objective3s" do
    erb :"/objective3s/index.html"
  end

  # GET: /objective3s/new
  get "/objective3s/new" do
    @objectives=Objective3.all
    erb :"/objective3s/new.html"
  end

  # POST: /objective_3s
  post "/objective3s" do
    @objective=Objective3.find_by(name: params[:objective][:objective_ids])
    if !params[:strategy1][:name].empty?
      strategy1=Strategy.create(name: params[:strategy1][:name], description: params[:strategy1][:description], deadline: params[:strategy1][:deadline])
      strategy1.update(goal_id: @objective.goal_id, objective3_id: @objective.id)
    end
    if !params[:strategy2][:name].empty?
      strategy2=Strategy.create(name: params[:strategy2][:name], description: params[:strategy2][:description], deadline: params[:strategy2][:deadline])
      strategy2.update(goal_id: @objective.goal_id, objective3_id: @objective.id)
    end
    if !params[:strategy3][:name].empty?
      strategy3=Strategy.create(name: params[:strategy3][:name], description: params[:strategy3][:description], deadline: params[:strategy3][:deadline])
      strategy3.update(goal_id: @objective.goal_id, objective3_id: @objective.id)
    end
    if !params[:strategy4][:name].empty?
      strategy4=Strategy.create(name: params[:strategy4][:name], description: params[:strategy4][:description], deadline: params[:strategy4][:deadline])
      strategy4.update(goal_id: @objective.goal_id, objective3_id: @objective.id)
    end
    redirect "/objective3s/#{@objective.id}"
  end

  # GET: /objective3s/5
  get "/objective3s/:id" do
    @objective=Objective3.find_by_id(params[:id])
    erb :"/objective3s/show.html"
  end

  # GET: /objective3s/5/edit
  get "/objective3s/:id/edit" do
    erb :"/objective3s/edit.html"
  end

  # PATCH: /objective3s/5
  patch "/objective3s/:id" do
    redirect "/objective3s/:id"
  end

  # DELETE: /objective3s/5/delete
  delete "/objective3s/:id/delete" do
    redirect "/objective3s"
  end
end
