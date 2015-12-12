FactoryGirl.define do
  factory :applicant do
    first_name 'Emmett'
    last_name 'Brown'
    slogan 'Wissenschaftler, Visionär, Automechaniker'
    birthday '01-01-1885'
    family_status 'unbekannt'
    email 'dr_emmet_brown@delorean.com'
    mobile_phone '0123 456789'
    address :address
    links [:link]
    image [:image]
    chronicle_items [:chronicle_item]
  end
end
