# Using a Custom Oh My Posh Theme

Using these themes in PowerShell Core requires Oh My Posh and Powerline:  
https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup

- Choose a theme (e.g. CondensedGit) and navigate into that folder
- Download the `.psm1` file and add it to your PoshThemes folder
  - By default this should be here: C:\\Users\\{userName}\\Documents\\PowerShell\\PoshThemes
- If there is a corresponding color scheme file, open it and copy the contents
  - Then, add the color scheme to your color schemes array inside your windows terminal `settings.json`