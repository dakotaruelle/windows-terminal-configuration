# Configuring Powershell

Powershell can be configured through a Powershell profile. To test if you have a profile already run this command in Powershell
        
    Test-Path $Profile
        
If that command returns false, run this command to generate a profile
    
    New-Item -ItemType File -Path $PROFILE -Force
    
In either case, this file is where you can add custom configuration options to Powershell. This profile is run every time Powershell starts.

Using Oh-My-Posh allows you to use custom Powershell themes. Setting the theme is done in your Powershell profile. An example can be seen in MyProfile.ps1.

For details on creating/getting Oh-My-Posh themes, see the OhMyPoshThemes directory.
