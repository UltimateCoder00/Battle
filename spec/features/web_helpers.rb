def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Elaine'
  fill_in :player_2_name, with: 'Pixel'
  click_button 'Submit'
end
