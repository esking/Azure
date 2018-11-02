$PSVersionTable   get-host

Get-EventLog  -After (Get-Date).AddDays(-31) system -EntryType Error
Get-ADComputer -Filter * -Properties * | FT Name, LastLogonDate -Autosize


Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010;
Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn;
Get-MessageTrackingLog -ResultSize Unlimited -Start "1/03/2018 8:00AM" -End "1/04/2018 5:00PM" -EventId "Fail" -Recipients "dgm@owenhodge.com.au"
Get-MailboxJunkEmailConfiguration -Identity dgm@abc.com.au -ResultSize unlimited | out-file c:\t
emp\list.txt -Width 1000
Get-MailboxJunkEmailConfiguration -Identity dgm@abc.com.au -TrustedSendersAndDomains @{Add="ato.gov.au","INDAdvice@ato.gov.au","noreply@ato.gov.au"}


office2010
Set-MailboxSentItemsConfiguration "Mailbox Name" -SendAsItemsCopiedTo SenderAndFrom -SendOnBehalfOfItemsCopiedTo SenderAndFrom
office2013
Get-Mailbox -RecipientTypeDetails SharedMailbox | Set-Mailbox -MessageCopyForSentAsEnabled $true -MessageCopyForSendOnBehalfEnabled $true

Get-ADUser -Filter {name -like "joh*"}
Get-MailboxStatistics [username] | ft DisplayName, TotalItemSize, ItemCount


Import-Module ADSync
Start-ADSyncSyncCycle -PolicyType Delta


Enable-PSRemoting -Force
 Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
 Import-Module powershellget
 Install-Module -Name AzureAD -Scope CurrentUser


$UserCredential = Get-Credential
Connect-AzureAD -Credential $UserCredential
disconnect-AzureAD

Get-ADUser -Identity dlltransfer -Properties whenCreated


Enter-PSSession -ComputerName COMPUTER -Credential USER

name
Get-ADReplicationConnection

Add-MailboxFolderPermission -identity “Managingdirector:\Calendar” -user “personalassistant” -AccessRights editor


Add-LocalGroupMember -Group "Administrators" -Member "Admin02"

Start-ADSyncSyncCycle -PolicyType Delta

Get-ADOrganizationalUnit -filter *
Get-ADUser -filter * -Properties LastLogonTimeStamp,LastLogonDate | FT Enabled,SAMAccountName,LastLogonDate





netsh -r ohlw777 advfirewall show allprofiles
netsh -r ohlw777 advfirewall set allprofiles state off


sudo su -
dmesg | grep sudodd if=/dev/sda of=/dev/sdb count = xxxxxx  bs= 512 status=


Set-MailboxSentItemsConfiguration "Mailbox Name" -SendAsItemsCopiedTo SenderAndFrom -SendOnBehalfOfItemsCopiedTo SenderAndFrom
Get-Mailbox -RecipientTypeDetails SharedMailbox | Set-Mailbox -MessageCopyForSentAsEnabled $true -MessageCopyForSendOnBehalfEnabled $true


Get-ADUser -filter * -Properties LastLogonTimeStamp,LastLogonDate | FT Enabled,SAMAccountName,LastLogonDate

Get-MailBoxDatabase -status | ft Name,DatabaseSize,AvailableNewMailboxSpace -auto
Add-MailboxFolderPermission -identity "MailboxName:\Calendar" -AccessRights Reviewer -User "Gratex AU All"


###### Tue Jun 19 14:58:31 AEST 2018

show system statistics
show system resources
show system dis-space
show system info

delete debug-log mp-log file *.old
delete debug-log mp-log file *.1
delete debug-log mp-log file *.2
delete debug-log mp-log file *.3
delete debug-log mp-log file *.4

show session all filter source xxxx  destination  xxxx
show session id 18

*show running resource-monitor minute last 60
show running resource-monitor hour last 24
show session info
find command keyword application
show running application statistics
*show session all filter application icmp
show session all filter destination xxx.xxxx.xxx.xxx
show counter global filter deltra yes

show counter global filter delta yes | match pkt_recv

http://www.totalcardiagnostics.com/support/Knowledgebase/Article/View/92/20/prolific-usb-to-serial-fix-official-solution-to-code-10-errorc


1800 815 851 telstra



############Palo_Alto############### commands
show qos interface ethernet 1/2 throughput 0


troubleshooting the latency issue
qos both inbound and outbound
planning for the next change application bypass voip flow

Get-ADComputer -Filter * -Properties *  | Sort LastLogonDate | FT Name, LastLogonDate -Autosize

Enable-DistributionGroup -Identity "Name_of_Group"
Add-MailboxPermission -AccessRights full  -Identity "Yaris-CK59GN" -user "ACL_Dolores_CarsCalendar"

taskschd.msc

cd 'C:\Program Files\Veeam\Backup and Replication\Backup\'
.\Initialize-VeeamToolkit.ps1
cd \scripts

Get-Date >> C:\Scripts\Logs\TapeInventory.log
Get-VBRTapeJob | where {$_.LastState -ne "Stopped"}| Stop-VBRJob | fl >> C:\Scripts\Logs\TapeInventory.log


Start-Process powershell -Verb ###### Fri Aug 10 15:16:44 AEST 2018

(Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -Message “*Volume Shadow Copy *” -Newest 1).TimeGenerated

Add-PSSnapin veeampssnapin


Get-Command -Noun "*vb*" | where {$_.source -like "*veeampss*"}  | select name,source -first 100 |  more

vssadmin list writers | Select-String sql


$Size = '{0:N2}' -f (( Get-ChildItem C:\temp -recurse | Measure-Object -Property Length -Sum).Sum /1MB)


'{0:N2}' -f (( Get-ChildItem S:\SG2Data\98BB8CED-5E2A-4E23-9D6D-D537BC006A2612.3.Single -recurse | Measure-Object -Property Length -Sum).Sum /1GB)
'{0:N2}' -f (( Get-ChildItem Q:\SGDATA\3C6C019B-598A-4A7F-82A6-4CE28532739F12.2.Single -recurse | Measure-Object -Property Length -Sum).Sum /1GB)

Send-MailMessage -To "User01 <user01@example.com>" -From "User02 <user02@example.com>" -Subject "Test mail"



Set-TransportService saex01 -MessageTrackingLogMaxDirectorySize 10GB
Set-TransportService saex01 -ReceiveProtocolLogMaxDirectorySize 10GB -SendProtocolLogMaxDirectorysize 10GB

###### Fri Nov 2 15:35:40 AEDT 2018 self-signed certificate
New-SelfSignedCertificate –DnsName <Computer name> -CertStoreLocation “cert:\LocalMachine\My”
# copy self_certificate to root if needed

