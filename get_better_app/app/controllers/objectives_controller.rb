class ObjectivesController < ApplicationController

  # GET: /objectives
  get "/objectives" do
    erb :"/objectives/index.html"
  end

  # GET: /objectives/new
  get "/objectives/new" do
    erb :"/objectives/new.html"
  end

  # POST: /objectives
  post "/objectives" do
    redirect "/objectives"
  end

  # GET: /objectives/5
  get "/objectives/:id" do
    erb :"/objectives/show.html"
  end

  # GET: /objectives/5/edit
  get "/objectives/:id/edit" do
    erb :"/objectives/edit.html"
  end

  # PATCH: /objectives/5
  patch "/objectives/:id" do
    redirect "/objectives/:id"
  end

  # DELETE: /objectives/5/delete
  delete "/objectives/:id/delete" do
    redirect "/objectives"
  end
end
