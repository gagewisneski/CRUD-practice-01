class StuffsController < ApplicationController

  def index
    @stuffs = Stuff.all
  end

  def new
  end

  def create
    stuff = Stuff.new(name: params[:name], price: params[:price].to_i, description: params[:description])
    stuff.save
  end

  def show
    @stuff = Stuff.find_by(id: params[:id])
  end

  def edit
    @stuff = Stuff.find_by(id: params[:id])
  end

  def update
    @stuff = Stuff.find_by(id: params[:id])
    @stuff.assign_attributes(name: params[:name], price: params[:price].to_i, description: params[:description])
    @stuff.save
  end

  def destroy
    stuff = Stuff.find_by(id: params[:id])
    stuff.destroy

    redirect_to "/"
  end

end
