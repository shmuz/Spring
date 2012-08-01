--[=[
  MCODE_OP_EXIT=0x80000, -- ������������� ��������� ���������� �����������������������
  MCODE_OP_JMP=0x80001, -- Jumps..
  MCODE_OP_JZ=0x80002,
  MCODE_OP_JNZ=0x80003,
  MCODE_OP_JLT=0x80004,
  MCODE_OP_JLE=0x80005,
  MCODE_OP_JGT=0x80006,
  MCODE_OP_JGE=0x80007,
  MCODE_OP_NOP=0x80008, -- ��� ��������
  MCODE_OP_SAVE=0x80009, -- ������������ ����������. ��� ���������� ��������� DWORD (��� � $Text).
  MCODE_OP_SAVEREPCOUNT=0x8000A,
  MCODE_OP_PUSHUNKNOWN=0x8000B, -- ������������������� �������� (���������� ��������� �������)
  MCODE_OP_PUSHINT=0x8000C, -- �������� �������� �� ����. ����
  MCODE_OP_PUSHFLOAT=0x8000D, -- �������� �������� �� ����. double
  MCODE_OP_PUSHSTR=0x8000E, -- �������� - ��������� DWORD
  MCODE_OP_PUSHVAR=0x8000F, -- ��� ��������� ������� (��� � $Text)
  MCODE_OP_PUSHCONST=0x80010, -- � ���� �������� ���������
  MCODE_OP_REP=0x80011, -- $rep - ������� ������ �����
  MCODE_OP_END=0x80012, -- $end - ������� ����� �����/�������
  MCODE_OP_PREINC=0x80013, -- ++a
  MCODE_OP_PREDEC=0x80014, -- --a
  MCODE_OP_POSTINC=0x80015, -- a++
  MCODE_OP_POSTDEC=0x80016, -- a--
  MCODE_OP_UPLUS=0x80017, -- +a
  MCODE_OP_NEGATE=0x80018, -- -a
  MCODE_OP_NOT=0x80019, -- !a
  MCODE_OP_BITNOT=0x8001A, -- ~a
  MCODE_OP_MUL=0x8001B, -- a *  b
  MCODE_OP_DIV=0x8001C, -- a /  b
  MCODE_OP_ADD=0x8001D, -- a +  b
  MCODE_OP_SUB=0x8001E, -- a -  b
  MCODE_OP_BITSHR=0x8001F, -- a >> b
  MCODE_OP_BITSHL=0x80020, -- a << b
  MCODE_OP_LT=0x80021, -- a <  b
  MCODE_OP_LE=0x80022, -- a <= b
  MCODE_OP_GT=0x80023, -- a >  b
  MCODE_OP_GE=0x80024, -- a >= b
  MCODE_OP_EQ=0x80025, -- a == b
  MCODE_OP_NE=0x80026, -- a != b
  MCODE_OP_BITAND=0x80027, -- a &  b
  MCODE_OP_BITXOR=0x80028, -- a ^  b
  MCODE_OP_BITOR=0x80029, -- a |  b
  MCODE_OP_AND=0x8002A, -- a && b
  MCODE_OP_XOR=0x8002B, -- a ^^ b
  MCODE_OP_OR=0x8002C, -- a || b
  MCODE_OP_ADDEQ=0x8002D, -- a +=  b
  MCODE_OP_SUBEQ=0x8002E, -- a -=  b
  MCODE_OP_MULEQ=0x8002F, -- a *=  b
  MCODE_OP_DIVEQ=0x80030, -- a /=  b
  MCODE_OP_BITSHREQ=0x80031, -- a >>= b
  MCODE_OP_BITSHLEQ=0x80032, -- a <<= b
  MCODE_OP_BITANDEQ=0x80033, -- a &=  b
  MCODE_OP_BITXOREQ=0x80034, -- a ^=  b
  MCODE_OP_BITOREQ=0x80035, -- a |=  b
  MCODE_OP_DISCARD=0x80036, -- ������ �������� � ������� �����
  MCODE_OP_DUP=0x80037, -- �������������� ������� �������� � �����
  MCODE_OP_SWAP=0x80038, -- �������� ������� ��� �������� � ������� �����
  MCODE_OP_POP=0x80039, -- ��������� �������� ���������� � ������ �� ������� �����
  MCODE_OP_COPY=0x8003A, -- %a=%d, ���� �� ������������
  MCODE_OP_KEYS=0x8003B, -- �� ���� ����� ������� ������ ���� ������
  MCODE_OP_ENDKEYS=0x8003C, -- ������ ���� �����������.
  MCODE_OP_IF=0x8003D, -- ������-�� ��� ������ � �������
  MCODE_OP_ELSE=0x8003E, -- �� ������� ������� :)
  MCODE_OP_WHILE=0x8003F,
  MCODE_OP_CONTINUE=0x80040, -- $continue
  MCODE_OP_BREAK=0x80041, -- $break
  MCODE_OP_XLAT=0x80042,
  MCODE_OP_PLAINTEXT=0x80043,
  MCODE_OP_AKEY=0x80044, -- $AKey - �������, ������� ������� ������
  MCODE_OP_SELWORD=0x80045, -- $SelWord - �������� "�����"

  MCODE_F_NOFUNC=0x80C00,
  MCODE_F_ABS=0x80C01, -- N=abs(N)
  MCODE_F_AKEY=0x80C02, -- V=akey(Mode[,Type])
  MCODE_F_ASC=0x80C03, -- N=asc(S)
  MCODE_F_ATOI=0x80C04, -- N=atoi(S[,radix])
  MCODE_F_CLIP=0x80C05, -- V=clip(N[,V])
  MCODE_F_CHR=0x80C06, -- S=chr(N)
  MCODE_F_DATE=0x80C07, -- S=date([S])
  MCODE_F_DLG_GETVALUE=0x80C08, -- V=Dlg.GetValue([Pos[,InfoID]])
  MCODE_F_EDITOR_SEL=0x80C09, -- V=Editor.Sel(Action[,Opt])
  MCODE_F_EDITOR_SET=0x80C0A, -- N=Editor.Set(N,Var)
  MCODE_F_EDITOR_UNDO=0x80C0B, -- V=Editor.Undo(N)
  MCODE_F_EDITOR_POS=0x80C0C, -- N=Editor.Pos(Op,What[,Where])
  MCODE_F_ENVIRON=0x80C0D, -- S=Env(S[,Mode[,Value]])
  MCODE_F_FATTR=0x80C0E, -- N=fattr(S)
  MCODE_F_FEXIST=0x80C0F, -- S=fexist(S)
  MCODE_F_FSPLIT=0x80C10, -- S=fsplit(S,N)
  MCODE_F_IIF=0x80C11, -- V=iif(C,V1,V2)
  MCODE_F_INDEX=0x80C12, -- S=index(S1,S2[,Mode])
  MCODE_F_INT=0x80C13, -- N=int(V)
  MCODE_F_ITOA=0x80C14, -- S=itoa(N[,radix])
  MCODE_F_KEY=0x80C15, -- S=key(V)
  MCODE_F_LCASE=0x80C16, -- S=lcase(S1)
  MCODE_F_LEN=0x80C17, -- N=len(S)
  MCODE_F_MAX=0x80C18, -- N=max(N1,N2)
  MCODE_F_MENU_CHECKHOTKEY=0x80C19, -- N=checkhotkey(S[,N])
  MCODE_F_MENU_GETHOTKEY=0x80C1A, -- S=gethotkey([N])
  MCODE_F_MENU_SELECT=0x80C1B, -- N=Menu.Select(S[,N[,Dir]])
  MCODE_F_MENU_SHOW=0x80C1C, -- S=Menu.Show(Items[,Title[,Flags[,FindOrFilter[,X[,Y]]]]])
  MCODE_F_MIN=0x80C1D, -- N=min(N1,N2)
  MCODE_F_MOD=0x80C1E, -- N=mod(a,b) == a %  b
  MCODE_F_MLOAD=0x80C1F, -- B=mload(var)
  MCODE_F_MSAVE=0x80C20, -- B=msave(var)
  MCODE_F_MSGBOX=0x80C21, -- N=msgbox(["Title"[,"Text"[,flags]]])
  MCODE_F_PANEL_FATTR=0x80C22, -- N=Panel.FAttr(panelType,fileMask)
  MCODE_F_PANEL_SETPATH=0x80C23, -- N=panel.SetPath(panelType,pathName[,fileName])
  MCODE_F_PANEL_FEXIST=0x80C24, -- N=Panel.FExist(panelType,fileMask)
  MCODE_F_PANEL_SETPOS=0x80C25, -- N=Panel.SetPos(panelType,fileName)
  MCODE_F_PANEL_SETPOSIDX=0x80C26, -- N=Panel.SetPosIdx(panelType,Idx[,InSelection])
  MCODE_F_PANEL_SELECT=0x80C27, -- V=Panel.Select(panelType,Action[,Mode[,Items]])
  MCODE_F_PANELITEM=0x80C28, -- V=PanelItem(Panel,Index,TypeInfo)
  MCODE_F_EVAL=0x80C29, -- N=eval(S[,N])
  MCODE_F_RINDEX=0x80C2A, -- S=rindex(S1,S2[,Mode])
  MCODE_F_SLEEP=0x80C2B, -- Sleep(N)
  MCODE_F_STRING=0x80C2C, -- S=string(V)
  MCODE_F_SUBSTR=0x80C2D, -- S=substr(S,start[,length])
  MCODE_F_UCASE=0x80C2E, -- S=ucase(S1)
  MCODE_F_WAITKEY=0x80C2F, -- V=waitkey([N,[T]])
  MCODE_F_XLAT=0x80C30, -- S=xlat(S)
  MCODE_F_FLOCK=0x80C31, -- N=FLock(N,N)
  MCODE_F_CALLPLUGIN=0x80C32, -- V=callplugin(SysID[,param])
  MCODE_F_REPLACE=0x80C33, -- S=replace(sS,sF,sR[,Count[,Mode]])
  MCODE_F_PROMPT=0x80C34, -- S=prompt(["Title"[,"Prompt"[,flags[, "Src"[, "History"]]]]])
  MCODE_F_BM_ADD=0x80C35, -- N=BM.Add()  - �������� ������� ���������� � �������� �����
  MCODE_F_BM_CLEAR=0x80C36, -- N=BM.Clear() - �������� ��� ��������
  MCODE_F_BM_DEL=0x80C37, -- N=BM.Del([Idx]) - ������� �������� � ��������� �������� (x=1...), 0 - ������� ������� ��������
  MCODE_F_BM_GET=0x80C38, -- N=BM.Get(Idx,M) - ���������� ���������� ������ (M==0) ��� ������� (M==1) �������� � �������� (Idx=1...)
  MCODE_F_BM_GOTO=0x80C39, -- N=BM.Goto([n]) - ������� �� �������� � ��������� �������� (0 --> �������)
  MCODE_F_BM_NEXT=0x80C3A, -- N=BM.Next() - ������� �� ��������� ��������
  MCODE_F_BM_POP=0x80C3B, -- N=BM.Pop() - ������������ ������� ������� �� �������� � ����� ����� � ������� ��������
  MCODE_F_BM_PREV=0x80C3C, -- N=BM.Prev() - ������� �� ���������� ��������
  MCODE_F_BM_BACK=0x80C3D, -- N=BM.Back() - ������� �� ���������� �������� � ��������� ����������� ������� �������
  MCODE_F_BM_PUSH=0x80C3E, -- N=BM.Push() - ��������� ������� ������� � ���� �������� � ����� �����
  MCODE_F_BM_STAT=0x80C3F, -- N=BM.Stat([M]) - ���������� ���������� � ���������, N=0 - ������� ���������� ��������
  MCODE_F_TRIM=0x80C40, -- S=trim(S[,N])
  MCODE_F_FLOAT=0x80C41, -- N=float(V)
  MCODE_F_TESTFOLDER=0x80C42, -- N=testfolder(S)
  MCODE_F_PRINT=0x80C43, -- N=Print(Str)
  MCODE_F_MMODE=0x80C44, -- N=MMode(Action[,Value])
  MCODE_F_EDITOR_SETTITLE=0x80C45, -- N=Editor.SetTitle([Title])
  MCODE_F_MENU_GETVALUE=0x80C46, -- S=Menu.GetValue([N])
  MCODE_F_MENU_ITEMSTATUS=0x80C47, -- N=Menu.ItemStatus([N])
  MCODE_F_BEEP=0x80C48, -- N=beep([N])
  MCODE_F_KBDLAYOUT=0x80C49, -- N=kbdLayout([N])
  MCODE_F_WINDOW_SCROLL=0x80C4A, -- N=Window.Scroll(Lines[,Axis])
  MCODE_F_KEYBAR_SHOW=0x80C4B, -- N=KeyBar.Show([N])
  MCODE_F_HISTIORY_DISABLE=0x80C4C, -- N=History.Disable([State])
  MCODE_F_FMATCH=0x80C4D, -- N=FMatch(S,Mask)
  MCODE_F_PLUGIN_MENU=0x80C4E, -- N=Plugin.Menu(Guid[,MenuGuid])
  MCODE_F_PLUGIN_CONFIG=0x80C4F, -- N=Plugin.Config(Guid[,MenuGuid])
  MCODE_F_PLUGIN_CALL=0x80C50, -- N=Plugin.Call(Guid[,Item])
  MCODE_F_PLUGIN_LOAD=0x80C51, -- N=Plugin.Load(DllPath[,ForceLoad])
  MCODE_F_PLUGIN_COMMAND=0x80C52, -- N=Plugin.Command(Guid[,Command])
  MCODE_F_PLUGIN_UNLOAD=0x80C53, -- N=Plugin.UnLoad(DllPath)
  MCODE_F_PLUGIN_EXIST=0x80C54, -- N=Plugin.Exist(Guid)
  MCODE_F_MENU_FILTER=0x80C55, -- N=Menu.Filter(Action[,Mode])
  MCODE_F_MENU_FILTERSTR=0x80C56, -- S=Menu.FilterStr([Action[,S]])
  MCODE_F_DLG_SETFOCUS=0x80C57, -- N=Dlg.SetFocus([ID])
  MCODE_F_FAR_CFG_GET=0x80C58, -- V=Far.Cfg.Get(Key,Name)
  MCODE_F_SIZE2STR=0x80C59, -- S=Size2Str(N,Flags[,Width])
  MCODE_F_STRWRAP=0x80C5A, -- S=StrWrap(Text,Width[,Break[,Flags]])
  MCODE_F_MACRO_KEYWORD=0x80C5B, -- S=Macro.Keyword(Index[,Type])
  MCODE_F_MACRO_FUNC=0x80C5C, -- S=Macro.Func(Index[,Type])
  MCODE_F_MACRO_VAR=0x80C5D, -- S=Macro.Var(Index[,Type])
  MCODE_F_MACRO_CONST=0x80C5E, -- S=Macro.Const(Index[,Type])
  MCODE_F_STRPAD=0x80C5F, -- S=StrPad(V,Cnt[,Fill[,Op]])
  MCODE_F_EDITOR_DELLINE=0x80C60, -- N=Editor.DelLine([Line])
  MCODE_F_EDITOR_GETSTR=0x80C61, -- S=Editor.GetStr([Line])
  MCODE_F_EDITOR_INSSTR=0x80C62, -- N=Editor.InsStr([S[,Line]])
  MCODE_F_EDITOR_SETSTR=0x80C63, -- N=Editor.SetStr([S[,Line]])
  MCODE_F_LAST=0x80C63, -- marker

  MCODE_C_AREA_OTHER=0x80400, -- ����� ����������� ������ � ������, ������������ ����
  MCODE_C_AREA_SHELL=0x80401, -- �������� ������
  MCODE_C_AREA_VIEWER=0x80402, -- ���������� ��������� ���������
  MCODE_C_AREA_EDITOR=0x80403, -- ��������
  MCODE_C_AREA_DIALOG=0x80404, -- �������
  MCODE_C_AREA_SEARCH=0x80405, -- ������� ����� � �������
  MCODE_C_AREA_DISKS=0x80406, -- ���� ������ ������
  MCODE_C_AREA_MAINMENU=0x80407, -- �������� ����
  MCODE_C_AREA_MENU=0x80408, -- ������ ����
  MCODE_C_AREA_HELP=0x80409, -- ������� ������
  MCODE_C_AREA_INFOPANEL=0x8040A, -- �������������� ������
  MCODE_C_AREA_QVIEWPANEL=0x8040B, -- ������ �������� ���������
  MCODE_C_AREA_TREEPANEL=0x8040C, -- ������ ������ �����
  MCODE_C_AREA_FINDFOLDER=0x8040D, -- ����� �����
  MCODE_C_AREA_USERMENU=0x8040E, -- ���� ������������
  MCODE_C_AREA_SHELL_AUTOCOMPLETION=0x8040F, -- ������ �������������� � ������� � ���.������
  MCODE_C_AREA_DIALOG_AUTOCOMPLETION=0x80410, -- ������ �������������� � �������
  MCODE_C_FULLSCREENMODE=0x80411, -- ������������� �����?
  MCODE_C_ISUSERADMIN=0x80412, -- Administrator status
  MCODE_C_BOF=0x80413, -- ������ �����/��������� ��������?
  MCODE_C_EOF=0x80414, -- ����� �����/��������� ��������?
  MCODE_C_EMPTY=0x80415, -- ���.������ �����?
  MCODE_C_SELECTED=0x80416, -- ���������� ���� ����?
  MCODE_C_ROOTFOLDER=0x80417, -- ������ MCODE_C_APANEL_ROOT ��� �������� ������
  MCODE_C_APANEL_BOF=0x80418, -- ������ ���������  ��������?
  MCODE_C_PPANEL_BOF=0x80419, -- ������ ���������� ��������?
  MCODE_C_APANEL_EOF=0x8041A, -- ����� ���������  ��������?
  MCODE_C_PPANEL_EOF=0x8041B, -- ����� ���������� ��������?
  MCODE_C_APANEL_ISEMPTY=0x8041C, -- �������� ������:  �����?
  MCODE_C_PPANEL_ISEMPTY=0x8041D, -- ��������� ������: �����?
  MCODE_C_APANEL_SELECTED=0x8041E, -- �������� ������:  ���������� �������� ����?
  MCODE_C_PPANEL_SELECTED=0x8041F, -- ��������� ������: ���������� �������� ����?
  MCODE_C_APANEL_ROOT=0x80420, -- ��� �������� ������� �������� ������?
  MCODE_C_PPANEL_ROOT=0x80421, -- ��� �������� ������� ��������� ������?
  MCODE_C_APANEL_VISIBLE=0x80422, -- �������� ������:  ������?
  MCODE_C_PPANEL_VISIBLE=0x80423, -- ��������� ������: ������?
  MCODE_C_APANEL_PLUGIN=0x80424, -- �������� ������:  ����������?
  MCODE_C_PPANEL_PLUGIN=0x80425, -- ��������� ������: ����������?
  MCODE_C_APANEL_FILEPANEL=0x80426, -- �������� ������:  ��������?
  MCODE_C_PPANEL_FILEPANEL=0x80427, -- ��������� ������: ��������?
  MCODE_C_APANEL_FOLDER=0x80428, -- �������� ������:  ������� ������� �������?
  MCODE_C_PPANEL_FOLDER=0x80429, -- ��������� ������: ������� ������� �������?
  MCODE_C_APANEL_LEFT=0x8042A, -- �������� ������ �����?
  MCODE_C_PPANEL_LEFT=0x8042B, -- ��������� ������ �����?
  MCODE_C_APANEL_LFN=0x8042C, -- �� �������� ������ ������� �����?
  MCODE_C_PPANEL_LFN=0x8042D, -- �� ��������� ������ ������� �����?
  MCODE_C_APANEL_FILTER=0x8042E, -- �� �������� ������ ������� ������?
  MCODE_C_PPANEL_FILTER=0x8042F, -- �� ��������� ������ ������� ������?
  MCODE_C_CMDLINE_BOF=0x80430, -- ������ � ������ cmd-������ ��������������?
  MCODE_C_CMDLINE_EOF=0x80431, -- ������ � ����� cmd-������ ��������������?
  MCODE_C_CMDLINE_EMPTY=0x80432, -- ���.������ �����?
  MCODE_C_CMDLINE_SELECTED=0x80433, -- � ���.������ ���� ��������� �����?

  MCODE_V_FAR_WIDTH=0x80800, -- Far.Width - ������ ����������� ����
  MCODE_V_FAR_HEIGHT=0x80801, -- Far.Height - ������ ����������� ����
  MCODE_V_FAR_TITLE=0x80802, -- Far.Title - ������� ��������� ����������� ����
  MCODE_V_FAR_UPTIME=0x80803, -- Far.UpTime - ����� ������ Far � �������������
  MCODE_V_FAR_PID=0x80804, -- Far.PID - �������� �� ������� ���������� ����� Far Manager
  MCODE_V_MACRO_AREA=0x80805, -- MacroArea - ��� ������� ������ �������
  MCODE_V_APANEL_CURRENT=0x80806, -- APanel.Current - ��� ����� �� �������� ������
  MCODE_V_PPANEL_CURRENT=0x80807, -- PPanel.Current - ��� ����� �� ��������� ������
  MCODE_V_APANEL_SELCOUNT=0x80808, -- APanel.SelCount - �������� ������:  ����� ���������� ���������
  MCODE_V_PPANEL_SELCOUNT=0x80809, -- PPanel.SelCount - ��������� ������: ����� ���������� ���������
  MCODE_V_APANEL_PATH=0x8080A, -- APanel.Path - �������� ������:  ���� �� ������
  MCODE_V_PPANEL_PATH=0x8080B, -- PPanel.Path - ��������� ������: ���� �� ������
  MCODE_V_APANEL_PATH0=0x8080C, -- APanel.Path0 - �������� ������:  ���� �� ������ �� ������ ��������
  MCODE_V_PPANEL_PATH0=0x8080D, -- PPanel.Path0 - ��������� ������: ���� �� ������ �� ������ ��������
  MCODE_V_APANEL_UNCPATH=0x8080E, -- APanel.UNCPath - �������� ������:  UNC-���� �� ������
  MCODE_V_PPANEL_UNCPATH=0x8080F, -- PPanel.UNCPath - ��������� ������: UNC-���� �� ������
  MCODE_V_APANEL_WIDTH=0x80810, -- APanel.Width - �������� ������:  ������ ������
  MCODE_V_PPANEL_WIDTH=0x80811, -- PPanel.Width - ��������� ������: ������ ������
  MCODE_V_APANEL_TYPE=0x80812, -- APanel.Type - ��� �������� ������
  MCODE_V_PPANEL_TYPE=0x80813, -- PPanel.Type - ��� ��������� ������
  MCODE_V_APANEL_ITEMCOUNT=0x80814, -- APanel.ItemCount - �������� ������:  ����� ���������
  MCODE_V_PPANEL_ITEMCOUNT=0x80815, -- PPanel.ItemCount - ��������� ������: ����� ���������
  MCODE_V_APANEL_CURPOS=0x80816, -- APanel.CurPos - �������� ������:  ������� ������
  MCODE_V_PPANEL_CURPOS=0x80817, -- PPanel.CurPos - ��������� ������: ������� ������
  MCODE_V_APANEL_OPIFLAGS=0x80818, -- APanel.OPIFlags - �������� ������: ����� ��������� �������
  MCODE_V_PPANEL_OPIFLAGS=0x80819, -- PPanel.OPIFlags - ��������� ������: ����� ��������� �������
  MCODE_V_APANEL_DRIVETYPE=0x8081A, -- APanel.DriveType - �������� ������: ��� �������
  MCODE_V_PPANEL_DRIVETYPE=0x8081B, -- PPanel.DriveType - ��������� ������: ��� �������
  MCODE_V_APANEL_HEIGHT=0x8081C, -- APanel.Height - �������� ������:  ������ ������
  MCODE_V_PPANEL_HEIGHT=0x8081D, -- PPanel.Height - ��������� ������: ������ ������
  MCODE_V_APANEL_COLUMNCOUNT=0x8081E, -- APanel.ColumnCount - �������� ������:  ���������� �������
  MCODE_V_PPANEL_COLUMNCOUNT=0x8081F, -- PPanel.ColumnCount - ��������� ������: ���������� �������
  MCODE_V_APANEL_HOSTFILE=0x80820, -- APanel.HostFile - �������� ������:  ��� Host-�����
  MCODE_V_PPANEL_HOSTFILE=0x80821, -- PPanel.HostFile - ��������� ������: ��� Host-�����
  MCODE_V_APANEL_PREFIX=0x80822, -- APanel.Prefix
  MCODE_V_PPANEL_PREFIX=0x80823, -- PPanel.Prefix
  MCODE_V_APANEL_FORMAT=0x80824, -- APanel.Format
  MCODE_V_PPANEL_FORMAT=0x80825, -- PPanel.Format
  MCODE_V_ITEMCOUNT=0x80826, -- ItemCount - ����� ��������� � ������� �������
  MCODE_V_CURPOS=0x80827, -- CurPos - ������� ������ � ������� �������
  MCODE_V_TITLE=0x80828, -- Title - ��������� �������� �������
  MCODE_V_HEIGHT=0x80829, -- Height - ������ �������� �������
  MCODE_V_WIDTH=0x8082A, -- Width - ������ �������� �������
  MCODE_V_EDITORFILENAME=0x8082B, -- Editor.FileName - ��� �������������� �����
  MCODE_V_EDITORLINES=0x8082C, -- Editor.Lines - ���������� ����� � ���������
  MCODE_V_EDITORCURLINE=0x8082D, -- Editor.CurLine - ������� ����� � ��������� (� ���������� � Count)
  MCODE_V_EDITORCURPOS=0x8082E, -- Editor.CurPos - ������� ���. � ���������
  MCODE_V_EDITORREALPOS=0x8082F, -- Editor.RealPos - ������� ���. � ��������� ��� �������� � ������� ���������
  MCODE_V_EDITORSTATE=0x80830, -- Editor.State
  MCODE_V_EDITORVALUE=0x80831, -- Editor.Value - ���������� ������� ������
  MCODE_V_EDITORSELVALUE=0x80832, -- Editor.SelValue - �������� ���������� ����������� �����
  MCODE_V_DLGITEMTYPE=0x80833, -- Dlg.ItemType
  MCODE_V_DLGITEMCOUNT=0x80834, -- Dlg.ItemCount
  MCODE_V_DLGCURPOS=0x80835, -- Dlg.CurPos
  MCODE_V_DLGPREVPOS=0x80836, -- Dlg.PrevPos
  MCODE_V_DLGINFOID=0x80837, -- Dlg.Info.Id
  MCODE_V_DLGINFOOWNER=0x80838, -- Dlg.Info.Owner
  MCODE_V_VIEWERFILENAME=0x80839, -- Viewer.FileName - ��� ���������������� �����
  MCODE_V_VIEWERSTATE=0x8083A, -- Viewer.State
  MCODE_V_CMDLINE_ITEMCOUNT=0x8083B, -- CmdLine.ItemCount
  MCODE_V_CMDLINE_CURPOS=0x8083C, -- CmdLine.CurPos
  MCODE_V_CMDLINE_VALUE=0x8083D, -- CmdLine.Value
  MCODE_V_DRVSHOWPOS=0x8083E, -- Drv.ShowPos - ���� ������ ������ ����������: 1=����� (Alt-F1), 2=������ (Alt-F2), 0="���� ���"
  MCODE_V_DRVSHOWMODE=0x8083F, -- Drv.ShowMode - ������ ����������� ���� ������ ������
  MCODE_V_HELPFILENAME=0x80840, -- Help.FileName
  MCODE_V_HELPTOPIC=0x80841, -- Help.Topic
  MCODE_V_HELPSELTOPIC=0x80842, -- Help.SelTopic
  MCODE_V_MENU_VALUE=0x80843, -- Menu.Value
  MCODE_V_MENUINFOID=0x80844, -- Menu.Info.Id
--]=]

local MacroCallFar = far.MacroCallFar

-- "mf" ("macrofunctions") namespace
mf = {
  abs             = function(...) return MacroCallFar(0x80C01, ...) end,
  akey            = function(...) return MacroCallFar(0x80C02, ...) end,
  asc             = function(...) return MacroCallFar(0x80C03, ...) end,
  atoi            = function(...) return MacroCallFar(0x80C04, ...) end,
  beep            = function(...) return MacroCallFar(0x80C48, ...) end,
  BM_Add          = function(...) return MacroCallFar(0x80C35, ...) end,
  BM_Back         = function(...) return MacroCallFar(0x80C3D, ...) end,
  BM_Clear        = function(...) return MacroCallFar(0x80C36, ...) end,
  BM_Del          = function(...) return MacroCallFar(0x80C37, ...) end,
  BM_Get          = function(...) return MacroCallFar(0x80C38, ...) end,
  BM_Goto         = function(...) return MacroCallFar(0x80C39, ...) end,
  BM_Next         = function(...) return MacroCallFar(0x80C3A, ...) end,
  BM_Pop          = function(...) return MacroCallFar(0x80C3B, ...) end,
  BM_Prev         = function(...) return MacroCallFar(0x80C3C, ...) end,
  BM_Push         = function(...) return MacroCallFar(0x80C3E, ...) end,
  BM_Stat         = function(...) return MacroCallFar(0x80C3F, ...) end,
  callplugin      = function(...) return MacroCallFar(0x80C32, ...) end,
  checkhotkey     = function(...) return MacroCallFar(0x80C19, ...) end,
  chr             = function(...) return MacroCallFar(0x80C06, ...) end,
  clip            = function(...) return MacroCallFar(0x80C05, ...) end,
  date            = function(...) return MacroCallFar(0x80C07, ...) end,
  Dlg_GetValue    = function(...) return MacroCallFar(0x80C08, ...) end,
  Dlg_SetFocus    = function(...) return MacroCallFar(0x80C57, ...) end,
  Editor_DelLine  = function(...) return MacroCallFar(0x80C60, ...) end,
  Editor_GetStr   = function(...) return MacroCallFar(0x80C61, ...) end,
  Editor_InsStr   = function(...) return MacroCallFar(0x80C62, ...) end,
  Editor_Pos      = function(...) return MacroCallFar(0x80C0C, ...) end,
  Editor_Sel      = function(...) return MacroCallFar(0x80C09, ...) end,
  Editor_Set      = function(...) return MacroCallFar(0x80C0A, ...) end,
  Editor_SetStr   = function(...) return MacroCallFar(0x80C63, ...) end,
  Editor_SetTitle = function(...) return MacroCallFar(0x80C45, ...) end,
  Editor_Undo     = function(...) return MacroCallFar(0x80C0B, ...) end,
  Env             = function(...) return MacroCallFar(0x80C0D, ...) end,
  eval            = function(...) return MacroCallFar(0x80C29, ...) end,
  Far_Cfg_Get     = function(...) return MacroCallFar(0x80C58, ...) end,
  fattr           = function(...) return MacroCallFar(0x80C0E, ...) end,
  fexist          = function(...) return MacroCallFar(0x80C0F, ...) end,
  float           = function(...) return MacroCallFar(0x80C41, ...) end,
  FLock           = function(...) return MacroCallFar(0x80C31, ...) end,
  FMatch          = function(...) return MacroCallFar(0x80C4D, ...) end,
  fsplit          = function(...) return MacroCallFar(0x80C10, ...) end,
  gethotkey       = function(...) return MacroCallFar(0x80C1A, ...) end,
  History_Disable = function(...) return MacroCallFar(0x80C4C, ...) end,
  iif             = function(...) return MacroCallFar(0x80C11, ...) end,
  index           = function(...) return MacroCallFar(0x80C12, ...) end,
  int             = function(...) return MacroCallFar(0x80C13, ...) end,
  itoa            = function(...) return MacroCallFar(0x80C14, ...) end,
  kbdLayout       = function(...) return MacroCallFar(0x80C49, ...) end,
  key             = function(...) return MacroCallFar(0x80C15, ...) end,
  KeyBar_Show     = function(...) return MacroCallFar(0x80C4B, ...) end,
  lcase           = function(...) return MacroCallFar(0x80C16, ...) end,
  len             = function(...) return MacroCallFar(0x80C17, ...) end,
  Macro_Const     = function(...) return MacroCallFar(0x80C5E, ...) end,
  Macro_Func      = function(...) return MacroCallFar(0x80C5C, ...) end,
  Macro_Keyword   = function(...) return MacroCallFar(0x80C5B, ...) end,
  Macro_Var       = function(...) return MacroCallFar(0x80C5D, ...) end,
  max             = function(...) return MacroCallFar(0x80C18, ...) end,
  Menu_Filter     = function(...) return MacroCallFar(0x80C55, ...) end,
  Menu_FilterStr  = function(...) return MacroCallFar(0x80C56, ...) end,
  Menu_GetValue   = function(...) return MacroCallFar(0x80C46, ...) end,
  Menu_ItemStatus = function(...) return MacroCallFar(0x80C47, ...) end,
  Menu_Select     = function(...) return MacroCallFar(0x80C1B, ...) end,
  Menu_Show       = function(...) return MacroCallFar(0x80C1C, ...) end,
  min             = function(...) return MacroCallFar(0x80C1D, ...) end,
  mload           = function(...) return MacroCallFar(0x80C1F, ...) end,
  MMode           = function(...) return MacroCallFar(0x80C44, ...) end,
  mod             = function(...) return MacroCallFar(0x80C1E, ...) end,
  msave           = function(...) return MacroCallFar(0x80C20, ...) end,
  msgbox          = function(...) return MacroCallFar(0x80C21, ...) end,
  Panel_FAttr     = function(...) return MacroCallFar(0x80C22, ...) end,
  Panel_FExist    = function(...) return MacroCallFar(0x80C24, ...) end,
  Panel_Select    = function(...) return MacroCallFar(0x80C27, ...) end,
  Panel_SetPath   = function(...) return MacroCallFar(0x80C23, ...) end,
  Panel_SetPos    = function(...) return MacroCallFar(0x80C25, ...) end,
  Panel_SetPosIdx = function(...) return MacroCallFar(0x80C26, ...) end,
  PanelItem       = function(...) return MacroCallFar(0x80C28, ...) end,
  Plugin_Call     = function(...) return MacroCallFar(0x80C50, ...) end,
  Plugin_Command  = function(...) return MacroCallFar(0x80C52, ...) end,
  Plugin_Config   = function(...) return MacroCallFar(0x80C4F, ...) end,
  Plugin_Exist    = function(...) return MacroCallFar(0x80C54, ...) end,
  Plugin_Load     = function(...) return MacroCallFar(0x80C51, ...) end,
  Plugin_Menu     = function(...) return MacroCallFar(0x80C4E, ...) end,
  Plugin_Unload   = function(...) return MacroCallFar(0x80C53, ...) end,
  Print           = function(...) return MacroCallFar(0x80C43, ...) end,
  prompt          = function(...) return MacroCallFar(0x80C34, ...) end,
  replace         = function(...) return MacroCallFar(0x80C33, ...) end,
  rindex          = function(...) return MacroCallFar(0x80C2A, ...) end,
  Size2Str        = function(...) return MacroCallFar(0x80C59, ...) end,
  Sleep           = function(...) return MacroCallFar(0x80C2B, ...) end,
  string          = function(...) return MacroCallFar(0x80C2C, ...) end,
  StrPad          = function(...) return MacroCallFar(0x80C5F, ...) end,
  StrWrap         = function(...) return MacroCallFar(0x80C5A, ...) end,
  substr          = function(...) return MacroCallFar(0x80C2D, ...) end,
  testfolder      = function(...) return MacroCallFar(0x80C42, ...) end,
  trim            = function(...) return MacroCallFar(0x80C40, ...) end,
  ucase           = function(...) return MacroCallFar(0x80C2E, ...) end,
  waitkey         = function(...) return MacroCallFar(0x80C2F, ...) end,
  Window_Scroll   = function(...) return MacroCallFar(0x80C4A, ...) end,
  xlat            = function(...) return MacroCallFar(0x80C30, ...) end,
}

local properties = {
  Bof = function() return MacroCallFar(0x80413) end,
  CurPos = function() return MacroCallFar(0x80827) end,
  Empty = function() return MacroCallFar(0x80415) end,
  Eof = function() return MacroCallFar(0x80414) end,
  FullScreenMode = function() return MacroCallFar(0x80411) end,
  Height = function() return MacroCallFar(0x80829) end,
  IsUserAdmin = function() return MacroCallFar(0x80412) end,
  ItemCount = function() return MacroCallFar(0x80826) end,
  MacroArea = function() return MacroCallFar(0x80805) end,
  RootFolder = function() return MacroCallFar(0x80417) end,
  Selected = function() return MacroCallFar(0x80416) end,
  Title = function() return MacroCallFar(0x80828) end,
  Width = function() return MacroCallFar(0x8082A) end,
}

local prop_Area = {
  -- Note: 0x80400 is subtracted from opcodes here.
  Dialog = function() return MacroCallFar(0x04) end,
  Dialog_Autocompletion = function() return MacroCallFar(0x10) end,
  Disks = function() return MacroCallFar(0x06) end,
  Editor = function() return MacroCallFar(0x03) end,
  FindFolder = function() return MacroCallFar(0x0D) end,
  Help = function() return MacroCallFar(0x09) end,
  InfoPanel = function() return MacroCallFar(0x0A) end,
  MainMenu = function() return MacroCallFar(0x07) end,
  Menu = function() return MacroCallFar(0x08) end,
  Other = function() return MacroCallFar(0x00) end,
  QviewPanel = function() return MacroCallFar(0x0B) end,
  Search = function() return MacroCallFar(0x05) end,
  Shell = function() return MacroCallFar(0x01) end,
  Shell_Autocompletion = function() return MacroCallFar(0x0F) end,
  TreePanel = function() return MacroCallFar(0x0C) end,
  UserMenu = function() return MacroCallFar(0x0E) end,
  Viewer = function() return MacroCallFar(0x02) end,
}

local prop_APanel = {
  Bof = function() return MacroCallFar(0x80418) end,
  ColumnCount = function() return MacroCallFar(0x8081E) end,
  CurPos = function() return MacroCallFar(0x80816) end,
  Current = function() return MacroCallFar(0x80806) end,
  DriveType = function() return MacroCallFar(0x8081A) end,
  Eof = function() return MacroCallFar(0x8041A) end,
  FilePanel = function() return MacroCallFar(0x80426) end,
  Filter = function() return MacroCallFar(0x8042E) end,
  Folder = function() return MacroCallFar(0x80428) end,
  Format = function() return MacroCallFar(0x80824) end,
  Height = function() return MacroCallFar(0x8081C) end,
  HostFile = function() return MacroCallFar(0x80820) end,
  IsEmpty = function() return MacroCallFar(0x8041C) end,
  ItemCount = function() return MacroCallFar(0x80814) end,
  Left = function() return MacroCallFar(0x8042A) end,
  Lfn = function() return MacroCallFar(0x8042C) end,
  OPIFlags = function() return MacroCallFar(0x80818) end,
  Path = function() return MacroCallFar(0x8080A) end,
  Path0 = function() return MacroCallFar(0x8080C) end,
  Plugin = function() return MacroCallFar(0x80424) end,
  Prefix = function() return MacroCallFar(0x80822) end,
  Root = function() return MacroCallFar(0x80420) end,
  SelCount = function() return MacroCallFar(0x80808) end,
  Selected = function() return MacroCallFar(0x8041E) end,
  Type = function() return MacroCallFar(0x80812) end,
  UNCPath = function() return MacroCallFar(0x8080E) end,
  Visible = function() return MacroCallFar(0x80422) end,
  Width = function() return MacroCallFar(0x80810) end,
}

local prop_PPanel = {
  Bof = function() return MacroCallFar(0x80419) end,
  ColumnCount = function() return MacroCallFar(0x8081F) end,
  CurPos = function() return MacroCallFar(0x80817) end,
  Current = function() return MacroCallFar(0x80807) end,
  DriveType = function() return MacroCallFar(0x8081B) end,
  Eof = function() return MacroCallFar(0x8041B) end,
  FilePanel = function() return MacroCallFar(0x80427) end,
  Filter = function() return MacroCallFar(0x8042F) end,
  Folder = function() return MacroCallFar(0x80429) end,
  Format = function() return MacroCallFar(0x80825) end,
  Height = function() return MacroCallFar(0x8081D) end,
  HostFile = function() return MacroCallFar(0x80821) end,
  IsEmpty = function() return MacroCallFar(0x8041D) end,
  ItemCount = function() return MacroCallFar(0x80815) end,
  Left = function() return MacroCallFar(0x8042B) end,
  Lfn = function() return MacroCallFar(0x8042D) end,
  OPIFlags = function() return MacroCallFar(0x80819) end,
  Path = function() return MacroCallFar(0x8080B) end,
  Path0 = function() return MacroCallFar(0x8080D) end,
  Plugin = function() return MacroCallFar(0x80425) end,
  Prefix = function() return MacroCallFar(0x80823) end,
  Root = function() return MacroCallFar(0x80421) end,
  SelCount = function() return MacroCallFar(0x80809) end,
  Selected = function() return MacroCallFar(0x8041F) end,
  Type = function() return MacroCallFar(0x80813) end,
  UNCPath = function() return MacroCallFar(0x8080F) end,
  Visible = function() return MacroCallFar(0x80423) end,
  Width = function() return MacroCallFar(0x80811) end,
}

local prop_CmdLine = {
  Bof = function() return MacroCallFar(0x80430) end,
  Empty = function() return MacroCallFar(0x80432) end,
  Eof = function() return MacroCallFar(0x80431) end,
  Selected = function() return MacroCallFar(0x80433) end,
  CurPos = function() return MacroCallFar(0x8083C) end,
  ItemCount = function() return MacroCallFar(0x8083B) end,
  Value = function() return MacroCallFar(0x8083D) end,
}

local prop_Dlg = {
  CurPos = function() return MacroCallFar(0x80835) end,
  Info_Id = function() return MacroCallFar(0x80837) end,
  Info_Owner = function() return MacroCallFar(0x80838) end,
  ItemCount = function() return MacroCallFar(0x80834) end,
  ItemType = function() return MacroCallFar(0x80833) end,
  PrevPos = function() return MacroCallFar(0x80836) end,
}

local prop_Editor = {
  CurLine = function() return MacroCallFar(0x8082D) end,
  CurPos = function() return MacroCallFar(0x8082E) end,
  FileName = function() return MacroCallFar(0x8082B) end,
  Lines = function() return MacroCallFar(0x8082C) end,
  RealPos = function() return MacroCallFar(0x8082F) end,
  SelValue = function() return MacroCallFar(0x80832) end,
  State = function() return MacroCallFar(0x80830) end,
  Value = function() return MacroCallFar(0x80831) end,
}

local prop_Far = {
  Height = function() return MacroCallFar(0x80801) end,
  PID = function() return MacroCallFar(0x80804) end,
  Title = function() return MacroCallFar(0x80802) end,
  UpTime = function() return MacroCallFar(0x80803) end,
  Width = function() return MacroCallFar(0x80800) end,
}

local prop_Drv = {
  ShowMode = function() return MacroCallFar(0x8083F) end,
  ShowPos = function() return MacroCallFar(0x8083E) end,
}

local prop_Help = {
  FileName = function() return MacroCallFar(0x80840) end,
  SelTopic = function() return MacroCallFar(0x80842) end,
  Topic = function() return MacroCallFar(0x80841) end,
}

local prop_Menu = {
  Info_Id = function() return MacroCallFar(0x80844) end,
  Value = function() return MacroCallFar(0x80843) end,
}

local prop_Viewer = {
  FileName = function() return MacroCallFar(0x80839) end,
  State = function() return MacroCallFar(0x8083A) end,
}

local function RegisterProperties (namespace, proptable)
  local meta = { __metatable="access denied", __newindex=function() end }
  meta.__index = function(tb,nm)
    local f = proptable[nm]
    if f then return f() end
    error("property not supported: "..tostring(s), 2)
  end
  setmetatable(namespace, meta)
  return namespace
end

--==============================================================================
Area    = RegisterProperties({}, prop_Area)
APanel  = RegisterProperties({}, prop_APanel)
PPanel  = RegisterProperties({}, prop_PPanel)
CmdLine = RegisterProperties({}, prop_CmdLine)
Dlg     = RegisterProperties({}, prop_Dlg)
Editor  = RegisterProperties({}, prop_Editor)
Far     = RegisterProperties({}, prop_Far)
Drv     = RegisterProperties({}, prop_Drv)
Help    = RegisterProperties({}, prop_Help)
Menu    = RegisterProperties({}, prop_Menu)
Viewer  = RegisterProperties({}, prop_Viewer)