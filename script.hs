:! awk '!NF{$0="putStrLn mempty"}1' test.hs > noe.hs
:unset +t
:script ghcid-script-temp.hs
:! rm ghcid-script-temp.hs
