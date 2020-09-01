class Objective_1sController < ApplicationController

  # GET: /objective_1s
  get "/objective_1s" do
    erb :"/objective_1s/index.html"
  end

  # GET: /objective_1s/new
  get "/objective_1s/new" do
    erb :"/objective_1s/new.html"
  end

  # POST: /objective_1s
  post "/objective_1s" do
    redirect "/objective_1s"
  end

  # GET: /objective_1s/5
  get "/objective_1s/:id" do
    erb :"/objective_1s/show.html"
  end

  # GET: /objective_1s/5/edit
  get "/objective_1s/:id/edit" do
    erb :"/objective_1s/edit.html"
  end

  # PATCH: /objective_1s/5
  patch "/objective_1s/:id" do
    redirect "/objective_1s/:id"
  end

  # DELETE: /objective_1s/5/delete
  delete "/objective_1s/:id/delete" do
    redirect "/objective_1s"
  end
end
