class Objective_2sController < ApplicationController

  # GET: /objective_2s
  get "/objective_2s" do
    erb :"/objective_2s/index.html"
  end

  # GET: /objective_2s/new
  get "/objective_2s/new" do
    erb :"/objective_2s/new.html"
  end

  # POST: /objective_2s
  post "/objective_2s" do
    redirect "/objective_2s"
  end

  # GET: /objective_2s/5
  get "/objective_2s/:id" do
    erb :"/objective_2s/show.html"
  end

  # GET: /objective_2s/5/edit
  get "/objective_2s/:id/edit" do
    erb :"/objective_2s/edit.html"
  end

  # PATCH: /objective_2s/5
  patch "/objective_2s/:id" do
    redirect "/objective_2s/:id"
  end

  # DELETE: /objective_2s/5/delete
  delete "/objective_2s/:id/delete" do
    redirect "/objective_2s"
  end
end
