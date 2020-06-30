# Configuring Powershell

Powershell can be configured through a Powershell profile. To test if you have a profile already run this command in Powershell
        
    Test-Path $Profile
        
If that command returns false, run this command to generate a profile
    
    New-Item –Path $Profile –Type File –Force
    
In either case, this file is where you can add custom configuration options to Powershell. This profile is run every time Powershell starts.

Using Oh-My-Posh allows you to set custom themes for Powershell to use. Setting the theme is done in your Powershell profile. For details on creating/adding Oh-My-Posh themes,
see the OhMyPoshThemes directory.
