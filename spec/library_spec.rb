require './lib/library'
require './lib/author'

RSpec.describe do
   before(:each) do
     @dpl = Library.new("Denver Public Library")
   end

  it 'is an instance of class' do
    expect(@dpl).to be_an_instance_of(Library)

  end

  it 'has readable attributes'do
   expect(@dpl.name).to eq('Denver Public Library')
   expect(@dpl.books).to eq([])
   expect(@dpl.authors).to eq([])
  end

  it 'can add authors to library' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @dpl.add_author
    require "pry";binding.pry
  end
end
