syn match texUrl "\\url{[^}]\{-}}"hs=s+5,he=e-1 containedin=texStatement contains=@NoSpell
syn match texEmail "\\email{[^}]\{-}}"hs=s+7,he=e-1 containedin=texStatement contains=@NoSpell
syn region texAbstract1			matchgroup=texSection start='\\abstract\>\s*{' end='}'													contains=@texFoldGroup,@Spell
syn region texTeaser			matchgroup=texSection start='\\teaser\>\s*{' end='}'													contains=@texFoldGroup,@Spell
