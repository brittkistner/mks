#Convert to the send method
# 5 * 5
# "omg".upcase
# ['a', 'b', 'c'].at(1)
# ['a', 'b', 'c'].insert(2, 'o', 'h', 'n', 'o')
# {}.size
# {character: "Mario"}.has_key?(:character)

5.send(:*, 32)
"omg".send(:upcase)
['a','b','c'].send(:at,1)
['a','b','c'].send(:insert,2,'o','h','n','o')
{}.send(:size)
{character: "Mario"}.send(:has_key?, :character)


#Convert out of the send method
# 6.send(:-, 32)
# {html: true, json: false}.send(:keys)
# "MakerSquare".send(:*, 6)
# "MakerSquare".send(:split, 'a')
# ['alpha', 'beta'].send(:[], 3) -> Will return, "nil" since no element exists at position 3 (only positions 0 and 1)

6 - 32
{html: true, json: false}.keys
"MakerSquare" * 6
"MakerSquare".split('a')
['alpha', 'beta'].[](3)


