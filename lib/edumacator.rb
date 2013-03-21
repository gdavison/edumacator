# encoding: UTF-8

class Edumacator
  
  def self.educate(string)
    result = string.gsub %r{(\S)"},    %q{\1”} # closing double quote
    result = result.gsub %r{"},        %q{“}   # opening double quote
                                        
    result = result.gsub %r{(\S)'},    %q{\1’} # closing single quote
    result = result.gsub %r{'},        %q{‘}   # opening single quote
      
    result = result.gsub %r{\.\.\.},   %q{…}   # ellipsis
    result = result.gsub %r{\. \. \.}, %q{…}   # ellipsis with spaces
    
    result = result.gsub %r{--},       %q{—}   # em dash
  end
end