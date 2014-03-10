MacVimSmartGuiTabs
==================

Shows GUI tabs only when not in fullscreen mode.

**Installation**

- Use your standard bundle manager

        " Using Vundle
        Bundle 'jordwalke/MacVimSmartGUITabs'

        " Or if using NeoBundle(recommended)
        NeoBundle 'jordwalke/MacVimSmartGUITabs'

Enable GUI tabs in MacVim

        set guioptions+=e

Map your desired keyboard combination to trigger fullscreen

        map <D-Cr> :SmartGUITabsToggleFullScreen<CR>
        imap <D-Cr> <Esc>:SmartGUITabsToggleFullScreen<CR>


Make sure your `.gvimrc` doesn't also try to control full screen using the same key combination.
In `.gvimrc` map the full screen keyboard shortcut to something totally different.


        macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-c-f>

