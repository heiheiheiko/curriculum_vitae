json.(chronicle_item_skill,
  :experience
)
json.skill do
  json.partial! 'information', information: chronicle_item_skill.skill
end
