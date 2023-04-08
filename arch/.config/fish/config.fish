set fish_greeting
if status is-interactive
    eval "$(starship init fish)"
    eval "$(jump shell fish)"

    # Show fortune message
    if [ (math (random)'%10') -eq 0 ]
        fortune computers definitions disclaimer fortunes linux rules-of-acquisition wisdom work zippy paradoxum | cowsay -f $(ls /usr/share/cows/ | shuf -n1)
    end

    alias r "ranger"
    alias wifi "nmtui"
    alias emsdk_setup ". ~/Programs/emsdk/emsdk_env.fish"
    alias ppk "sudo nrfconnect --no-sandbox"
    alias saleae "sudo saleae-logic2 --no-sandbox"
    alias cpptags "ctags -R --c++-kinds=+p --fields=+iaS --extras=+q ."
end
