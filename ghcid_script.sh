#!/bin/bash 
function ghcids_cript {
    case "$3" in

        "-l" | "--lines")
        eval "ghcid $1 --reload=$2 --test=':cmd readFile \"$2\" >>= pure . unlines . fmap (\x -> if null x then \"putStrLn mempty\" else x) . lines' --setup=\":unset +t\""
        ;;

        "-c" | "--clear")
        eval "ghcid $1 --reload=$2 --test=':script $2' --setup=\":unset +t\""
        ;;

        * )
        eval "ghcid $1 --reload='$2' --test=':cmd readFile \"$2\" >>= pure . unlines . init . concatMap (\x -> [\"putStrLn (\" ++ show x ++ \")\", \"putStr \\\"===>    \\\"\", x,\"putStrLn mempty\"]) . filter (not . null) . lines'  --setup=\":unset +t\""
        ;;
    esac
    
}  
ghcids_cript "$@"

