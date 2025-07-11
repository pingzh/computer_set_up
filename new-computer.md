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
- Alfred
    - Update the shortcut
    - download the preference
- Vscode
    - https://github.com/pingzh/VisualStudioCodeSettings 
- `Iterm2s`
    - Install brew: https://brew.sh/
    - `Making iTerm 2 work with normal Mac OSX keyboard shortcuts`
        - https://medium.com/macoclock/5-must-have-key-mappings-on-iterm2-to-be-more-productive-21c4daf56348
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
- [Snip](https://flameshot.org/) for screenshot
- Spectacle https://github.com/eczarny/spectacle
    - Use `cmd+shift+option /` for full screen
