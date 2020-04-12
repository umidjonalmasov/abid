{
  Copyright (C) 2015-2020 Umidjon Almasov

  This source is free software; you can redistribute it and/or modify it under
  the terms of the GNU General Public License as published by the Free
  Software Foundation; either version 3 of the License, or (at your option)
  any later version.

  This code is distributed in the hope that it will be useful, but WITHOUT ANY
  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
  details.

  A copy of the GNU General Public License is available on the World Wide Web
  at <http://www.gnu.org/copyleft/gpl.html>. You can also obtain it by writing
  to the Free Software Foundation, Inc., 51 Franklin Street - Fifth Floor,
  Boston, MA 02110-1335, USA.
}
unit Details;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, LCLIntf, LCLType, Controls, Graphics, Dialogs,
  ExtCtrls, ComCtrls, Buttons, StdCtrls, BASS;

resourcestring
  VersionError = 'BASS versiyasi noto''g''ri';
  SoundError = 'Ovoz initsializatsiya xatosi!';
  ErrorCode = '(Xato kodi: ';

type

  { TFormDetails }

  TFormDetails = class(TForm)
    LabelAllohuAkbarAr: TLabel;
    LabelAllohuAkbarPr: TLabel;
    LabelAllohuAkbarTr: TLabel;
    LabelDuoAr: TLabel;
    LabelDuoPr: TLabel;
    LabelDuoTr: TLabel;
    LabelKursiAr: TLabel;
    LabelKursiPr: TLabel;
    LabelKursiTr: TLabel;
    LabelTavhidAr: TLabel;
    LabelSubhanallohAr: TLabel;
    LabelRobbanaAr: TLabel;
    LabelDuoFAr: TLabel;
    LabelDuoFPr: TLabel;
    LabelDuoFTr: TLabel;
    LabelSalomAr: TLabel;
    LabelRobbanaPr: TLabel;
    LabelSalomPr: TLabel;
    LabelRobbanaTr: TLabel;
    LabelAziymAr: TLabel;
    LabelAlaAr: TLabel;
    LabelAlaPr: TLabel;
    LabelAlaTr: TLabel;
    LabelSalomTr: TLabel;
    LabelAlhamdulillahAr: TLabel;
    LabelSubhanallohPr: TLabel;
    LabelAlhamdulillahPr: TLabel;
    LabelSubhanallohTr: TLabel;
    LabelAlhamdulillahTr: TLabel;
    LabelTashahhudAr: TLabel;
    LabelSalavotAr: TLabel;
    LabelQunutAr: TLabel;
    LabelTashahhudPr: TLabel;
    LabelSalavotPr: TLabel;
    LabelQunutPr: TLabel;
    LabelTashahhudTr: TLabel;
    LabelTasmeAr: TLabel;
    LabelAziymPr: TLabel;
    LabelHamdAr: TLabel;
    LabelTasmePr: TLabel;
    LabelAziymTr: TLabel;
    LabelHamdPr: TLabel;
    LabelTasmeTr: TLabel;
    LabelFalaqAr: TLabel;
    LabelNasAr: TLabel;
    LabelFalaqPr: TLabel;
    LabelNasPr: TLabel;
    LabelFalaqTr: TLabel;
    LabelNasTr: TLabel;
    LabelKavsarAr: TLabel;
    LabelIxlosAr: TLabel;
    LabelKavsarPr: TLabel;
    LabelIxlosPr: TLabel;
    LabelKavsarTr: TLabel;
    LabelIqomatAr: TLabel;
    LabelFotihaAr: TLabel;
    LabelIqomatDesc: TLabel;
    LabelFotihaPr: TLabel;
    LabelFotihaTr: TLabel;
    LabelIxlosTr: TLabel;
    LabelHamdTr: TLabel;
    LabelSanoAr: TLabel;
    LabelSanoPr: TLabel;
    LabelSanoTr: TLabel;
    LabelBasmalaAr: TLabel;
    LabelBasmalaPr: TLabel;
    LabelBasmalaTr: TLabel;
    LabelTakbirAr: TLabel;
    LabelAzonDuoPr: TLabel;
    LabelAzonDuoAr: TLabel;
    LabelAzonAr: TLabel;
    LabelAzonDesc: TLabel;
    LabelAzonBomdodPr: TLabel;
    LabelTaavvuzAr: TLabel;
    LabelTakbirPr: TLabel;
    LabelAzonDuoTr: TLabel;
    LabelTaavvuzPr: TLabel;
    LabelTakbirTr: TLabel;
    LabelAzonPr: TLabel;
    LabelAzonBomdodTr: TLabel;
    LabelAzonBomdodAr: TLabel;
    LabelAzonBomdodDesc: TLabel;
    LabelIqomatPr: TLabel;
    LabelAzonTr: TLabel;
    LabelIqomatTr: TLabel;
    LabelTaavvuzTr: TLabel;
    LabelSalavotTr: TLabel;
    LabelQunutTr: TLabel;
    LabelTavhidPr: TLabel;
    LabelTavhidTr: TLabel;
    PageControlMain: TPageControl;
    PanelAllohuAkbar: TPanel;
    PanelSubhanalloh: TPanel;
    PanelBottom: TPanel;
    ButtonPlay: TSpeedButton;
    ButtonPause: TSpeedButton;
    ButtonStop: TSpeedButton;
    PanelAlhamdulillah: TPanel;
    ScrollBoxDuo: TScrollBox;
    ScrollBoxKursi: TScrollBox;
    ScrollBoxTasbehot: TScrollBox;
    ScrollBoxRobbana: TScrollBox;
    ScrollBoxAziym: TScrollBox;
    ScrollBoxAla: TScrollBox;
    ScrollBoxDuoF: TScrollBox;
    ScrollBoxSalom: TScrollBox;
    ScrollBoxTashahhud: TScrollBox;
    ScrollBoxTasme: TScrollBox;
    ScrollBoxNas: TScrollBox;
    ScrollBoxFotiha: TScrollBox;
    ScrollBoxFalaq: TScrollBox;
    ScrollBoxKavsar: TScrollBox;
    ScrollBoxIxlos: TScrollBox;
    ScrollBoxHamd: TScrollBox;
    ScrollBoxSano: TScrollBox;
    ScrollBoxBasmala: TScrollBox;
    ScrollBoxTakbir: TScrollBox;
    ScrollBoxIqomat: TScrollBox;
    ScrollBoxAzonDuo: TScrollBox;
    ScrollBoxAzonBomdod: TScrollBox;
    ScrollBoxAzon: TScrollBox;
    ScrollBoxTaavvuz: TScrollBox;
    ScrollBoxSalavot: TScrollBox;
    ScrollBoxQunut: TScrollBox;
    TabSheetDuo: TTabSheet;
    TabSheetKursi: TTabSheet;
    TabSheetTasbehot: TTabSheet;
    TabSheetDuoF: TTabSheet;
    TabSheetQunut: TTabSheet;
    TabSheetSalom: TTabSheet;
    TabSheetRobbana: TTabSheet;
    TabSheetSalavot: TTabSheet;
    TabSheetTashahhud: TTabSheet;
    TabSheetAla: TTabSheet;
    TabSheetHamd: TTabSheet;
    TabSheetTasme: TTabSheet;
    TabSheetAziym: TTabSheet;
    TabSheetNas: TTabSheet;
    TabSheetFalaq: TTabSheet;
    TabSheetIxlos: TTabSheet;
    TabSheetKavsar: TTabSheet;
    TabSheetFotiha: TTabSheet;
    TabSheetBasmala: TTabSheet;
    TabSheetTaavvuz: TTabSheet;
    TabSheetSano: TTabSheet;
    TabSheetTakbir: TTabSheet;
    TabSheetIqomat: TTabSheet;
    TabSheetAzonDuo: TTabSheet;
    TabSheetAzon: TTabSheet;
    TabSheetAzonBomdod: TTabSheet;
    Timer: TTimer;
    procedure ButtonPauseClick(Sender: TObject);
    procedure ButtonPlayClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ChannelPos;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure TimerTimer(Sender: TObject);
  private
    str: HSTREAM;
    procedure Error(msg: string);

  public

  end;

var
  FormDetails: TFormDetails;

implementation

{$R *.lfm}

{ TFormDetails }

procedure TFormDetails.ButtonPlayClick(Sender: TObject);
begin
  BASS_ChannelPlay(str, true);
  ChannelPos;
  ButtonPlay.Enabled:=false;
  ButtonPause.Enabled:=true;
  ButtonStop.Enabled:=true;
end;

procedure TFormDetails.ButtonStopClick(Sender: TObject);
begin
  BASS_ChannelStop(str);
  ButtonPlay.Enabled:=true;
  ButtonPause.Enabled:=false;
  ButtonStop.Enabled:=false;
end;

procedure TFormDetails.ButtonPauseClick(Sender: TObject);
begin
  if BASS_ChannelIsActive(str) = BASS_ACTIVE_PLAYING then
    begin
     BASS_ChannelPause(str);
     Timer.Enabled:=false;
    end
  else
    begin
      BASS_ChannelPlay(str, false);
      ChannelPos;
    end;
  ButtonPlay.Enabled:=false;
  ButtonPause.Enabled:=true;
  ButtonStop.Enabled:=true;
end;

procedure TFormDetails.FormActivate(Sender: TObject);
var
  f: PChar;
begin
  if (HIWORD(BASS_GetVersion) <> BASSVERSION) then
    begin
      MessageBox(0,PChar(VersionError),nil,MB_ICONERROR);
      Halt;
    end;
  {$IFDEF MSWINDOWS}
  if not BASS_Init(-1, 44100, 0, Handle, nil)
  {$ELSE}
  if not BASS_Init(-1, 44100, 0, nil, nil)
  {$ENDIF}
  then
    begin
      Error(SoundError);
      ButtonPlay.Enabled:=false;
    end
  else
    case PageControlMain.ActivePageIndex of
    0: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azonbomdod.ogg') then
         begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azonbomdod.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    1: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azon.ogg') then
         begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azon.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    2: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azonduo.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azonduo.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    3: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/iqomat.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/iqomat.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    4: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/takbir.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/takbir.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    5: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/sano.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/sano.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    6: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/taavvuz.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/taavvuz.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    7:  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/basmala.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/basmala.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    8: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/fotiha.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/fotiha.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    9: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/kavsar.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/kavsar.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    10: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/ixlos.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/ixlos.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    11: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/falaq.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/falaq.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    12: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/nas.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/nas.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    13: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/aziym.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/aziym.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    14: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tasme.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tasme.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    15: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/hamd.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/hamd.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    16: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/ala.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/ala.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    17: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tashahhud.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tashahhud.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    18: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/salavot.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/salavot.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    19: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/robbana.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/robbana.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    20: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/salom.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/salom.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    21: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/qunut.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/qunut.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    22: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/duof.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/duof.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    23: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tasbehot.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tasbehot.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    24: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/kursi.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/kursi.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    25: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/duo.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/duo.ogg');
           ButtonPlay.Enabled:=true;
         end
        else
          ButtonPlay.Enabled:=false;
    end;
  str := BASS_StreamCreateFile(False, f, 0, 0, 0);
end;

procedure TFormDetails.Error(msg: string);
var
  s: string;
begin
  s := msg + #13#10 + ErrorCode + IntToStr(BASS_ErrorGetCode) + ')';
  MessageBox(Handle, PChar(s), nil, 0);
end;

procedure TFormDetails.ChannelPos;
begin
  Timer.Interval:=Trunc(BASS_ChannelBytes2Seconds(str,(BASS_ChannelGetLength(
                             str, 0)) - BASS_ChannelGetPosition(str, 0)))*1000;
  Timer.Enabled:=true;
end;

procedure TFormDetails.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  BASS_Free();
  ButtonPause.Enabled:=false;
  ButtonStop.Enabled:=false;
  Timer.Enabled:=false;
end;

procedure TFormDetails.TimerTimer(Sender: TObject);
begin
  ButtonPlay.Enabled:=true;
  ButtonPause.Enabled:=false;
  ButtonStop.Enabled:=false;
end;

end.

