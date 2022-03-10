contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {email: "", address: "", phone: ""}, "Sally Johnson" => {email: "", address: "", phone: ""}}

counter = 0

contacts.each_key do |person|
  contacts[person].each do |key, value|
    contacts[person][key] = contact_data[counter].shift
  end
  counter += 1
end

puts contacts["Joe Smith"]
puts contacts["Sally Johnson"]



