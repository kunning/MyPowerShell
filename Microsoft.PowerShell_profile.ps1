Import-Module MyModule

New-Alias -name st -value Start-ST -description "Launch sublime" -option ReadOnly
New-Alias -name vs -value Start-VS -description "Launch visual studio" -option ReadOnly
New-Alias -name kvs -value Start-KillVS -description "Kill visual studio" -option ReadOnly
New-Alias -name rvs -value Start-RestartVS -description "Restart visual studio" -option ReadOnly
New-Alias -name kis -value Start-KillIISExpress -description "Kill IIS Express" -option ReadOnly
New-Alias -name sql -value Start-SSMS -description "Launch sql server management studio" -option ReadOnly
New-Alias -name hgw -value Start-HG -description "Launch TortoiseHg Workbench" -option ReadOnly
New-Alias -name pst -value Start-PS -description "Launch phpstorm" -option ReadOnly

New-Alias -name t -value Enter-Teleopti -description "Teleopti Root" -option ReadOnly

New-Alias -name debug -value Enter-TeleoptiDebug -description "Teleopti Debug" -option ReadOnly
New-Alias -name wfm -value Enter-TeleoptiWFM -description "Teleopti WFM" -option ReadOnly

New-Alias -name vpn -value Enable-TeleoptiVpn -description "Enable Teleopti VPN" -option ReadOnly
New-Alias -name vpn/f -value Disable-TeleoptiVpn -description "Disable Teleopti VPN" -option ReadOnly

New-Alias -name restore -value  Start-TeleoptiRestoreToLocal -description "Teleopti Restore to Local" -option ReadOnly
New-Alias -name infratest -value  Start-TeleoptiInfratestConfig -description "Teleopti Teleopti InfratestConfig" -option ReadOnly
New-Alias -name fixconfig -value  Start-TeleoptiFixMyConfigFlow -description "Teleopti Teleopti FixMyConfigFlow" -option ReadOnly

New-Alias -name gruntcmd -value  Start-GruntCommandWindow -description "Grunt cmd" -option ReadOnly

New-Alias -name dumpling -value New-Dumpling -description "Dumpling Board" -option ReadOnly
New-Alias -name devbuild -value New-DevBuild -description "Teleopti Devbuild" -option ReadOnly
New-Alias -name styleguide -value New-StyleGuide -description "StyleGuide" -option ReadOnly
New-Alias -name intranet -value New-Intranet -description "Intranet" -option ReadOnly
New-Alias -name rnd -value New-IntranetRND -description "IntranetRND" -option ReadOnly

New-Alias -name slack -value New-Slack -description "Slack" -option ReadOnly
New-Alias -name mail -value New-Mail -description "Mail" -option ReadOnly
New-Alias -name azure -value New-Azure -description "Azure" -option ReadOnly

New-Alias -name dict -value New-YoudaoDict -description "Youdao dict" -option ReadOnly

New-Alias -name baidu -value New-Baidu -description "Baidu" -option ReadOnly
New-Alias -name bing -value New-Bing -description "Bing" -option ReadOnly
New-Alias -name google -value New-Google -description "Google" -option ReadOnly
New-Alias -name stackoverflow -value New-StackOverflow -description "StackOverflow" -option ReadOnly
New-Alias -name msdn -value New-MSDN -description "MSDN" -option ReadOnly

New-Alias -name gate -value Start-OpenGate -description "Open gate" -option ReadOnly

New-Alias -name commands -value Start-ShowCommands -description "Show commands" -option ReadOnly

function Update-MyModule {
    Remove-Module MyModule
    Import-Module MyModule
}

Write-Host "Module updated."