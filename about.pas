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
unit About;

{$mode objfpc}{$H+}

interface

uses
  Forms, ComCtrls, StdCtrls, ExtCtrls, LCLIntf, ButtonPanel;

type

  { TFormAbout }

  TFormAbout = class(TForm)
    ButtonPanel: TButtonPanel;
    iAzanKz: TImage;
    iBass: TImage;
    iIslomUz: TImage;
    iLazarus: TImage;
    iLogo: TImage;
    iMint: TImage;
    lVersion: TLabel;
    lAcknowledgements: TLabel;
    lAzanKz: TLabel;
    lAzanKzWeb: TLabel;
    lBasmala: TLabel;
    lBass: TLabel;
    lBassWeb: TLabel;
    lCopyright: TLabel;
    lDedication: TLabel;
    lDescription: TLabel;
    lHadis: TLabel;
    lIslomUz: TLabel;
    lIslomUzWeb: TLabel;
    lLazarus: TLabel;
    lLazarusWeb: TLabel;
    lMint: TLabel;
    lMintWeb: TLabel;
    lName: TLabel;
    lQuron: TLabel;
    lWeb: TLabel;
    mLicense: TMemo;
    PageControl: TPageControl;
    pAzanKz: TPanel;
    pBass: TPanel;
    pIslomUz: TPanel;
    pLazarus: TPanel;
    pMint: TPanel;
    tsAbid: TTabSheet;
    tsAcknowledgements: TTabSheet;
    tsLicense: TTabSheet;
    procedure FormClose(Sender: TObject);
    procedure lAzanKzWebClick(Sender: TObject);
    procedure lBassWebClick(Sender: TObject);
    procedure lIslomUzWebClick(Sender: TObject);
    procedure lLazarusWebClick(Sender: TObject);
    procedure lMintWebClick(Sender: TObject);
    procedure lWebClick(Sender: TObject);
  private

  public

  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.lfm}

{ TFormAbout }

procedure TFormAbout.lWebClick(Sender: TObject);
begin
  OpenURL('https://github.com/umidjonalmasov/abid');
end;

procedure TFormAbout.FormClose(Sender: TObject);
begin
  PageControl.ActivePage:=tsAbid;
end;

procedure TFormAbout.lMintWebClick(Sender: TObject);
begin
  OpenURL('https://linuxmint.com/');
end;

procedure TFormAbout.lIslomUzWebClick(Sender: TObject);
begin
  OpenURL('https://islom.uz/');
end;

procedure TFormAbout.lAzanKzWebClick(Sender: TObject);
begin
  OpenURL('https://azan.kz/');
end;

procedure TFormAbout.lLazarusWebClick(Sender: TObject);
begin
  OpenURL('https://www.lazarus-ide.org/');
end;

procedure TFormAbout.lBassWebClick(Sender: TObject);
begin
  OpenURL('http://www.un4seen.com/');
end;

end.

