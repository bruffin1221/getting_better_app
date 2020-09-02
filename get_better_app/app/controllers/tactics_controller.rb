class TacticsController < ApplicationController

  # GET: /tactics
  get "/tactics" do
    @objective_1=Objective_1.all
    @objective_2=Objective_2.all
    @objective_3=Objective_3.all
    @objective_4=Objective_4.all
    @goals=Goal.all
    erb :"/tactics/index.html"
  end

  # GET: /tactics/new
  get "/tactics/new" do
    erb :"/tactics/new.html"
  end

  # POST: /tactics
  post "/tactics" do
    redirect "/tactics"
  end

  # GET: /tactics/5
  get "/tactics/:id" do
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
