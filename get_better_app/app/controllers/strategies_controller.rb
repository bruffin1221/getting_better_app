class StrategiesController < ApplicationController

  # GET: /strategies
  get "/strategies" do
    erb :"/strategies/index.html"
  end

  # GET: /strategies/new
  get "/strategies/new" do
    @objective1=Objective1.all
    @objective2=Objective2.all
    @objective3=Objective3.all
    @objective4=Objective4.all
    @goals=Goal.all
    erb :"/strategies/new.html"
  end

  # POST: /strategies
  post "/strategies" do
    
    redirect "/strategies"
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
