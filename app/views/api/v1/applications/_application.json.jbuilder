json.partial! 'address', address: application.address

json.(application,
  :position,
  :letter,
  :created_at
)

json.partial! 'applicant', applicant: application.applicant
