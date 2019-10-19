require_relative '../spec_helper'

describe 'Artist' do
  before do
    @prince = Artist.create(name: "Prince")
  end

  xit 'has a name' do
    expect(Artist.find_by(name: "Prince")).to eq(@prince)
  end

end
