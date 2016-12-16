" don't spellcheck whatever is in \url or \email
syn match texUrl "\\url{[^}]\{-}}"hs=s+5,he=e-1 containedin=texStatement contains=@NoSpell
syn match texEmail "\\email{[^}]\{-}}"hs=s+7,he=e-1 containedin=texStatement contains=@NoSpell
" spellcheck teaser and abstract
syn region texAbstract1			matchgroup=texSection start='\\abstract\>\s*{' end='}'													contains=@texFoldGroup,@Spell
syn region texTeaser			matchgroup=texSection start='\\teaser\>\s*{' end='}'													contains=@texFoldGroup,@Spell
" spellcheck firstsection
syn region texFirstSectionZone		matchgroup=texSection start='\\firstsection\>'		 end='\ze\s*\\\%(firstsection\>\|section\>\|chapter\>\|part\>\|end\s*{\s*document\s*}\)'					contains=@texFoldGroup,@texSectionGroup,@Spell
