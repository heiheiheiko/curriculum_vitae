json.address do
  if address
    json.(address,
      :person,
      :name,
      :street,
      :zip,
      :city
    )

    if address.website
      json.website do
        json.partial! 'link', link: address.website
      end
    end

  else
    json.null!
  end
end
