require 'rails_helper'

RSpec.describe Beer, type: :model do
  it "has name and style set correctly " do
    beer = Beer.new name:"VitosBisse", style:"IPA"

    expect(beer).to be_valid
  end

  it "wont allow to create beer without name" do
    beer = Beer.new style:"IPA"

    expect(beer).not_to be_valid
  end

  it "wont allow to create beer without style" do
    beer = Beer.new name:"VitosBisse"

    expect(beer).not_to be_valid
  end
end
