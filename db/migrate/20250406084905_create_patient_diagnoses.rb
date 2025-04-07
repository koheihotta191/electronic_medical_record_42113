class CreatePatientDiagnoses < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_diagnoses do |t|
      t.integer :patient_id
      t.integer :diagnosis_id
    end
  end
end
