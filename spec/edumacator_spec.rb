# encoding: UTF-8

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Edumacator" do
  
  context 'double quotes' do
  
    it 'handles quotes in the middle' do
      expect(Edumacator::educate(%q{the "real" thing})).to eq(%q{the “real” thing})
    end
    
    it 'handles quotes at the end' do
      expect(Edumacator::educate(%q{the "one"})).to eq(%q{the “one”})
    end
    
    it 'handles quotes at the begining' do
      expect(Edumacator::educate(%q{"double" quote})).to eq(%q{“double” quote})
    end
    
    it 'handles quotes at both ends' do
      expect(Edumacator::educate(%q{"the whole enchilada"})).to eq(%q{“the whole enchilada”})
    end
    
  end
  
  context 'single quotes' do
  
    it 'handles quotes in the middle' do
      expect(Edumacator::educate(%q{the 'real' thing})).to eq(%q{the ‘real’ thing})
    end
    
    it 'handles quotes at the end' do
      expect(Edumacator::educate(%q{the 'one'})).to eq(%q{the ‘one’})
    end
    
    it 'handles quotes at the begining' do
      expect(Edumacator::educate(%q{'single' quote})).to eq(%q{‘single’ quote})
    end
    
    it 'handles quotes at both ends' do
      expect(Edumacator::educate(%q{'the whole enchilada'})).to eq(%q{‘the whole enchilada’})
    end
    
  end
  
  context 'apostrophes' do
    
    it %q{handles "'s"} do
      expect(Edumacator::educate(%q{Timmy's ball})).to eq(%q{Timmy’s ball})
    end
    
    it %q{handles "O'"} do
      expect(Edumacator::educate(%q{O'Brien})).to eq(%q{O’Brien})
    end
    
    # this is a very English-specific rule
    it 'handles an apostrophe at the end of a plural word' do
      expect(Edumacator::educate(%q{the boys' ball})).to eq(%q(the boys’ ball))
    end
  end
  
  context 'nesting' do
    
    it 'handles single quotes inside double quotes' do
      # yeah, quotes inside. blah blah blah.
      expect(Edumacator::educate(%q{"So I told him 'get lost!'", he said.})).to eq(%q{“So I told him ‘get lost!’”, he said.})
    end
    
    # this seems to be a British-style thing
    it 'handles double quotes inside single quotes' do
      expect(Edumacator::educate(%q{'And I said to him "not a chance!"', was the reply.})).to eq(%q{‘And I said to him “not a chance!”’, was the reply.})
    end
    
    it 'handles apostrophes inside double quotes' do
      expect(Edumacator::educate(%q{"That's mine," she said.})).to eq(%q{“That’s mine,” she said.})
    end
  end
  
end
