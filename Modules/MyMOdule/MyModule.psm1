$Teleopti = "C:\teleopti\"
$TeleoptiDebug = "C:\teleopti\.debug-Setup"
$TeleoptiWFM = "C:\teleopti\Teleopti.Ccc.Web\Teleopti.Ccc.Web\WFM"
$StyleGuideHalomaple = "C:\styleguide-halomaple"
$StyleGuideTeleopti = "C:\styleguide-teleopti"
$PowerShellFolder = "C:\Users\jianfengz\Documents\WindowsPowerShell"
$TeleoptiVpn = "vpn"
$TeleoptiDoor = "$Env:Door"

$ST = "C:\Program Files\Sublime Text 3\sublime_text.exe"
$VS = "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"
$HG = "C:\Program Files\TortoiseHg\thgw.exe"
$VSProcessName = "devenv"
$STProcessName = "sublime_text"
$IISExpressProcessName = "iisexpress"
$PS = "C:\jianfeng\PhpStorm 10.0.3\bin\PhpStorm.exe"
$SSMS = "C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\Ssms.exe"
$Chrome = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
$Shadowsocks = "C:\jianfeng\Shadowsocks.exe"
$ShadowsocksProcessName = "Shadowsocks"

function Start-Up{
    Write-Host "
    Good to see you!
    
    Programs:
        st - 'Launch sublime'
        st-c - 'Launch sublime and open current folder'
        st-t - 'Launch sublime and open Teleopti folder'
        st-styleh - 'Launch sublime and open styleguide-halomaple folder'
        st-stylet - 'Launch sublime and open styleguide-teleopti folder'
        kst - 'Kill sublime text'
        vs - 'Launch visual studio'
        kvs - 'Kill visual studio'
        rvs - 'Restart visual studio'
        kis - 'Kill IIS Express'
        sql - 'Luanch sql server management studio'
        hgw - 'Launch TortoiseHg Workbench'
        pst - 'Launch phpstorm'
        ss - 'Shadowsocks'
        kss - 'Kill Shadowsocks'

    Folders: 
        t - 'Teleopti Root'
        debug - 'Teleopti Debug'
        wfm - 'Teleopti WFM'
        styleh - 'StyleGuide Halomaple'
        stylet - 'StyleGuide Teleopti'
        psfolder - 'My PowerShell Folder'

    Folders Paths:
        styleh-p - 'StyleGuide Halomaple Path'
        stylet-p - 'StyleGuide Teleopti Path'

    NetWork:
        vpn - 'Enable Teleopti VPN'
        vpn2 - 'Enable Teleopti VPN2'
        vpn/f - 'Disable Teleopti VPN'

    Batchs:
        restore - 'Teleopti Restore to Local'
        infratest - 'Teleopti Teleopti InfratestConfig'
        fixconfig - 'Teleopti Teleopti FixMyConfigFlow'
        gruntcmd - 'Grunt cmd'

    Website:
        dumpling - 'Dumpling Board'
        devbuild - 'Teleopti Devbuild'
        styleguide - 'StyleGuide'
        intranet - 'Intranet'
        rnd - 'IntranetRND'
        slack - 'Slack'
        mail - 'Mail'
        azure - 'Microsoft Azure Site'
        github - 'Github'

    Tools: 
        dict - 'Youdao dict'

    Search:
        baidu - 'Baidu'
        bing - 'Bing'
        google - 'Google'
        stackoverflow - 'StackOverflow'
        msdn - 'MSDN'

    Gate:
        gate - 'Open Gate'

    PS:
        commands - 'Show Commands'
        update - 'Update Module'
    "
}

Start-Up

function Start-ShowCommands{
    Start-Up
}

function Update-MyModule {
    Remove-Module MyModule
    Import-Module MyModule

    Write-Host "Module updated!"
}

function Start-ST {
    Start-Process $ST 
}

function Start-STCurrentFolder{
    Start-Process $ST $pwd
}

function Start-STTeleopti {
    Start-Process $ST $Teleopti
}

function Start-STStyleGuideHalomaple {
    Start-Process $ST $StyleGuideHalomaple
}

function Start-STStyleGuideTeleopti {
    Start-Process $ST $StyleGuideTeleopti
}

function Start-KillST{
    $process = Get-STProcess
    if($process.Id){
        Stop-Process $process.Id
    } else {
        Write-Host "Visual Studio has not started"
    }
}

function Get-STProcess{
    return Get-Process $STProcessName
}

function Start-VS {
    Start-Process $VS
}

function Start-KillVS {
    $process = Get-VSProcess
    if($process.Id){
        Stop-Process $process.Id
    } else {
        Write-Host "Visual Studio has not started"
    }
}

function Get-VSProcess{
    return Get-Process $VSProcessName
}

function Start-RestartVS {
    Start-KillVS
    Start-VS
}

function Get-IISExpressProcess{
    return Get-Process $IISExpressProcessName
}

function Start-KillIISExpress {
    $process = Get-IISExpressProcess
    if($process.Id){
        Stop-Process $process.Id
    }
}

function Start-HG {
    Start-Process $HG
}

function Start-PS {
    Start-Process $PS
}

function Start-SSMS {
    Start-Process $SSMS
}

function Start-Shadowsocks {
    Start-Process $Shadowsocks
}

function Start-KillShadowsocks {
    $process = Get-Process $ShadowsocksProcessName
    if($process.Id){
        Stop-Process $process.Id
    }
}

function Enter-Teleopti {
    Set-Location $Teleopti
}

function Enter-TeleoptiDebug {
    Set-Location $TeleoptiDebug
}

function Enter-TeleoptiWFM {
    Set-Location $TeleoptiWFM
}

function Enter-StyleGuideHalomaple {
    Set-Location $StyleGuideHalomaple
}

function Enter-StyleGuideTeleopti {
    Set-Location $StyleGuideTeleopti
}

function Enter-PowerShellFolder {
    Set-Location $PowerShellFolder
}

function Get-TeleoptiVpn {
    $interfaceAlias = Get-NetIPAddress | ForEach-Object { $_.InterfaceAlias }
    if ($interfaceAlias -contains $TeleoptiVpn) {
        return $TeleoptiVpn;
    }

    return;
}

function Disable-TeleoptiVpn {
    $current = Get-TeleoptiVpn
    if ($current -ne $null) {
        Write-Host "Disconnecting from $current..."
        rasdial $current /DISCONNECT
    }
}

function Enable-TeleoptiVpn {
    $vpn = Get-TeleoptiVpn
    
    if ($vpn -eq $null) {
        Write-Host "Attempting to connect to $TeleoptiVpn..."
        rasdial $TeleoptiVpn
    } else {
        Write-Host "Connected to $vpn."
    }
}

function Start-TeleoptiInfratestConfig {
    Write-Host "Starting Teleopti InfratestConfig..."
    & "$TeleoptiDebug\InfratestConfig.bat" -Wait
}

function Start-TeleoptiFixMyConfigFlow {
    Write-Host "Starting Teleopti FixMyConfigFlow..."
    & "$TeleoptiDebug\FixMyConfigFlow.bat" -Wait
}

function Start-TeleoptiRestoreToLocal {
    Enable-TeleoptiVpn
    Write-Host "Started Teleopti Restore To Local..."
    $p = Start-Process "$TeleoptiDebug\Restore to Local.bat"
}

function Start-GruntCommandWindow {
    Set-Location $TeleoptiWFM
    Write-Host "Started Grunt cmd..."
    Start-Process cmd "grunt --force"
}

function New-Dumpling {
    Enable-TeleoptiVpn
    $url = "http://challenger:8080/Kanban/#/board/0"
    & $Chrome $url
    Write-Host "Dumpling opened in Chrome."
}

function New-DevBuild {
    Enable-TeleoptiVpn
    $url = "http://buildsrv01/"
    & $Chrome $url
    Write-Host "Devbuild opened in Chrome."
}

function New-StyleGuide {
    $url = "http://teleopti.github.io/styleguide/styleguide/index.html"
    & $Chrome $url
    Write-Host "StyleGuide opened in Chrome."
}

function New-Intranet {
    $url = "https://intranet.teleopti.com/"
    & $Chrome $url
    Write-Host "Intranet opened in Chrome."
}

function New-IntranetRND {
    $url = "https://intranet.teleopti.com/teleopticcc/rnd~2"
    & $Chrome $url
    Write-Host "Intranet RND opened in Chrome."
}

function New-Mail {
    $url = "http://webmail.teleopti.com/"
    & $Chrome $url
    Write-Host "Mail opened in Chrome."
}

function New-Azure {
    $url = "https://portal.azure.com/"
    & $Chrome $url
    Write-Host "Microsoft Azure site opened in Chrome."
}

function New-Github {
    $url = "https://github.com/"
    & $Chrome $url
    Write-Host "Github opened in Chrome."
}

function New-Slack {
    $url = "https://teleopti.slack.com/messages/"
    & $Chrome $url
    Write-Host "Slack opened in Chrome."
}

function New-YoudaoDict {
    $url = "http://dict.youdao.com/"
    & $Chrome $url
    Write-Host "Youdao dict opened in Chrome."
}

function New-Baidu {
    $url = "https://www.baidu.com/"
    & $Chrome $url
    Write-Host "Baidu opened in Chrome."
}

function New-Bing {
    $url = "http://cn.bing.com/?intlF=/"
    & $Chrome $url
    Write-Host "Bing opened in Chrome."
}

function New-Google {
    $url = "https://www.google.com/"
    & $Chrome $url
    Write-Host "Google opened in Chrome."
}

function New-StackOverflow {
    $url = "http://stackoverflow.com/"
    & $Chrome $url
    Write-Host "StackOverflow opened in Chrome."
}

function New-MSDN {
    $url = "https://msdn.microsoft.com/en-us/"
    & $Chrome $url
    Write-Host "MSDN opened in Chrome."
}

function Start-OpenGate {
    & wget $TeleoptiDoor
    Write-Host "Gate is opened"
}

Export-ModuleMember -Function 'Start-*'
Export-ModuleMember -Function 'Stop-*'
Export-ModuleMember -Function 'Enter-*'
Export-ModuleMember -Function 'Enable-*'
Export-ModuleMember -Function 'Disable-*'
Export-ModuleMember -Function 'Update-*'
Export-ModuleMember -Function 'Get-TeleoptiVpn'
Export-ModuleMember -Function 'New-*'
Export-ModuleMember -Variable 'Teleopti*'