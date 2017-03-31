feature "Confirmation of player losing" do
  scenario 'Player 2 loses with player 1 attacks' do
    sign_in_and_play
    9.times do
      click_button "HIT!"
      click_button 'OK'
    end
    expect(page).to have_content "You have been defeated"

  end
end
