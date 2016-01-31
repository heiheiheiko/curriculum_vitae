json.partial! 'address', address: application.address

json.(application,
  :position,
  :paragraphs,
  :availability,
  :salary_expectations,
  :created_at,
)

json.job_advertisement do
  json.partial! 'link', link: application.job_advertisement
end

json.partial! 'applicant', applicant: application.applicant
