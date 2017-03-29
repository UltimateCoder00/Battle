feature 'Enter names' do

  scenario 'can view names after entering them on a form' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Steve'
  end
end
