# Using a Custom Oh My Posh Theme

Using these themes in PowerShell Core requires Oh My Posh and Powerline:  
https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup

- Choose a theme (e.g. CondensedGit) and navigate into that folder
- Download the `.psm1` file and add it to your PoshThemes folder
  - By default this should be here: C:\\Users\\{userName}\\Documents\\PowerShell\\PoshThemes
  - Change your PowerShell Core profile to use the new theme
    - E.g. `Set-Theme CondensedGit`
- If there is a corresponding color scheme file, open it and copy the contents
  - Then, add the color scheme to your color schemes array inside your windows terminal `settings.json` (You can get there by opening Windows Terminal and pressing `ctrl + ,`)
  - Finally, change your Windows Terminal PowerShell Core profile to use the new color scheme 
