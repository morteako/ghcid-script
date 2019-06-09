

testFunc :: [a] -> a
testFunc = head . reverse . tail

s = 11