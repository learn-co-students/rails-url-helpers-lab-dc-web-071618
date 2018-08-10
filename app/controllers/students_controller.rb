class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student

    if @student.active
      @status = 'active'
    else
      @status = 'inactive'
    end
  end

  def activate
    set_student

    @student.change_status

    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
