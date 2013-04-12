class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    @profile = EmployeeProfile.find_by_employee_id(params[:id])
  end

  def new
    @employee = Employee.new
    @employees = Employee.all
    @teams = Team.all
    #@employee.employeeprofiles.build
  end

  def edit
    @employee = Employee.find(params[:id])
    @employees = Employee.all
    @teams = Team.all
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def update
    @employee = Employee.find_by_id(params[:id])
    if @employee.update_attributes(params[:employee])
      redirect_to user_path(@employee)
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end
end
