# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each do |name|
    badges.push(badge_maker(name))
  end
  return badges
end

def assign_rooms(attendees)
  assign_list = []
  attendees.each_with_index {|name, room|
    room = room+1
  assign_list.push("Hello, #{name}! You'll be assigned to room #{room}!")
}
return assign_list
end

def printer(attendees)
  batch_badge_creator(attendees).each {|element| puts element}
  assign_rooms(attendees).each {|element| puts element}
end
