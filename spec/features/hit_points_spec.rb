feature 'Viewing hit points' do
  scenario 'player 1 should see player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content "Pixel's hit points: 50HP"
  end

  scenario 'Player 1 wants to see their own HP' do
    sign_in_and_play
    expect(page).to have_content "Elaine's hit points: 50HP"
  end
end
