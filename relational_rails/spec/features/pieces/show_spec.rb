require 'rails_helper'

RSpec.describe 'the childs show page' do
  it 'shows a specific child and their atributes' do
    legoset1 = LegoSet.create!(name: 'Tahu', min_age: 7, retired: true)
    piece1 = Piece.create!(name: 'Body', piece_number: 1, broken: false, lego_set_id: legoset1.id)
    piece2 = Piece.create!(name: 'Left Arm', piece_number: 5, broken: false, lego_set_id: legoset1.id)

    visit "/pieces/#{piece1.id}"

    expect(page).to have_content('Body')
    expect(page).to have_content('1')
    expect(page).to have_content('false')
    expect(page).to have_content("#{legoset1.id}")
  end
end