if !exists("*s:SmartGUITabsToggleFullScreen")
  function s:SmartGUITabsToggleFullScreen()
    if has("gui_running") && has("gui_macvim")
      let curFullScreen = &fullscreen
      if curFullScreen
        let s:ensureTabs="yes"
        set nofullscreen
        set guioptions +=e
      else
        let s:ensureTabs="no"
        set fullscreen
        set guioptions -=e
      endif
    endif
  endfunction
endif

if !exists(":SmartGUITabsToggleFullScreen")
  command SmartGUITabsToggleFullScreen :call s:SmartGUITabsToggleFullScreen()
endif
