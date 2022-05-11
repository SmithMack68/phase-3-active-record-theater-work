puts "Seeding..."

macbeth = Role.create(character_name: "MacBeth")
henry_v = Role.create(character_name: "Henry V")
lady_constance = Role.create(character_name: "Lady Constance")

bob = Audition.create(role_id: macbeth.id, actor: "Bob", location: "Chicago", phone: "(918)645-3276", hired: false)
marco = Audition.create(role_id: macbeth.id, actor: "Marco", location: "New York", phone: "(212)989-3337", hired: false)
# cece = A

puts bob.role.character_name
puts "Hired? #{bob.hired}"
bob.call_back
puts "Hired? #{bob.hired}"

# puts macbeth.auditions.pluck(:actor)
# puts macbeth.audtions.map(&:actor) another trick

puts macbeth.actors
puts macbeth.locations
puts "Lead:"
puts macbeth.lead.actor