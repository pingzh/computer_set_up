## System settings:

- Enable Three finger Drag
- Change `Caps lock` to Ctrl
- Add Input methods
- Change Keyboard input speed https://apple.stackexchange.com/a/235826

```jsx
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)
# then restart the mac
```

## Apps

- Dropbox to sync config
    - `Set the file to be available offline and wait for the download to finish.`
- Alfred
    - User Dropbox to sync
    - https://www.alfredapp.com/help/advanced/sync/
    - Update the shortcut
- `1Password7`
    - You downloaded 1Password from the Mac App Store. That version does not support licenses. You would want to Download and install the version from our site. https://app-updates.agilebits.com/download/OPM7
    - Use `iCloud` sync
    - 
- Vscode
    - Use Dropbox to sync https://tommcfarlin.com/sharing-visual-studio-code-settings/
- `Iterm2s`
    - https://brew.sh/
    - `Making iTerm 2 work with normal Mac OSX keyboard shortcuts`
        - Profile —> Keys —> Key Mapping
    
    ```jsx
    Keyboard Shortcut: ⌥←
    Action: Send Escape Sequence
    Esc+ b
    
    Keyboard Shortcut: ⌥→
    Action: Send Escape Sequence
    Esc+ f
    
    Keyboard Shortcut: ⌘←
    Action: Send Hex Code
    0x01
    
    Keyboard Shortcut: ⌘→
    Action: Send Hex Code
    0x05
    
    Keyboard Shortcut: ⌘←Delete
    Action: Send Hex Code
    0x15
    
    Keyboard Shortcut:⌥←Delete
    Action: Send Hex Code
    0x1B 0x08
    ```
    
    - https://github.com/pingzh/computer_set_up/blob/master/zsh-setup.md
- Snip for screenshot
- Spectacle https://github.com/eczarny/spectacle
    - Use `cmd+shift+option /` for full screen
