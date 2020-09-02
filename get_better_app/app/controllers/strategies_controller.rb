class StrategiesController < ApplicationController

  # GET: /strategies
  get "/strategies" do
    erb :"/strategies/index.html"
  end

  # GET: /strategies/new
  get "/strategies/new" do
    @objective_1=Objective_1.all
    @objective_2=Objective_2.all
    @objective_3=Objective_3.all
    @objective_4=Objective_4.all
    @goals=Goal.all
    erb :"/strategies/new.html"
  end

  # POST: /strategies
  post "/strategies" do
    
    redirect "/strategies"
  end

  # GET: /strategies/5
  get "/strategies/:id" do
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
