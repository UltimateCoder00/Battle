feature 'View hit points' do

  scenario 'Player 1 can view player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Steve: 60/60 HP'
  end

end
