Open up an Administrator PowerShell window and let’s make a directory and cd into it and initials git.
mkdir ~\dotfiles
cd ~\dotfiles\
git init
Your PowerShell Profile is stored in the path below.
~\Documents\PowerShell
Let’s move this file to our new dotfiles folder using the following command.
mv ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 ~\dotfiles\Microsoft.PowerShell_profile.ps1
Now that we have moved the profile, PowerShell can’t see it. Because we moved it out of the known path where Powershell looks for it. We are going to symlink this from the dotfiles to the location where PowerShell looks for it.
Create a file in your dotfiles folder and name it like symlink.ps1, open it up in VSCode and Paste in the following code.
New-Item -Path ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 -ItemType SymbolicLink -Value (Get-Item ".\Microsoft.PowerShell_profile.ps1").FullName
This line above will create a new item with the type of a symbolic link, every neat if you ask me. Now run the symlink.ps1 file like so.
.\symlink.ps1
And reload the profile using.
. $Profile
If everything went correctly, nothing should change.
Alright, the last step is to create a dotfiles repo on GitHub or any other repository hosting platform like Gitlab or Bitbucket. Commit your changes and push it up!
That’s it! Now you have your PowerShell Profile in a git repository so it’s saved up in the cloud.
