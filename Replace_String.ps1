Get-ChildItem  -Path "C:\\Logs sripts\*.c" -recurse | ForEach {If (Get-Content $_.FullName | Select-String -Pattern 'http://ukcpp2crm1.vodafoneoci.com/halo_cc_nonsso/start.swe') 
           {(Get-Content $_ | ForEach {$_ -replace 'http://ukcpp2crm1.vodafoneoci.com/halo_cc_nonsso/start.swe', 'http://ukcpp2crm1.vodafoneoci.com/halo_cc_nonsso_debug/start.swe'}) | Set-Content $_ }
           }
