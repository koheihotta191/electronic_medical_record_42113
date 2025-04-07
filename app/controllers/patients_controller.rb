class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def add_diagnosis
    @patient = Patient.find(params[:id])
    @diagnosis = Diagnosis.find(params[:diagnosis_id])
    @patient_diagnosis = PatientDiagnosis.create!(patient: @patient, diagnosis: @diagnosis)

    redirect_to @patient
  end

  def new
    @patient = Patient.new
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def create
    @patient = Patient.create(patient_params)

    redirect_to @patient
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)

    redirect_to @patient
  end

  def destroy
    @patient=  Patient.find(params[:id])
    @patient.destroy

    redirect_to patients_path
  end

  # def show_diagnosis
  #   @diagnosis. Diagnosis.find(params[:diagnosis_id])
  #
  # end

  private
  def patient_params
  params.require(:patient).permit(:name, :mrn, :age, :sex, :insurance, :smoker, :surgery)
  end

  def dx_params
    params.require(:diagnosis).permit(:diagnosis_name, :icd_code)
  end

end