require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe('the numbers to words path', {:type => :feature}) do

  it('processes the user number and returns a word equivalent') do
    visit('/')
    fill_in('number', :with => '419')
    click_button('Send')
    save_and_open_page
    expect(page).to have_content('fourhundrednineteen')

  end
end
