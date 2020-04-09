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
unit Settings;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ButtonPanel,
  Buttons, ExtCtrls, IniPropStorage, LCLTranslator, Details;

type

  { TFormSettings }

  TFormSettings = class(TForm)
    ButtonPanel: TButtonPanel;
    ComboBoxLanguage: TComboBox;
    FontDialog: TFontDialog;
    GroupBoxLanguage: TGroupBox;
    GroupBoxRun: TGroupBox;
    GroupBoxInterface: TGroupBox;
    IniPropStorage: TIniPropStorage;
    RadioButtonStart: TRadioButton;
    RadioButtonContinue: TRadioButton;
    ButtonFont: TSpeedButton;
    procedure ButtonFontClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure ComboBoxLanguageChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private

  public

  end;

var
  FormSettings: TFormSettings;

implementation

uses
  Main;

{$R *.lfm}

{ TFormSettings }

procedure TFormSettings.ButtonFontClick(Sender: TObject);
begin
  if FontDialog.Execute then
     begin
       FormMain.PageControlMain.Font.Assign(FontDialog.Font);
       FormDetails.PageControlMain.Font.Assign(FontDialog.Font);
     end;
end;

procedure TFormSettings.CancelButtonClick(Sender: TObject);
begin
  IniPropStorage.Restore;
end;

procedure TFormSettings.ComboBoxLanguageChange(Sender: TObject);
begin
  case ComboBoxLanguage.ItemIndex of
   0: SetDefaultLang('uz@lat');
   1: SetDefaultLang('uz@cyr');
   2: SetDefaultLang('ru');
 end;
end;

procedure TFormSettings.FormActivate(Sender: TObject);
begin
  FormMain.IniPropStorage.Save;
  IniPropStorage.Save;
end;

procedure TFormSettings.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  IniPropStorage.Restore;
end;

procedure TFormSettings.FormCreate(Sender: TObject);
begin
  IniPropStorage.IniFileName:=GetAppConfigDir(false)+'abid.ini';
end;

procedure TFormSettings.OKButtonClick(Sender: TObject);
begin
  FormMain.IniPropStorage.Save;
  IniPropStorage.Save;
end;

end.

