write-host "$down"
$global:a=(Get-ItemProperty -Path 'hklm:\SOFTWARE\Wow6432Node\Valve\Steam');&{if (-not $a){$global:a=(Get-ItemProperty -Path 'hklm:\SOFTWARE\Valve\Steam')}};$global:b="$($a.installpath)\steamapps\common\Inscryption";
&{if ($down){Expand-Archive -Force "$down" "$b";Remove-Item -Path "$down" -Force;exit}else{&{mkdir "$b\saveTransfer" >$null 2>&1};xcopy /f /y "$b\SaveFile.gwsave" "$b\saveTransfer";xcopy /f /y "$b\SaveFile-Backup.gwsave" "$b\saveTransfer";Compress-Archive -force -Path "$b\saveTransfer\*" -DestinationPath "$($scriptRoot)\save.zip"}}
