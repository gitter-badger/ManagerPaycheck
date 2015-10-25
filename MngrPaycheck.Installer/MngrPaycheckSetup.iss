; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
#define use_kb835732

#define use_msi20
#define use_msi31
#define use_msi45

#define use_ie6

#define use_dotnetfx11
#define use_dotnetfx11lp

#define use_dotnetfx20
#define use_dotnetfx20lp

#define use_dotnetfx35
#define use_dotnetfx35lp

#define use_dotnetfx40
#define use_wic

#define use_dotnetfx46

#define use_mdac28
#define use_jet4sp8

#define use_sqlcompact35sp2    

#define use_sql2005express
#define use_sql2008express

#define MyAppName "MngrPaycheck"
#define MyAppVersion "0.0.1.0"
#define MyAppPublisher "My Company, Inc."
#define MyAppURL "http://www.MngrPaycheck.com/"
#define MyAppExeName "MngrPaycheck.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E47B3D08-18D6-4786-A501-0A5DC84BADA1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck.Installer
OutputBaseFilename=MngrPaycheck
SetupIconFile=C:\Users\������\Desktop\case.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\MngrPaycheck.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\EntityFramework.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\EntityFramework.SqlServer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\EntityFramework.SqlServer.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\EntityFramework.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\MngrPaycheck.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\MngrPaycheck.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\MngrPaycheck.vshost.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\MngrPaycheck.vshost.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\�����\�ϲ\IIIII �������\STP\ManagerPaycheck\Project\ManagerPaycheckT\ManagerPaycheck\MngrPaycheck\bin\Debug\MngrPaycheck.vshost.exe.manifest"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


[Code]
// shared code for installing the products
#include "scripts\products.iss"
// helper functions
#include "scripts\products\stringversion.iss"
#include "scripts\products\winversion.iss"
#include "scripts\products\fileversion.iss"
#include "scripts\products\dotnetfxversion.iss"

// actual products
#ifdef use_iis
#include "scripts\products\iis.iss"
#endif

#ifdef use_kb835732
#include "scripts\products\kb835732.iss"
#endif

#ifdef use_msi20
#include "scripts\products\msi20.iss"
#endif
#ifdef use_msi31
#include "scripts\products\msi31.iss"
#endif
#ifdef use_msi45
#include "scripts\products\msi45.iss"
#endif

#ifdef use_ie6
#include "scripts\products\ie6.iss"
#endif

#ifdef use_dotnetfx11
#include "scripts\products\dotnetfx11.iss"
#include "scripts\products\dotnetfx11sp1.iss"
#ifdef use_dotnetfx11lp
#include "scripts\products\dotnetfx11lp.iss"
#endif
#endif

#ifdef use_dotnetfx20
#include "scripts\products\dotnetfx20.iss"
#include "scripts\products\dotnetfx20sp1.iss"
#include "scripts\products\dotnetfx20sp2.iss"
#ifdef use_dotnetfx20lp
#include "scripts\products\dotnetfx20lp.iss"
#include "scripts\products\dotnetfx20sp1lp.iss"
#include "scripts\products\dotnetfx20sp2lp.iss"
#endif
#endif

#ifdef use_dotnetfx35
//#include "scripts\products\dotnetfx35.iss"
#include "scripts\products\dotnetfx35sp1.iss"
#ifdef use_dotnetfx35lp
//#include "scripts\products\dotnetfx35lp.iss"
#include "scripts\products\dotnetfx35sp1lp.iss"
#endif
#endif

#ifdef use_dotnetfx40
#include "scripts\products\dotnetfx40client.iss"
#include "scripts\products\dotnetfx40full.iss"
#endif

#ifdef use_dotnetfx46
#include "scripts\products\dotnetfx46.iss"
#endif

#ifdef use_wic
#include "scripts\products\wic.iss"
#endif

#ifdef use_msiproduct
#include "scripts\products\msiproduct.iss"
#endif
#ifdef use_vc2005
#include "scripts\products\vcredist2005.iss"
#endif
#ifdef use_vc2008
#include "scripts\products\vcredist2008.iss"
#endif
#ifdef use_vc2010
#include "scripts\products\vcredist2010.iss"
#endif
#ifdef use_vc2012
#include "scripts\products\vcredist2012.iss"
#endif
#ifdef use_vc2013
#include "scripts\products\vcredist2013.iss"
#endif
#ifdef use_vc2015
#include "scripts\products\vcredist2015.iss"
#endif

#ifdef use_mdac28
#include "scripts\products\mdac28.iss"
#endif
#ifdef use_jet4sp8
#include "scripts\products\jet4sp8.iss"
#endif

#ifdef use_sql2008express
#include "scripts\products\sql2008express.iss"
#endif

function InitializeSetup(): boolean;
begin
	// initialize windows version
	initwinversion();

#ifdef use_iis
	if (not iis()) then exit;
#endif

#ifdef use_msi20
	msi20('2.0'); // min allowed version is 2.0
#endif
#ifdef use_msi31
	msi31('3.1'); // min allowed version is 3.1
#endif
#ifdef use_msi45
	msi45('4.5'); // min allowed version is 4.5
#endif
#ifdef use_ie6
	ie6('5.0.2919'); // min allowed version is 5.0.2919
#endif

#ifdef use_dotnetfx11
	dotnetfx11();
#ifdef use_dotnetfx11lp
	dotnetfx11lp();
#endif
	dotnetfx11sp1();
#endif

	// install .netfx 2.0 sp2 if possible; if not sp1 if possible; if not .netfx 2.0
#ifdef use_dotnetfx20
	// check if .netfx 2.0 can be installed on this OS
	if not minwinspversion(5, 0, 3) then begin
		msgbox(fmtmessage(custommessage('depinstall_missing'), [fmtmessage(custommessage('win_sp_title'), ['2000', '3'])]), mberror, mb_ok);
		exit;
	end;
	if not minwinspversion(5, 1, 2) then begin
		msgbox(fmtmessage(custommessage('depinstall_missing'), [fmtmessage(custommessage('win_sp_title'), ['XP', '2'])]), mberror, mb_ok);
		exit;
	end;

	if minwinversion(5, 1) then begin
		dotnetfx20sp2();
#ifdef use_dotnetfx20lp
		dotnetfx20sp2lp();
#endif
	end else begin
		if minwinversion(5, 0) and minwinspversion(5, 0, 4) then begin
#ifdef use_kb835732
			kb835732();
#endif
			dotnetfx20sp1();
#ifdef use_dotnetfx20lp
			dotnetfx20sp1lp();
#endif
		end else begin
			dotnetfx20();
#ifdef use_dotnetfx20lp
			dotnetfx20lp();
#endif
		end;
	end;
#endif

#ifdef use_dotnetfx35
	//dotnetfx35();
	dotnetfx35sp1();
#ifdef use_dotnetfx35lp
	//dotnetfx35lp();
	dotnetfx35sp1lp();
#endif
#endif

#ifdef use_wic
	wic();
#endif

	// if no .netfx 4.0 is found, install the client (smallest)
#ifdef use_dotnetfx40
	if (not netfxinstalled(NetFx40Client, '') and not netfxinstalled(NetFx40Full, '')) then
		dotnetfx40client();
#endif

#ifdef use_dotnetfx46
    dotnetfx46(50); // min allowed version is 4.5.0
#endif 

#ifdef use_mdac28
	mdac28('2.7'); // min allowed version is 2.7
#endif
#ifdef use_jet4sp8
	jet4sp8('4.0.8015'); // min allowed version is 4.0.8015
#endif

#ifdef use_sql2008express
	sql2008express();
#endif

	Result := true;
end;