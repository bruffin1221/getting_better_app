class PlansController < ApplicationController

  # GET: /plans
  get "/plans" do
    @plans=Plan.all
    erb :"/plans/index.html"
  end

  # GET: /plans/new
  get "/plans/new" do
   @plans=Plan.all
    erb :"/plans/new.html"
  end

  # POST: /plans
  post "/plans" do
    @plan=Plan.create(name: params[:plan][:name], description: params[:plan][:description], deadline: params[:plan][:deadline] )
    redirect "/plans/#{@plan.id}"
  end

  # GET: /plans/5
  get "/plans/:id" do
    @plan=Plan.find_by_id(params[:id])
    @tactic=Tactic.where(plan_id: params[:id])
    erb :"/plans/show.html"
  end

  # GET: /plans/5/edit
  get "/plans/:id/edit" do
    erb :"/plans/edit.html"
  end

  # PATCH: /plans/5
  patch "/plans/:id" do
    redirect "/plans/:id"
  end

  # DELETE: /plans/5/delete
  delete "/plans/:id/delete" do
    redirect "/plans"
  end
end
