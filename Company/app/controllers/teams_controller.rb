class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @employees = Employee.all
  end

  def edit
    @team = Team.find(params[:id])
    @employees = Employee.all
  end

  def create
    #fail
    @team = Team.new(params[:team])
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def update
    @team = Team.find_by_id(params[:id])
    if @team.update_attributes(params[:team])
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end
end
