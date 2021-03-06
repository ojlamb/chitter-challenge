feature 'User signs out' do
  scenario 'while being signed in' do
    user = create(:user)
    visit '/sessions/new'
    sign_in(user)
    click_button 'Sign Out'
    expect(page).to have_content('Good bye!')
    expect(page).not_to have_content('Welcome, #{user.handle}')
  end
end
