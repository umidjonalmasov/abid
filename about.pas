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
unit About;

{$mode objfpc}{$H+}

interface

uses
  Forms, ComCtrls, StdCtrls, ExtCtrls, LCLIntf, ButtonPanel, Classes;

type

  { TFormAbout }

  TFormAbout = class(TForm)
    ButtonPanel: TButtonPanel;
    ImageIslomUz: TImage;
    ImageAzanKz: TImage;
    ImageLazarus: TImage;
    ImageBass: TImage;
    Image5: TImage;
    ImageLogo: TImage;
    LabelIslomUz: TLabel;
    LabelMintWeb: TLabel;
    LabelContributors: TLabel;
    LabelIslomUzWeb: TLabel;
    LabelAzanKz: TLabel;
    LabelAzanKzWeb: TLabel;
    LabelLazarus: TLabel;
    LabelLazarusWeb: TLabel;
    LabelBass: TLabel;
    LabelBassWeb: TLabel;
    LabelMint: TLabel;
    LabelDedication: TLabel;
    LabelHadis: TLabel;
    LabelQuron: TLabel;
    LabelDescription: TLabel;
    LabelWeb: TLabel;
    LabelCopyright: TLabel;
    LabelName: TLabel;
    LabelBasmala: TLabel;
    MemoLicense: TMemo;
    PageControl: TPageControl;
    PanelIslonUz: TPanel;
    PanelAzanKz: TPanel;
    PanelLazarus: TPanel;
    PanelBass: TPanel;
    PanelMint: TPanel;
    TabSheetAbid: TTabSheet;
    TabSheetContributors: TTabSheet;
    TabSheetLicense: TTabSheet;
    procedure FormClose(Sender: TObject);
    procedure LabelMintWebClick(Sender: TObject);
    procedure LabelIslomUzWebClick(Sender: TObject);
    procedure LabelAzanKzWebClick(Sender: TObject);
    procedure LabelLazarusWebClick(Sender: TObject);
    procedure LabelBassWebClick(Sender: TObject);
    procedure LabelWebClick(Sender: TObject);
    procedure PanelAzanKzClick(Sender: TObject);
    procedure PanelIslomUzClick(Sender: TObject);
  private

  public

  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.lfm}

{ TFormAbout }

procedure TFormAbout.LabelWebClick(Sender: TObject);
begin
  OpenURL('https://github.com/umidjonalmasov/abid');
end;

procedure TFormAbout.FormClose(Sender: TObject);
begin
  PageControl.ActivePage:=TabSheetAbid;
end;

procedure TFormAbout.LabelMintWebClick(Sender: TObject);
begin
  OpenURL('https://linuxmint.com/');
end;

procedure TFormAbout.LabelIslomUzWebClick(Sender: TObject);
begin
  OpenURL('https://islom.uz/');
end;

procedure TFormAbout.LabelAzanKzWebClick(Sender: TObject);
begin
  OpenURL('https://azan.kz/');
end;

procedure TFormAbout.LabelLazarusWebClick(Sender: TObject);
begin
  OpenURL('https://www.lazarus-ide.org/');
end;

procedure TFormAbout.LabelBassWebClick(Sender: TObject);
begin
  OpenURL('http://www.un4seen.com/');
end;

procedure TFormAbout.PanelAzanKzClick(Sender: TObject);
begin
  OpenURL('https://azan.kz/');
end;

procedure TFormAbout.PanelIslomUzClick(Sender: TObject);
begin
  OpenURL('https://islom.uz/');
end;

end.

