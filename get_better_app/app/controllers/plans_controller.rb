class PlansController < ApplicationController

  # GET: /plans
  get "/plans" do
    @plans=Plan.all
    erb :"/plans/index.html"
  end

  # GET: /plans/new
  get "/plans/new" do
   
    erb :"/plans/new.html"
  end

  # POST: /plans
  post "/plans" do
    redirect "/plans"
  end

  # GET: /plans/5
  get "/plans/:id" do
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
