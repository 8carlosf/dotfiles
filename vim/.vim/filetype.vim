
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
	au! BufNewFile,BufRead *.mod setf ampl " GNU MathProg PL
augroup END

