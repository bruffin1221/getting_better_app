class TacticsController < ApplicationController

  # GET: /tactics
  get "/tactics" do
    
    erb :"/tactics/index.html"
  end

  # GET: /tactics/new
  get "/tactics/new" do
    @plans=Plan.all
    @goals=Goal.all
    @objectives=Objective.all
    @strategies=Strategy.all
    erb :"/tactics/new.html"
  end

  # POST: /tactics
  post "/tactics" do
    @tactic=Tactic.create(actions: params["tactic"]["action"], deadline: params["tactic"]["deadline"])
    plan=Plan.find_by(name: params[:plan][:plan_ids])
    goal=Goal.find_by(name: params["goal"]["goal_ids"])
    objective=Objective.find_by(name: params["objective"]["objective_ids"])
    strategy=Strategy.find_by(routine: params["strategy"]["strategy_ids"])
    @tactic.update(goal_id: goal.id)
    @tactic.update(objective_id: objective.id)
    @tactic.update(strategy_id: strategy.id)
    @tactic.update(plan_id: plan.id)
    redirect "/tactics/#{@tactic.id}"
  end

  # GET: /tactics/5
  get "/tactics/:id" do
    @tactic=Tactic.find_by_id(params[:id])
    erb :"/tactics/show.html"
  end

  # GET: /tactics/5/edit
  get "/tactics/:id/edit" do
    erb :"/tactics/edit.html"
  end

  # PATCH: /tactics/5
  patch "/tactics/:id" do
    redirect "/tactics/:id"
  end

  # DELETE: /tactics/5/delete
  delete "/tactics/:id/delete" do
    redirect "/tactics"
  end
end
