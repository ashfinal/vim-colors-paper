let g:airline#themes#paper#palette = {}

function! airline#themes#paper#refresh()
    let s:background  = get(g:, 'airline_paper_bg', &background)

    let g:airline#themes#paper#palette.accents = {
                \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
                \ }

    " Normal Mode:
    let s:N1 = [ '#eeeeee' , '#005f87' , 255 , 24 ] " Mode
    let s:N2 = [ '#c6c6c6' , '#0087af' , 251 , 31 ] " Info
    if s:background == 'light'
        let s:N3 = [ '#9e9e9e' , '#dadada' , 255 , 247 ] " StatusLine
    else
        let s:N3 = [ '#eeeeee' , '#444444' , 255 , 238 ]
    endif


    let g:airline#themes#paper#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)


    " Insert Mode:
    let s:I1 = [ '#eeeeee' , '#5f8700' , 255 , 64 ]
    let s:I2 = [ '#c6c6c6' , '#8a8a8a' , 251 , 245 ]
    if s:background == 'light'
        let s:I3 = [ '#9e9e9e' , '#dadada' , 255 , 247 ]
    else
        let s:I3 = [ '#eeeeee' , '#444444' , 255 , 238 ]
    endif

    let g:airline#themes#paper#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)


    " Replace Mode:
    let g:airline#themes#paper#palette.replace = copy(g:airline#themes#paper#palette.insert)
    let g:airline#themes#paper#palette.replace.airline_a = [ '#eeeeee' , '#ff5f00' , 255 , 202, '' ]


    " Visual Mode:
    let s:V1 = [ '#eeeeee', '#005f87', 255,  24 ]
    let s:V2 = [ '',        '#8a8a8a', '',  245  ]
    if s:background == 'light'
        let s:V3 = [ '#9e9e9e', '#dadada', 255, 247  ]
    else
        let s:V3 = [ '#eeeeee' , '#444444' , 255 , 238  ]
    endif

    let g:airline#themes#paper#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

    " Inactive:
    if s:background == 'light'
        let s:IA = [ '#bcbcbc' , '#9e9e9e' , 250 , 247 , '' ]
    else
        let s:IA = [ '#444444' , '#585858' , 238 , 240 , '' ]
    endif
    let g:airline#themes#paper#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
endfunction


call airline#themes#paper#refresh()
