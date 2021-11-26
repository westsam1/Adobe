set torun=wmic bios get serialnumber /format:value
for /f "tokens=2 delims==" %%a in ('%torun%') do set serial=%%a
set TAB=	
REM Creating a File to list path of license files and keyword based search file
Echo Hostname %TAB% Serial %TAB% File %TAB% Size %TAB% Timestamp %TAB% Type >>.\%computername%_%serial%_Files.txt

REM Searching for Microsoft Licensing Files
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\Program Files (x86)\*Summary*.txt"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\Program Files\*Summary*.txt"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "%appdata%\Microsoft\VisualStudio\*ActivityLog.xml"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\ProgramData\regid.1991-06.com.microsoft\*.swidtag"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt

REM Searching for Adobe Licensing Files
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\ProgramData\regid.1986-12.com.adobe\*.swidtag"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\ProgramData\regid.1986-12.com.adobe\*.swtag"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\Progra~1\*cache.db"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt

REM Searching for Autodesk Licensing Files
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\docume~1\*reginfo.html"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\docume~1\*regemail.xml"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\docume~1\*install.log"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\docume~1\*.lic"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\programdata\*reginfo.html"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\programdata\*regemail.xml"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\programdata\*.lic"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\programdata\*install.log"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt


REM Searching for VMWare Licensing Files
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\ProgramData\VMware\VMware VirtualCenter\Logs\*vpxd*.log"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\ProgramData\VMWare\vCenterServer\logs\*vpxd*.log"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\docume~1\Application Data\VMware\VMware VirtualCenter\Logs\*vpxd*.log"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "c:\docume~1\VMWare\vCenterServer\logs\*vpxd*.log"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt


REM Searching for Siemens Licensing Files
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\Program Files\Siemens\*license.dat"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\Program Files\Siemens\*license.mti"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\Program Files\Siemens\*.lic"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt

REM Searching for Infinity QS Licensing Files
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\program files\infinityQS International\Proficient\*.lic"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\program files\infinityQS International\Proficient\*license.html"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt

REM Searching for Dassualt Licensing Files
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\Program Files\Dassault Systemes\*DSLicSrv*.txt"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt

REM Searching for Tableau Licensing Files
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\Program Files\Tableau\*LicResults*.txt"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% lic >>.\%computername%_%serial%_Files.txt


mkdir .\%computername%_Files\


REM Collecting Microsoft License Files
mkdir .\%computername%_Files\Microsoft\

for /f "delims=" %%A in ('dir /s /b /ta "c:\Program Files\*Summary*.txt"') do (
	copy "%%A" .\%computername%_Files\Microsoft\
	)

for /f "delims=" %%A in ('dir /s /b /ta "c:\Program Files (x86)\*Summary*.txt"') do (
	copy "%%A" .\%computername%_Files\Microsoft\
	)	

for /f "delims=" %%A in ('dir /s /b /ta %appdata%\Microsoft\VisualStudio\*ActivityLog.xml') do (
	copy "%%A" .\%computername%_Files\Microsoft\
	)
for /f "delims=" %%A in ('dir /s /b /ta %appdata%\Microsoft\VisualStudio\*ActivityLog.xsl') do (
	copy "%%A" .\%computername%_Files\Microsoft\
	)	
for /f "delims=" %%A in ('dir /s /b /ta C:\ProgramData\regid.1991-06.com.microsoft\*.swidtag') do (
	copy "%%A" .\%computername%_Files\Microsoft\
	)	
	
for /f "delims=" %%A in ('dir /s /b /ta C:\ProgramData\regid.1991-06.com.microsoft\*.swtag') do (
	copy "%%A" .\%computername%_Files\Microsoft\
	)

for /f "delims=" %%A in ('dir /s /b /ta C:\ProgramData\regid.1991-06.com.microsoft\*.swidtag') do (
	copy "%%A" .\%computername%_Files\Microsoft\
    )
	
REM Collecting Adobe Licensing Files

mkdir .\%computername%_Files\Adobe\

for /f "delims=" %%A in ('dir /s /b /ta C:\ProgramData\regid.1986-12.com.adobe\*.swidtag') do (
	copy "%%A" .\%computername%_Files\Adobe\
	)	
	
for /f "delims=" %%A in ('dir /s /b /ta C:\ProgramData\regid.1986-12.com.adobe\*.swtag') do (
	copy "%%A" .\%computername%_Files\Adobe\
	)

for /f "delims=" %%A in ('dir /s /b /ta C:\ProgramData\regid.1986-12.com.adobe\*.swidtag') do (
	copy "%%A" .\%computername%_Files\Adobe\
	)	
	
for /f "delims=" %%A in ('dir /s /b /ta c:\Progra~1\*cache.db') do (
	copy "%%A" .\%computername%_Files\Adobe\
	)	

REM Collecting VMWare Licensing Files

mkdir .\%computername%_Files\VMWare\

for /f "delims=" %%A in ('dir /s /b /ta C:\ProgramData\VMware\VMware VirtualCenter\Logs\*vpxd*.log') do (
	copy "%%A" .\%computername%_Files\VMWare\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta C:\ProgramData\VMWare\vCenterServer\logs\*vpxd*.log') do (
	copy "%%A" .\%computername%_Files\VMWare\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\docume~1\Application Data\VMware\VMware VirtualCenter\Logs\*vpxd*.log') do (
	copy "%%A" .\%computername%_Files\VMWare\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\docume~1\VMWare\vCenterServer\logs\*vpxd*.log') do (
	copy "%%A" .\%computername%_Files\VMWare\
	)

REM Collecting Autodesk Licensing Files
mkdir .\%computername%_Files\Autodesk\


for /f "delims=" %%A in ('dir /s /b /ta c:\docume~1\*reginfo.html') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\docume~1\*regemail.xml') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\docume~1\*install.log') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\docume~1\*.lic') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\programdata\*reginfo.html') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\programdata\*regemail.xml') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\programdata\*install.log') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\programdata\*.lic') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
for /f "delims=" %%A in ('dir /s /b /ta c:\Users\*reginfo.html') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\Users\*regemail.xml') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\Users\*install.log') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)
	
for /f "delims=" %%A in ('dir /s /b /ta c:\Users\*.lic') do (
	copy "%%A" .\%computername%_Files\Autodesk\
	)

	
REM Collecting Licensing Infromation from Tableau File

mkdir .\%computername%_Files\Tableau\

for /f "delims=" %%A in ('dir /s /b /ta  C:\Program Files\Tableau\*LicResults*.txt') do (
	copy "%%A" .\%computername%_Files\Tableau\
	)
echo part1 >>.\%computername%_Files\Tableau\%computername%_%serial%_Tableau.txt
for /f "delims=" %%A in ('dir /s /b /ta c:\Progra~1\custactutil.exe') do (
                   echo "%%A" >>.\%computername%_Files\Tableau\%computername%_%serial%_Tableau.txt & "%%A" -view>>.\%computername%_Files\Tableau\%computername%_%serial%_Tableau.txt
               )
echo part2 >>.\%computername%_Files\Tableau\%computername%_%serial%_Tableau.txt
for /f "delims=" %%A in ('dir /s /b /ta c:\Progra~2\custactutil.exe') do (
                   echo "%%A" >>.\%computername%_Files\Tableau\%computername%_%serial%_Tableau.txt & "%%A" -view>>.\%computername%_Files\Tableau\%computername%_%serial%_Tableau.txt


				)
				
REM Collecting Siemens Licensing Files

mkdir .\%computername%_Files\Siemens\

for /f "delims=" %%A in ('dir /s /b /ta C:\Program Files\Siemens\*license.dat') do (
	copy "%%A" .\%computername%_Files\Siemens\
	)

for /f "delims=" %%A in ('dir /s /b /ta C:\Program Files\Siemens\*license.mti') do (
	copy "%%A" .\%computername%_Files\Siemens\
	)

for /f "delims=" %%A in ('dir /s /b /ta C:\Program Files\Siemens\*.lic') do (
	copy "%%A" .\%computername%_Files\Siemens\
	)

REM Collecting InfinityQS Licensing Files

mkdir .\%computername%_Files\InfinityQS\

for /f "delims=" %%A in ('dir /s /b /ta C:\program files\infinityQS International\Proficient\*.lic ') do (
	copy "%%A" .\%computername%_Files\InfinityQS\
	)


for /f "delims=" %%A in ('dir /s /b /ta C:\program files\infinityQS International\Proficient\*license.html ') do (
	copy "%%A" .\%computername%_Files\InfinityQS\
	)



REM Collecting Dassault Licensing Files

mkdir .\%computername%_Files\Dassault\

for /f "delims=" %%A in ('dir /s /b /ta C:\Program Files\Dassault Systemes\*DSLicSrv*.txt') do (
	copy "%%A" .\%computername%_Files\Dassault\
	)
	
	
REM Searching for Keyword. Add more keyword or drive location as per requirement
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\*crack*"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% crack >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\*keygen*"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% crack >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\*torrent*"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% crack >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "C:\*crck*"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% crack >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "D:\*crack*"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% crack >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "D:\*keygen*"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% crack >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "D:\*torrent*"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% crack >>.\%computername%_%serial%_Files.txt
For /F "Delims=" %%A in ('dir /B/S/A-D "D:\*crck*"') Do @Echo %computername% %TAB% %serial% %TAB% %%~fA %TAB% %%~zA %TAB% %%~tA %TAB% crack >>.\%computername%_%serial%_Files.txt


echo Done
