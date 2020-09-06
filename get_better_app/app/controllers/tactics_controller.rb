class TacticsController < ApplicationController

  # GET: /tactics
  get "/tactics" do
    
    erb :"/tactics/index.html"
  end

  # GET: /tactics/new
  get "/tactics/new" do
    @strategies=Strategy.all
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
