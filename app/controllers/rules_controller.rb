class RulesController < ApplicationController
  def index
    @rules = Rule.all
  end

  def show
    @rule = Rule.find(params[:id])
  end

  def new
    @rule = Rule.new
  end

  def create
    @rule = Rule.new(params[:rule])
    if @rule.save
      redirect_to @rule, :notice => "Successfully created rule."
    else
      render :action => 'new'
    end
  end

  def edit
    @rule = Rule.find(params[:id])
  end

  def update
    @rule = Rule.find(params[:id])
    if @rule.update_attributes(params[:rule])
      redirect_to @rule, :notice  => "Successfully updated rule."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @rule = Rule.find(params[:id])
    @rule.destroy
    redirect_to rules_url, :notice => "Successfully destroyed rule."
  end
end
