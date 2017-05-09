Import-Module MyModule

New-Alias -name st -value Start-ST -description "Launch sublime" -option ReadOnly

New-Alias -name st-c -value Start-STCurrentFolder -description "Launch sublime and open current folder" -option ReadOnly

New-Alias -name st-t -value Start-STTeleopti -description "Launch sublime and open Teleopti folder" -option ReadOnly
New-Alias -name st-styleh -value Start-STStyleGuideHalomaple -description "Launch sublime and open styleguide-halomaple folder" -option ReadOnly
New-Alias -name st-stylet -value Start-STStyleGuideTeleopti -description "Launch sublime and open styleguide-teleopti folder" -option ReadOnly
New-Alias -name kst -value Start-KillST -description "Kill sublime text" -option ReadOnly

New-Alias -name vs -value Start-VS -description "Launch visual studio" -option ReadOnly
New-Alias -name kvs -value Start-KillVS -description "Kill visual studio" -option ReadOnly
New-Alias -name rvs -value Start-RestartVS -description "Restart visual studio" -option ReadOnly
New-Alias -name kis -value Start-KillIISExpress -description "Kill IIS Express" -option ReadOnly
New-Alias -name cis -value Start-ClearIISExpressCache -description "Clear IIS Express Cache" -option ReadOnly
New-Alias -name sql -value Start-SSMS -description "Launch sql server management studio" -option ReadOnly
New-Alias -name hgw -value Start-HG -description "Launch TortoiseHg Workbench" -option ReadOnly
New-Alias -name pst -value Start-PS -description "Launch phpstorm" -option ReadOnly
New-Alias -name ss -value Start-Shadowsocks -description "Launch Shadowsocks" -option ReadOnly
New-Alias -name kss -value Start-KillShadowsocks -description "Kill Shadowsocks" -option ReadOnly

New-Alias -name t -value Enter-Teleopti -description "Teleopti Root" -option ReadOnly
New-Alias -name debug -value Enter-TeleoptiDebug -description "Teleopti Debug" -option ReadOnly
New-Alias -name wfm -value Enter-TeleoptiWFM -description "Teleopti WFM" -option ReadOnly
New-Alias -name styleh -value Enter-StyleGuideHalomaple -description "StyleGuide-Halomaple" -option ReadOnly
New-Alias -name stylet -value Enter-StyleGuideTeleopti -description "StyleGuide-Teleopti" -option ReadOnly
New-Alias -name psfolder -value Enter-PowerShellFolder -description "My PowerShell Folder" -option ReadOnly

New-Alias -name styleh-p -value Enter-StyleGuideHalomaplePath -description "Get StyleGuide-Halomaple Path" -option ReadOnly
New-Alias -name stylet-p -value Enter-StyleGuideTeleoptiPath -description "Get StyleGuide-Teleopti Path" -option ReadOnly

New-Alias -name vpn -value Enable-TeleoptiVpn -description "Enable Teleopti VPN" -option ReadOnly
New-Alias -name vpn/f -value Disable-TeleoptiVpn -description "Disable Teleopti VPN" -option ReadOnly

New-Alias -name toa -value  Start-TeleoptiToggleALL -description "Change toggle mode to ALL" -option ReadOnly
New-Alias -name tor -value  Start-TeleoptiToggleRC -description "Change toggle mode to RC" -option ReadOnly
New-Alias -name toc -value  Start-TeleoptiToggleCUSTOMER -description "Change toggle mode to CUSTOMER" -option ReadOnly
New-Alias -name toggle -value  Start-TeleoptiShowCurrentToggle -description "Current toggle mode: " -option ReadOnly
New-Alias -name restore -value  Start-TeleoptiRestoreToLocal -description "Teleopti Restore to Local" -option ReadOnly
New-Alias -name infratest -value  Start-TeleoptiInfratestConfig -description "Teleopti Teleopti InfratestConfig" -option ReadOnly
New-Alias -name fixconfig -value  Start-TeleoptiFixMyConfigFlow -description "Teleopti Teleopti FixMyConfigFlow" -option ReadOnly

New-Alias -name kanban -value New-Kanban -description "Kanban Board" -option ReadOnly
New-Alias -name buildsvr -value New-BuildServer -description "Teleopti Build Server" -option ReadOnly
New-Alias -name styleguide -value New-StyleGuide -description "StyleGuide" -option ReadOnly
New-Alias -name intranet -value New-Intranet -description "Intranet" -option ReadOnly
New-Alias -name rnd -value New-IntranetRND -description "IntranetRND" -option ReadOnly

New-Alias -name slack -value New-Slack -description "Slack" -option ReadOnly
New-Alias -name mail -value New-Mail -description "Mail" -option ReadOnly
New-Alias -name azure -value New-Azure -description "Azure" -option ReadOnly
New-Alias -name github -value New-Github -description "Github" -option ReadOnly

New-Alias -name dict -value New-YoudaoDict -description "Youdao dict" -option ReadOnly

New-Alias -name bing -value New-Bing -description "Bing" -option ReadOnly
New-Alias -name google -value New-Google -description "Google" -option ReadOnly
New-Alias -name stackoverflow -value New-StackOverflow -description "StackOverflow" -option ReadOnly
New-Alias -name msdn -value New-MSDN -description "MSDN" -option ReadOnly

New-Alias -name gate -value Start-OpenGate -description "Open gate" -option ReadOnly

New-Alias -name commands -value Start-ShowCommands -description "Show Commands" -option ReadOnly
New-Alias -name update -value Update-MyModule -description "Update Module" -option ReadOnly