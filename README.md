# ghcid-script

A way to combine the powers of the automatic and fast reloading from ghcid, and the full interactive powers from GHCi.


## Usage

Put the function from the ghcid_script.sh in your bash_aliases (or similar) and use it like this:


### Test-mode (default) : 
Prints out the ghci-command before the result. Also inserts one blank between

`ghcid_script testDefinitions.hs testscript.hs`

example : 
```
"hei"
===>    "hei"

:t "hei"
===>    "hei" :: [Char]

:k []
===>    [] :: * -> *

123 + 23
===>    146

:t testFunc
===>    testFunc :: [a] -> a

xs = [1..5]
===>
testFunc xs
===>    5

testFunc [1..10]
===>    10

...done
```

Clear-mode : Run ghcid on testDefinitions.hs and run all ghci-commands in testscript.hs.

`ghcid_script testDefinitions.hs testscript.hs -c`

```
"hei"
"hei" :: [Char]
[] :: * -> *
146
testFunc :: [a] -> a
5
10
```

Line-mode : Same as above, but the ghcid.script changes every blank line to 'putStrLn mempty' to make it easy to space the output.

`ghcid_script testDefinitions.hs testscript.hs -l`

```
"hei"
"hei" :: [Char]

[] :: * -> *

146


testFunc :: [a] -> a


5
10
```


All modes also turns off +t with the `--setup=":unset +t" argument

# Todo

Features : 
    
    make a syntax for ghci-commands where the result should not be shown, but instead the command itself. (xs   = 10)

Fixes :

    Fix newline after definitions in test-mode. (xs = 10)


