require 'rails_helper'

RSpec.describe 'the parents show page' do
  it 'displays info for just one parent' do
    legoset1 = LegoSet.create!(name: 'Tahu', min_age: 7, retired: true)

    visit "/parents/#{legoset1.id}"

    expect(page).to have_content('Tahu')
    expect(page).to have_content('7')
    expect(page).to have_content('true')
  end
end