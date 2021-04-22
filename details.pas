{
  Copyright (C) 2015-2021 Umidjon Almasov

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
  SysUtils, Forms, Dialogs, LCLIntf, LCLType, ExtCtrls, ComCtrls, Buttons,
  StdCtrls, IniPropStorage, BASS;

resourcestring
  VersionInvalid = 'BASS version is invalid';
  SoundError = 'Sound initialization error!';
  ErrorCode = '(Error code: ';
  NoSound = 'The program will continue without sound.';

type

  { TFormDetails }

  TFormDetails = class(TForm)
    bPause: TSpeedButton;
    bPlay: TSpeedButton;
    bStop: TSpeedButton;
    IniPropStorage: TIniPropStorage;
    lAlaAr: TLabel;
    lAlaPr: TLabel;
    lAlaTr: TLabel;
    lTahmidAr: TLabel;
    lTahmidPr: TLabel;
    lTahmidTr: TLabel;
    lTakbirTAr: TLabel;
    lTakbirTPr: TLabel;
    lTakbirTTr: TLabel;
    lAziymAr: TLabel;
    lAziymPr: TLabel;
    lAziymTr: TLabel;
    lAzonAr: TLabel;
    lAzonBomdodAr: TLabel;
    lAzonBomdodPr: TLabel;
    lAzonBomdodTr: TLabel;
    lAzonDuoAr: TLabel;
    lAzonDuoPr: TLabel;
    lAzonDuoTr: TLabel;
    lAzonPr: TLabel;
    lAzonTr: TLabel;
    lBasmalaAr: TLabel;
    lBasmalaPr: TLabel;
    lBasmalaTr: TLabel;
    lDuoAr: TLabel;
    lDuoFAr: TLabel;
    lDuoFPr: TLabel;
    lDuoFTr: TLabel;
    lDuoPr: TLabel;
    lDuoTr: TLabel;
    lFalaqAr: TLabel;
    lFalaqPr: TLabel;
    lFalaqTr: TLabel;
    lFotihaAr: TLabel;
    lFotihaPr: TLabel;
    lFotihaTr: TLabel;
    lHamdAr: TLabel;
    lHamdPr: TLabel;
    lHamdTr: TLabel;
    lIqomatAr: TLabel;
    lIqomatPr: TLabel;
    lIqomatTr: TLabel;
    lIxlosAr: TLabel;
    lIxlosPr: TLabel;
    lIxlosTr: TLabel;
    lKavsarAr: TLabel;
    lKavsarPr: TLabel;
    lKavsarTr: TLabel;
    lKursiAr: TLabel;
    lKursiPr: TLabel;
    lKursiTr: TLabel;
    lNasAr: TLabel;
    lNasPr: TLabel;
    lNasTr: TLabel;
    lQunutAr: TLabel;
    lQunutPr: TLabel;
    lQunutTr: TLabel;
    lRobbanaAr: TLabel;
    lRobbanaPr: TLabel;
    lRobbanaTr: TLabel;
    lSalavotAr: TLabel;
    lSalavotPr: TLabel;
    lSalavotTr: TLabel;
    lSalomAr: TLabel;
    lSalomPr: TLabel;
    lSalomTr: TLabel;
    lSanoAr: TLabel;
    lSanoPr: TLabel;
    lSanoTr: TLabel;
    lTasbehAr: TLabel;
    lTasbehPr: TLabel;
    lTasbehTr: TLabel;
    lTaavvuzAr: TLabel;
    lTaavvuzPr: TLabel;
    lTaavvuzTr: TLabel;
    lTakbirAr: TLabel;
    lTakbirPr: TLabel;
    lTakbirTr: TLabel;
    lTashahhudAr: TLabel;
    lTashahhudPr: TLabel;
    lTashahhudTr: TLabel;
    lTasmeAr: TLabel;
    lTasmePr: TLabel;
    lTasmeTr: TLabel;
    lTahlilAr: TLabel;
    lTahlilPr: TLabel;
    lTahlilTr: TLabel;
    PageControl: TPageControl;
    pTahmid: TPanel;
    pTakbirT: TPanel;
    pBottom: TPanel;
    ProgressBar: TProgressBar;
    pTasbeh: TPanel;
    sbAla: TScrollBox;
    sbAziym: TScrollBox;
    sbAzon: TScrollBox;
    sbAzonBomdod: TScrollBox;
    sbAzonDuo: TScrollBox;
    sbBasmala: TScrollBox;
    sbDuo: TScrollBox;
    sbDuoF: TScrollBox;
    sbFalaq: TScrollBox;
    sbFotiha: TScrollBox;
    sbHamd: TScrollBox;
    sbIqomat: TScrollBox;
    sbIxlos: TScrollBox;
    sbKavsar: TScrollBox;
    sbKursi: TScrollBox;
    sbNas: TScrollBox;
    sbQunut: TScrollBox;
    sbRobbana: TScrollBox;
    sbSalavot: TScrollBox;
    sbSalom: TScrollBox;
    sbSano: TScrollBox;
    sbTaavvuz: TScrollBox;
    sbTakbir: TScrollBox;
    sbTasbehot: TScrollBox;
    sbTashahhud: TScrollBox;
    sbTasme: TScrollBox;
    tProgress: TTimer;
    tPosition: TTimer;
    tsAla: TTabSheet;
    tsAziym: TTabSheet;
    tsAzon: TTabSheet;
    tsAzonBomdod: TTabSheet;
    tsAzonDuo: TTabSheet;
    tsBasmala: TTabSheet;
    tsDuo: TTabSheet;
    tsDuoF: TTabSheet;
    tsFalaq: TTabSheet;
    tsFotiha: TTabSheet;
    tsHamd: TTabSheet;
    tsIqomat: TTabSheet;
    tsIxlos: TTabSheet;
    tsKavsar: TTabSheet;
    tsKursi: TTabSheet;
    tsNas: TTabSheet;
    tsQunut: TTabSheet;
    tsRobbana: TTabSheet;
    tsSalavot: TTabSheet;
    tsSalom: TTabSheet;
    tsSano: TTabSheet;
    tsTaavvuz: TTabSheet;
    tsTakbir: TTabSheet;
    tsTasbehot: TTabSheet;
    tsTashahhud: TTabSheet;
    tsTasme: TTabSheet;
    procedure bPauseClick(Sender: TObject);
    procedure bPlayClick(Sender: TObject);
    procedure bStopClick(Sender: TObject);
    procedure ChannelPos;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tPositionTimer(Sender: TObject);
    procedure tProgressTimer(Sender: TObject);
  private
    str: HSTREAM;

  public

  end;

var
  FormDetails: TFormDetails;
  i: boolean=true;
  j: boolean=true;

implementation

{$R *.lfm}

{ TFormDetails }

procedure TFormDetails.FormCreate(Sender: TObject);
begin
  IniPropStorage.IniFileName:=GetAppConfigDir(false)+'abid.ini';
end;

procedure TFormDetails.FormActivate(Sender: TObject);
var
  f: PChar;
begin
  if (HIWORD(BASS_GetVersion) <> BASSVERSION) then
    begin
     if (i <> false) then
      ShowMessage(VersionInvalid + sLineBreak + NoSound);
     bPlay.Enabled:=false;
     i:=false;
    end
  else
  {$IFDEF MSWINDOWS}
  if not BASS_Init(-1, 44100, 0, Handle, nil)
  {$ELSE}
  if not BASS_Init(-1, 44100, 0, nil, nil)
  {$ENDIF}
  then
    begin
     if (j <> false) then
      ShowMessage(SoundError + sLineBreak + ErrorCode + IntToStr(BASS_ErrorGetCode) + ')' + sLineBreak + NoSound);
     bPlay.Enabled:=false;
     j:=false;
    end
  else
    case PageControl.ActivePageIndex of
    0: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azonbomdod.ogg') then
         begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azonbomdod.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    1: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azon.ogg') then
         begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azon.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    2: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azonduo.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/azonduo.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    3: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/iqomat.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/iqomat.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    4: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/takbir.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/takbir.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    5: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/sano.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/sano.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    6: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/taavvuz.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/taavvuz.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    7:  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/basmala.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/basmala.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    8: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/fotiha.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/fotiha.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    9: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/kavsar.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/kavsar.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    10: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/ixlos.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/ixlos.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    11: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/falaq.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/falaq.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    12: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/nas.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/nas.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    13: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/aziym.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/aziym.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    14: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tasme.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tasme.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    15: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/hamd.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/hamd.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    16: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/ala.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/ala.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    17: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tashahhud.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tashahhud.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    18: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/salavot.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/salavot.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    19: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/robbana.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/robbana.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    20: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/salom.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/salom.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    21: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/qunut.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/qunut.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    22: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/duof.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/duof.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    23: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tasbehot.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/tasbehot.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    24: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/kursi.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/kursi.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    25: if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/duo.ogg') then
          begin
           f := PChar({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'sound/duo.ogg');
           bPlay.Enabled:=true;
         end
        else
          bPlay.Enabled:=false;
    end;
  str := BASS_StreamCreateFile(False, f, 0, 0, 0);
end;

procedure TFormDetails.bPlayClick(Sender: TObject);
begin
  BASS_ChannelPlay(str, true);
  ChannelPos;
  ProgressBar.Max:=Trunc(BASS_ChannelGetLength(str, 0));
  tProgress.Enabled:=true;
  bPlay.Enabled:=false;
  bPause.Enabled:=true;
  bStop.Enabled:=true;
end;

procedure TFormDetails.bStopClick(Sender: TObject);
begin
  BASS_ChannelStop(str);
  tPosition.Interval:=0;
  bPlay.Enabled:=true;
  bPause.Enabled:=false;
  bStop.Enabled:=false;
end;

procedure TFormDetails.bPauseClick(Sender: TObject);
begin
  if BASS_ChannelIsActive(str) = BASS_ACTIVE_PLAYING then
    begin
     BASS_ChannelPause(str);
     tPosition.Enabled:=false;
    end
  else
    begin
      BASS_ChannelPlay(str, false);
      ChannelPos;
    end;
  bPlay.Enabled:=false;
  bPause.Enabled:=true;
  bStop.Enabled:=true;
end;

procedure TFormDetails.ChannelPos;
begin
  tPosition.Interval:=Round(BASS_ChannelBytes2Seconds(str,(BASS_ChannelGetLength(
                             str, 0)) - BASS_ChannelGetPosition(str, 0)))*1000;
  tPosition.Enabled:=true;
end;

procedure TFormDetails.tPositionTimer(Sender: TObject);
begin
  tPosition.Interval:=0;
  bPlay.Enabled:=true;
  bPause.Enabled:=false;
  bStop.Enabled:=false;
end;

procedure TFormDetails.tProgressTimer(Sender: TObject);
begin
  ProgressBar.Position:=Trunc(BASS_ChannelGetPosition(str, 0));
end;

procedure TFormDetails.FormClose(Sender: TObject);
begin
  BASS_Free();
  bPause.Enabled:=false;
  bStop.Enabled:=false;
end;

end.

