Win32 App
DialogApp
Dialog application
[*BEGINPRO*]
[*BEGINDEF*]
[MakeDef]
Menu=1,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0
1=4,O,GoRC /r,1
2=5,O,fbc -s gui -x,5,2,4
3=
4=0,0,,5
5=
6=*.o,O,fbc -c,*.bas
7=0,0,"$E\Insight",5
11=4,O,GoRC /r,1
12=5,O,fbc -s gui -g -x,5,2,4
13=
14=0,0,,5
15=
16=*.o,O,fbc -g -c,*.bas
7=0,0,"$E\Insight",5
[MakeFiles]
0=DialogApp.rap
1=DialogApp.rc
2=DialogApp.bas
3=DialogApp.obj
4=DialogApp.res
5=DialogApp.exe
6=DialogApp.def
7=DialogApp.dll
8=DialogApp.txt
9=DialogApp.lib
10=DialogApp.o
[Resource]
[StringTable]
[Accel]
[VerInf]
[Group]
Group=Added files,Basic source,Resources,Include
1=2
2=4
3=3
4=3
[*ENDDEF*]
[*BEGINTXT*]
DialogApp.Bas
''
'' Dialog Example, by fsw
''
'' compile with:	fbc -s gui dialog.rc dialog.bas
''
''
option explicit

#include once "windows.bi"

#include "DialogApp.bi"

declare function DlgProc(byval hWnd as HWND, byval uMsg as UINT, byval wParam as WPARAM, byval lParam as LPARAM) as integer

'''
''' Program start
'''

	''
	'' Create the Dialog
	''
	DialogBoxParam(GetModuleHandle(NULL), IDD_DLG1, NULL, @DlgProc, NULL)
	''
	'' Program has ended
	''
	ExitProcess(0)
	end

'''
''' Program end
'''
function DlgProc(byval hDlg as HWND, byval uMsg as UINT, byval wParam as WPARAM, byval lParam as LPARAM) as integer
	dim as long id, event, x, y
	dim hBtn as HWND
	dim rect as RECT

	select case uMsg
		case WM_INITDIALOG
			'
		case WM_CLOSE
			EndDialog(hDlg, 0)
			'
		case WM_COMMAND
			id=loword(wParam)
			event=hiword(wParam)
			select case id
				case IDC_BTN1
					EndDialog(hDlg, 0)
					'
			end select
		case WM_SIZE
			GetClientRect(hDlg,@rect)
			hBtn=GetDlgItem(hDlg,IDC_BTN1)
			x=rect.right-100
			y=rect.bottom-35
			MoveWindow(hBtn,x,y,97,31,TRUE)
			'
		case else
			return FALSE
			'
	end select
	return TRUE

end function
[*ENDTXT*]
[*BEGINTXT*]
DialogApp.Bi
#define IDD_DLG1 1000 
#define IDC_BTN1 1001

[*ENDTXT*]
[*BEGINTXT*]
DialogApp.Rc
#include "Res/DialogAppDlg.rc"
[*ENDTXT*]
[*BEGINBIN*]
DialogApp.dlg
6500000001000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
00000000000000004D532053616E732053657269660000000000000000000000
000000000000000008000000F5FFFFFF00000000E90300000000000000000000
0000000000000000DA0E0A8D00009001000701000000000043D84100FE060100
000000000008CE10000000000A0000000A0000002C010000C80000004944445F
444C470000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000E8030000494444
5F444C4731000000000000000000000000000000000000000000000000000000
000000000002070100000000006506FFFF000701000000000000000150000000
00BD00000087000000610000001F000000436C69636B206D6500000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000
0000040000000400000000000000E90300004944435F42544E31000000000000
0000000000000000000000000000000000000000000000000000
[*ENDBIN*]
[*ENDPRO*]
[*BEGINTXT*]
Res\DialogAppDlg.Rc
#define IDD_DLG1 1000
#define IDC_BTN1 1001
IDD_DLG1 DIALOGEX 6,6,194,102
CAPTION "IDD_DLG"
FONT 8,"MS Sans Serif",400,0
STYLE 0x10CE0800
EXSTYLE 0x00000000
BEGIN
  CONTROL "Click me",IDC_BTN1,"Button",0x50010000,126,83,64,19,0x00000000
END
[*ENDTXT*]