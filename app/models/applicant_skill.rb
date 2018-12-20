class ApplicantSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :applicant
end
