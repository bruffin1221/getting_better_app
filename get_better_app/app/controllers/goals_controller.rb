class GoalsController < ApplicationController

  get "/goals" do
    @goals=Goal.all
    erb :"/goals/index.html"
  end

  # GET: /goals/new
  get "/goals/new" do
    erb :"/goals/new.html"
  end

  # POST: /goals
  post "/goals" do
   @goal=Goal.find_or_create_by(name: params[:goal][:name], description: params[:goal][:description],deadline: params[:goal][:deadline]) 
   redirect "/goals/#{@goal.id}"
  end

  get "/goals/:id" do
    @goal=Goal.find_by_id(params[:id])
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
