feature 'Attack player' do

  scenario 'Attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('John attacked Steve')
  end

  scenario 'Displays reduced hit points' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Steve: 50/60 HP')
  end
end
