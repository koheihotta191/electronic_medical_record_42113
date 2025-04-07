class User < ApplicationRecord
  has_secure_password

  enum job_type: { doctor: 0, nurse: 1, pharmacist: 2, clerk: 3, caregiver: 4 }
  enum role: { sub_user: 0, master_user: 1 }

  validates :staff_id, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end