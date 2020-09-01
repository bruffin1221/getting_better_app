class Objective_3sController < ApplicationController

  # GET: /objective_3s
  get "/objective_3s" do
    erb :"/objective_3s/index.html"
  end

  # GET: /objective_3s/new
  get "/objective_3s/new" do
    erb :"/objective_3s/new.html"
  end

  # POST: /objective_3s
  post "/objective_3s" do
    redirect "/objective_3s"
  end

  # GET: /objective_3s/5
  get "/objective_3s/:id" do
    erb :"/objective_3s/show.html"
  end

  # GET: /objective_3s/5/edit
  get "/objective_3s/:id/edit" do
    erb :"/objective_3s/edit.html"
  end

  # PATCH: /objective_3s/5
  patch "/objective_3s/:id" do
    redirect "/objective_3s/:id"
  end

  # DELETE: /objective_3s/5/delete
  delete "/objective_3s/:id/delete" do
    redirect "/objective_3s"
  end
end
