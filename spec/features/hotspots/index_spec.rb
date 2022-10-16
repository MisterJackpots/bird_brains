require 'rails_helper'

RSpec.describe 'the hotspots index page' do
  before :each do
    @hotspot_1 = Hotspot.create!(name: "Madera Canyon", county: "Santa Cruz",
                               rank: 1, accessible: false)
    @hotspot_2 = Hotspot.create!(name: "Sweetwater Wetlands", county: "Pima",
                               rank: 2, accessible: true)                           
  end

  it 'displays the hotspots page' do
    visit "/hotspots"
    
    expect(page).to have_content(@hotspot_1.name)
    expect(page).to have_content(@hotspot_2.name)
  end
  
end