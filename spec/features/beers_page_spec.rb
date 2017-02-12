require 'rails_helper'

include Helpers


describe "Beer" do

  before :each do
    FactoryGirl.create :brewery, name:"testbrewery"
  end


  it "is created if name is valid" do
    visit new_beer_path
    fill_in('beer_name', with:'PerusBisse')
    select('Weizen', from:'beer[style]')
    click_button "Create Beer"
    expect(Beer.count).to eq(1)
  end

  it "is not created if name is invalid" do
    visit new_beer_path
    fill_in('beer_name', with:'')
    select('Weizen', from:'beer[style]')
    click_button "Create Beer"
    expect(Beer.count).to eq(0)
  end
end