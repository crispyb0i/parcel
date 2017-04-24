
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
describe('parcel cost of shipping', {:type => :feature}) do
  it('processes the user entry and returns the cost of shipping for their parcel') do
    visit('/')
    fill_in('width', :with => 2)
    fill_in('length', :with => 3)
    fill_in('height', :with => 4)
    fill_in('weight', :with => 10)
    choose('Same day')
    click_button('Send')
    expect(page).to have_content($30)
  end
end
