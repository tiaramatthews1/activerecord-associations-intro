require_relative '../spec_helper'

describe 'Artist Associations' do
  before do
    @prince = Artist.create(name: "Prince")
  end

  xit 'can build a song' do
    song = @prince.songs.build(name: "A Song By Prince")
    song.save

    expect(@prince.songs).to include(song)
  end

  xit 'can create a song' do
    song = @prince.songs.create(name: "A Different Song By Prince")

    expect(@prince.songs).to include(song)
  end

  xit 'knows about songs that are affiliated with it' do
    song = Song.create(name: "Bestest Song in the Worldz", artist: @prince)

    expect(@prince.songs).to include(song)
  end

  xit 'can add many songs at the same time' do
    song_1 = Song.create(:name => "A Song By Prince")
    song_2 = Song.create(:name => "A Song By Prince 2")
    @prince.songs << [song_1, song_2]

    expect(Artist.find_by(name: "Prince").songs.count).to eq(2)
  end

  xit 'knows about its genres' do
    song = Song.create(name: "Super Hip Music")
    genre = Genre.create(name: "Soul")
    song.genre = genre
    song.save
    @prince.songs << song

    expect(@prince.genres).to include(genre)
  end

end
