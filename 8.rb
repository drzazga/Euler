number = File.open("digits").inject("") { |number, line| number += line.chomp! }
p 1.upto(number.length-5).inject([]) { |tab, i| tab << number[i..i+4].split("").inject(1) { |ilocz, elem| ilocz *= elem.to_i } }.max

