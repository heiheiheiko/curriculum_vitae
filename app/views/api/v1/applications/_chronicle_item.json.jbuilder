json.(chronicle_item,
  :title,
  :description,
  :started_at,
  :ended_at,
  :position,
  :employment,
  :badge,
  :important,
  :type
)

json.chronicle_item_skills do
  json.partial! 'chronicle_item_skill', collection: chronicle_item.chronicle_item_skills, as: :chronicle_item_skill
end

json.partial! 'address', address: chronicle_item.address
