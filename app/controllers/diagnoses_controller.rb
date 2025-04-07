class DiagnosesController < ApplicationController

  
  def index
    @diagnoses = Diagnosis.all
  end

  def new
    @diagnosis = Diagnosis.new
  end

  def show
    @diagnosis = Diagnosis.find(params[:id])
  end

  def edit
    @diagnosis = Diagnosis.find(params[:id])
  end

  def create
    @diagnosis = Diagnosis.create(dx_params)
    redirect_to diagnoses_path

  end

  def update
    @diagnosis = diagnosis.find(dx_params)
    @diagnosis.update(dx_params)
  end

  def destroy
    @diagnosis = Diagnosis.find(params[:id])
    @diagnosis.destroy

    redirect_to diagnoses_path
  end

  def show_patient
    redirect to patient_path
  end

  private
  def dx_params
  params.require(:diagnosis).permit(:icd_code, :diagnosis_name)
  end

end