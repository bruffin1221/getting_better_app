class Objective4sController < ApplicationController

  # GET: /objective4s
  get "/objective_4s" do
    erb :"/objective_4s/index.html"
  end

  # GET: /objective4s/new
  get "/objective4s/new" do
    @objective4s=Objective4.all
    erb :"/objective4s/new.html"
  end

  # POST: /objective4s
  post "/objective4s" do
    @objective=Objective4.find_by(name: params[:objective4][:objective_ids])
    if !params[:strategy1][:name].empty?
      strategy1=Strategy.create(name: params[:strategy1][:name], description: params[:strategy1][:description], deadline: params[:strategy1][:deadline])
      strategy1.update(goal_id: @objective.goal_id, objective4_id: @objective.id)
    end
    
    if !params[:strategy2][:name].empty?
      strategy2=Strategy.create(name: params[:strategy2][:name], description: params[:strategy2][:description], deadline: params[:strategy2][:deadline])
      strategy2.update(goal_id: @objective.goal_id, objective4_id: @objective.id)
    end

    if !params[:strategy3][:name].empty?
      strategy3=Strategy.create(name: params[:strategy3][:name], description: params[:strategy3][:description], deadline: params[:strategy3][:deadline])
      strategy3.update(goal_id: @objective.goal_id, objective4_id: @objective.id)
    end
    if !params[:strategy4][:name].empty?
      strategy4=Strategy.create(name: params[:strategy4][:name], description: params[:strategy4][:description], deadline: params[:strategy4][:deadline])
      strategy4.update(goal_id: @goal.id, objective4_id: @objective.id)
    end
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
