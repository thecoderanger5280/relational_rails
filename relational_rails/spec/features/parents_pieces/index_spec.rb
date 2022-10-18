require 'rails_helper'

RSpec.describe 'a specific parent show page that shows all the children' do
  it 'shows all the children for a specific parent' do
    legoset1 = LegoSet.create!(name: 'Tahu', min_age: 7, retired: true)
    piece1 = Piece.create!(name: 'Body', piece_number: 1, broken: false, lego_set_id: legoset1.id)
    piece2 = Piece.create!(name: 'Left Arm', piece_number: 5, broken: false, lego_set_id: legoset1.id)

    visit "/parents/#{legoset1.id}/pieces"

    expect(page).to have_content('Body')
    expect(page).to have_content("Left Arm")
  end
end