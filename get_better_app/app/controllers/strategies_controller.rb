class StrategiesController < ApplicationController

  # GET: /strategies
  get "/strategies" do
    @strategies=Strategy.all
    erb :"/strategies/index.html"
  end

  # GET: /strategies/new
  get "/strategies/new" do
    @strategies=Strategy.all
    erb :"/strategies/new.html"
  end

  # POST: /strategies
  post "/strategies" do 
    strategy=Strategy.find_by(name: params[:strategy][:strategy_ids])
    goal=strategy.goal_id
    if !params[:tactic1][:name].empty?
      tactic1=Tactic.create(name: params[:tactic1][:name], description: params[:tactic1][:description], deadline: params[:tactic1][:description])
      tactic1.update(strategy_id: strategy.id)
      tactic1.update(goal_id: goal )
      tactic1.update(objective_1_id: strategy.objective1_id)
      tactic1.update(objective_2_id: strategy.objective2_id)
      tactic1.update(objective_3_id: strategy.objective3_id)
      tactic1.update(objective_4_id: strategy.objective4_id)
    end

    if !params[:tactic2][:name].empty? 
      tactic2=Tactic.create(name: params[:tactic2][:name], description: params[:tactic2][:description], deadline: params[:tactic1][:description] )
      tactic2.update(strategy_id: strategy.id)
      tactic2.update(goal_id: goal)
      tactic2.update(objective_1_id: strategy.objective1_id)
      tactic2.update(objective_2_id: strategy.objective2_id)
      tactic2.update(objective_3_id: strategy.objective3_id)
      tactic2.update(objective_4_id: strategy.objective4_id)
    end

    if !params[:tactic3][:name].empty? 
      tactic3=Tactic.create(name: params[:tactic3][:name], description: params[:tactic3][:description], deadline: params[:tactic3][:description] )
      tactic3.update(strategy_id: strategy.id)
      tactic3.update(goal_id: goal)
      tactic3.update(objective_1_id: strategy.objective1_id)
      tactic3.update(objective_2_id: strategy.objective2_id)
      tactic3.update(objective_3_id: strategy.objective3_id)
      tactic3.update(objective_4_id: strategy.objective4_id)
    end

    if !params[:tactic4][:name].empty? 
      tactic4=Tactic.create(name: params[:tactic4][:name], description: params[:tactic4][:description], deadline: params[:tactic4][:description]) 
      tactic4.update(strategy_id: strategy.id)
      tactic4.update(goal_id: goal)
      tactic4.update(objective_1_id: strategy.objective1_id)
      tactic4.update(objective_2_id: strategy.objective2_id)
      tactic4.update(objective_3_id: strategy.objective3_id)
      tactic4.update(objective_4_id: strategy.objective4_id)
    end

    if !params[:tactic5][:name].empty? 
      tactic5=Tactic.create(name: params[:tactic5][:name], description: params[:tactic5][:description], deadline: params[:tactic5][:description] )
      tactic5.update(strategy_id: strategy.id)
      tactic5.update(goal_id: goal)
      tactic5.update(objective_1_id: strategy.objective1_id)
      tactic5.update(objective_2_id: strategy.objective2_id)
      tactic5.update(objective_3_id: strategy.objective3_id)
      tactic5.update(objective_4_id: strategy.objective4_id)
    end
    redirect "/strategies/#{strategy.id}"
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
