require_relative '../spec_helper'

describe 'Genre' do
  before do
    @genre = Genre.create(name: "Hip Hop")
  end

  xit 'has a name' do
    expect(Genre.where(name: "Hip Hop").first).to eq(@genre)
  end

end
