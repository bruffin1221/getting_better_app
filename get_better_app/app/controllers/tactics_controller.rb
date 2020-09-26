class TacticsController < ApplicationController

  # GET: /tactics
  get "/tactics" do
    
    erb :"/tactics/index.html"
  end

  # GET: /tactics/new
  get "/tactics/new" do
    @tactics=Tactic.all
    erb :"/tactics/new.html"
  end

  # POST: /tactics
  post "/tactics" do
    tactic=Tactic.find_by(name: params[:tactic][:tactic_ids])
    if !params[:task1][:name].empty?
      task1=Task.create(name: params[:task1][:name], description: params[:task1][:description], deadline: params[:task1][:deadline])
      task1.update(tactic_id: tactic.id)
    end

    if !params[:task2][:name].empty? 
      task2=Task.create(name: params[:task2][:name], description: params[:task2][:description], deadline: params[:task2][:deadline] )
      task2.update(tactic_id: tactic.id)
    end

    if !params[:task3][:name].empty? 
      task3=Task.create(name: params[:task3][:name], description: params[:task3][:description], deadline: params[:task3][:deadline] )
      task3.update(tactic_id: tactic.id) 
    end

    if !params[:task4][:name].empty? 
     task4=Task.create(name: params[:task4][:name], description: params[:task4][:description], deadline: params[:task4][:deadling]) 
     task4.update(tactic_id: tactic.id)
    end

    if !params[:task5][:name].empty? 
      task5=Task.create(name: params[:task5][:name], description: params[:task5][:description], deadline: params[:task5][:deadline])
      task5.update(tactic_id: tactic.id)
    end
    redirect "/tactics/#{tactic.id}"
  end
  
  # GET: /tactics/5
  get "/tactics/:id" do
    @tactic=Tactic.find_by_id(params[:id])
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
