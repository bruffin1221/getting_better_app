class GoalsController < ApplicationController

  # GET: /goals
  get "/goals" do
    erb :"/goals/index.html"
  end

  # GET: /goals/new
  get "/goals/new" do
    erb :"/goals/new.html"
  end

  # POST: /goals
  post "/goals" do
    redirect "/goals"
  end

  # GET: /goals/5
  get "/goals/:id" do
    erb :"/goals/show.html"
  end

  # GET: /goals/5/edit
  get "/goals/:id/edit" do
    erb :"/goals/edit.html"
  end

  # PATCH: /goals/5
  patch "/goals/:id" do
    redirect "/goals/:id"
  end

  # DELETE: /goals/5/delete
  delete "/goals/:id/delete" do
    redirect "/goals"
  end
end
