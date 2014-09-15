PhoneType.all.each do |type|
  Phone.create number: rand.to_s[2..11], phone_type: type
  Phone.create number: rand.to_s[2..11], phone_type: type
end
