down_subj = message.subj.downcase

if message.from.email == 'notifications@honeybadger.io'
  message.remove_label :inbox
  message.add_label :blbadger
end

if message.from.email == 'notifications@pivotaltracker.com'
  message.remove_label :inbox
  message.add_label :blpivotal
end

if message.from.email == 'notifications@github.com'
  message.add_label :github
end

if down_subj.start_with? '[slack] notifications'
  message.remove_label :inbox
  message.add_label :blslack
end
