# ghcid-script

A way to combine the powers of the automatic and fast reloading from ghcid, and the full interactive powers from GHCi.


## Usage
Run ghcid on testDefinitions.hs and run all ghci-commands in testscript.hs.

`ghcid testDefinitions.hs --reload="testscript.hs" --test=":script testscript.hs"`

Same as above, but the ghcid.script changes every blank line to 'putStrLn mempty' to make it easy to space the output.
It also turns off +t

`ghcid testDefinitions.hs --reload="testscript.hs" --test=":script ghcid.script"`

## Todo
Make it easier to change the script inside ghcid.script.

Maybe make it an arg in a bash script?