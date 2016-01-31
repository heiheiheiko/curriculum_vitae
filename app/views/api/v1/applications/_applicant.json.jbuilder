json.applicant do
  json.partial! 'address', address: applicant.address
  json.(applicant,
    :slogan,
    :birthday,
    :family_status,
    :email,
    :mobile_phone
  )

  json.links do
    json.partial! 'link', collection: applicant.images + applicant.websites  , as: :link
  end

  json.chronicle_items do
    json.partial! 'chronicle_item', collection: applicant.chronicle_items, as: :chronicle_item
  end
end
