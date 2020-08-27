class StrategiesController < ApplicationController

  # GET: /strategies
  get "/strategies" do
    erb :"/strategies/index.html"
  end

  # GET: /strategies/new
  get "/strategies/new" do
    @plans=Plan.all
    @goals=Goal.all
    @objectives=Objective.all
    erb :"/strategies/new.html"
  end

  # POST: /strategies
  post "/strategies" do
    @strategy=Strategy.create(routine: params["strategy"]["routine"], deadline: params["strategy"]["deadline"])
    plan=Plan.find_by(name: params[:plan][:plan_ids])
    goal=Goal.find_by(name: params["goal"]["goal_ids"])
    objective=Objective.find_by(name: params["objective"]["objective_ids"])
    @strategy.update(plan_id: plan.id)
    @strategy.update(goal_id: goal.id)
    @strategy.update(objective_id: objective.id)
    redirect "/strategies/#{@strategy.id}"
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
