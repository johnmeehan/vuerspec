require 'rails_helper'

RSpec.feature "Widgets", type: :feature do
  scenario 'The Vue components appear' do
    visit '/'
    expect(page).to have_content 'Widgets'
    expect(page).to have_content "Hello Vue!"
  end


  scenario 'interacts with button' do
    visit '/'
    expect(page).to have_no_content "FancyMessage"
    click_button 'Button'
    expect(page).to have_content "FancyMessage"
  end
end
