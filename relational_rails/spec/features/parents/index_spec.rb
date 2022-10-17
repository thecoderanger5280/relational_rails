require 'rails_helper'

RSpec.describe 'the parents index page' do
  it 'displays the parents and their details' do
    legoset1 = LegoSet.create!(name: 'Tahu', min_age: 7, retired: true)

    visit '/parents'
    
    expect(page).to have_content('Tahu')
  end
end