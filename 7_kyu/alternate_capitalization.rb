# Given a string, capitalize the letters that occupy even indexes and odd 
# indexes separately, and return as shown below. Index 0 will be considered 
# even.

# For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases 
# for more examples.

# The input will be a lowercase string with no spaces.

def capitalize(string)
  result1 = []
  result2 = []

  string.chars.each_with_index do |char, idx|
    if idx.even?
      result1 << char.upcase
      result2 << char
    else
      result1 << char
      result2 << char.upcase
    end
  end
  [result1.join, result2.join]
end

# Coder solution

def capitalize(string)
  result = string.chars.map.with_index {|char, idx| idx.even? ? char.upcase : char }.join
  [result, result.swapcase]
end

p capitalize('abcdef') == ['AbCdEf', 'aBcDeF']
p capitalize("codewars") == ['CoDeWaRs', 'cOdEwArS']
p capitalize("abracadabra") == ['AbRaCaDaBrA', 'aBrAcAdAbRa']
p capitalize("codewarriors") == ['CoDeWaRrIoRs', 'cOdEwArRiOrS']
p capitalize("indexinglessons") == ['InDeXiNgLeSsOnS', 'iNdExInGlEsSoNs']
p capitalize("codingisafunactivity") == ['CoDiNgIsAfUnAcTiViTy', 'cOdInGiSaFuNaCtIvItY']
