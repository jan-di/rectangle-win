#define AppName "RectangleWin"
#define ApplicationVersion GetVersionNumbersString('RectangleWin32.exe')

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "de"; MessagesFile: "compiler:Languages\German.isl"

[Setup]
AppName={#AppName}
AppVersion={#ApplicationVersion}
DefaultDirName={localappdata}\Programs\RectangleWin
OutputDir=.
OutputBaseFilename=RectangleWin_Setup_{#ApplicationVersion}
PrivilegesRequired=lowest
ArchitecturesAllowed=x86 x64
ArchitecturesInstallIn64BitMode=x64
VersionInfoVersion={#ApplicationVersion}
AppCopyright=© 2023 Jan Dittrich

[Tasks]
Name: "AutoStartIcon"; Description: "{cm:AutoStartProgram,{#AppName}}"; GroupDescription: "{cm:AutoStartProgramGroupDescription}";

[Dirs]
Name: "{localappdata}\RectangleWin"
Name: "{app}"

[Files]
Source: "RectangleWin32.exe"; DestDir: "{app}"; DestName: "RectangleWin.exe"; Flags: 32bit ignoreversion
Source: "RectangleWin64.exe"; DestDir: "{app}"; DestName: "RectangleWin.exe"; Flags: 64bit ignoreversion
Source: "resources\*"; DestDir: "{app}\resources"; Flags: ignoreversion recursesubdirs

[Icons] 
Name: "{userstartup}\RectangleWin"; Filename: "{app}\RectangleWin.exe"; Tasks: AutoStartIcon

[Run]
Filename: "{app}\RectangleWin.exe"; Description: "{cm:LaunchProgram,{#AppName}}"; Flags: shellexec skipifsilent nowait postinstall