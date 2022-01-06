class StudentsController < ApplicationController
  layout false
  def index
    @students=Student.all

    # render json: @students
  end

  def show
    @student=Student.find(params[:id])
    # render json: @student
    
  end

  def new
    @student=Student.new()
    # render json: @subject
    # @subject=User.new({:first_name => 'Default'})
  end

  def create
    @student=Student.new(student_params)
    if @student.save
      # render json: @subject
      redirect_to(students_path)
      
    else
      render('new')

    end
  end

  def edit
    @student=Student.find(params[:id])
    # render json:@subject
  end
  def update
    @student=Student.find(params[:id])
    # @subject=User.update_attributes(subject_params)
    if @student.update(student_params)
      # render json: @subject
      redirect_to(students_path(@student))
      
    else
      render('edit')

    end
  end
  def delete
    @student=Student.find(params[:id])
    # render json: @subject
  end
  def destroy
    @students=Student.all
    @student=Student.find(params[:id])
    @student.destroy
    # render json: @subjects
    redirect_to(students_path)
  end
  private
  def student_params
    params.required(:student).permit(:name,:email,:phone)
  end
end
