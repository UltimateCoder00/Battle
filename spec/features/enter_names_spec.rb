feature 'Enter names' do
  scenario 'Can fill in name in form and submit with name returned' do
    sign_in_and_play
    expect(page).to have_content 'Elaine vs. Pixel'
  end
end
