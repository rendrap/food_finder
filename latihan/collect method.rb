D:\Ruby\sites\food_finder>irb
>> "fg jfjf kk  ll".split(' ').collect
=> #<Enumerator: ["fg", "jfjf", "kk", "ll"]:collect>
>> Au = "fg jfjf kk  ll".split(' ').collect
=> #<Enumerator: ["fg", "jfjf", "kk", "ll"]:collect>
>> Au = "fg jfjf kk  ll".split(' ')
(irb):3: warning: already initialized constant Au
(irb):2: warning: previous definition of Au was here
=> ["fg", "jfjf", "kk", "ll"]
>> Au
=> ["fg", "jfjf", "kk", "ll"]
>> Au.collect {|w| w.capitalize + "!"}
=> ["Fg!", "Jfjf!", "Kk!", "Ll!"]
>> Au.collect {|w| w.capitalize + "!"}.join(" ")
=> "Fg! Jfjf! Kk! Ll!"
>>