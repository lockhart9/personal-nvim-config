" Enable Mouse
set mouse=a

if exists("g:neovide")
    " Set Editor Font
        " Use GuiFont! to ignore font errors
    set guifont=Hack\ Nerd\ Font\ Mono:h10"

    let g:neovide_transparency = 0.9
    let g:transparency = 0.8
    " let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))

    " Right Click Context Menu (Copy-Cut-Paste)
    nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
    inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
    xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
    snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
end
