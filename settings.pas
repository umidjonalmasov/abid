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
  SysUtils, Forms, Dialogs, StdCtrls, ButtonPanel, Buttons, IniPropStorage,
  LCLTranslator, Details;

resourcestring
  NoTranslate = 'Ushbu tilga tarjimasi mavjud emas.';

type

  { TFormSettings }

  TFormSettings = class(TForm)
    ButtonPanel: TButtonPanel;
    ComboBoxLanguage: TComboBox;
    DefaultButton: TPanelBitBtn;
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
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DefaultButtonClick(Sender: TObject);
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
       FormMain.pcMain.Font.Assign(FontDialog.Font);
       FormDetails.pcMain.Font.Assign(FontDialog.Font);
     end;
  OKButtonClick(self);
end;

procedure TFormSettings.CancelButtonClick(Sender: TObject);
begin
  IniPropStorage.Restore;
end;

procedure TFormSettings.ComboBoxLanguageChange(Sender: TObject);
begin
  case ComboBoxLanguage.ItemIndex of
   0:
     begin
       SetDefaultLang('uz@lat');
       ComboBoxLanguage.Items.Clear;
       ComboBoxLanguage.Items.Add('Oʼzbek (lotin)');
       ComboBoxLanguage.Items.Add('Oʼzbek (kirill)');
       ComboBoxLanguage.Items.Add('Rus');
       ComboBoxLanguage.Text:=ComboBoxLanguage.Items.ValueFromIndex[0];
       if FormMain.PanelImage.Visible=true then
          begin
            FormMain.MenuItemImage.Caption:=ImageHide;
            FormMain.ButtonImage.Caption:=ImageHide;
          end
       else
          begin
            FormMain.MenuItemImage.Caption:=ImageShow;
            FormMain.ButtonImage.Caption:=ImageShow;
          end;
     end;
   1:
     begin
       if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'locale/abid.uz@cyr.po') then
       begin
         SetDefaultLang('uz@cyr');
         ComboBoxLanguage.Items.Clear;
         ComboBoxLanguage.Items.Add('Ўзбек (лотин)');
         ComboBoxLanguage.Items.Add('Ўзбек (кирилл)');
         ComboBoxLanguage.Items.Add('Рус');
         ComboBoxLanguage.Text:=ComboBoxLanguage.Items.ValueFromIndex[1];
         if FormMain.PanelImage.Visible=true then
            begin
              FormMain.MenuItemImage.Caption:=ImageHide;
              FormMain.ButtonImage.Caption:=ImageHide;
            end
         else
            begin
              FormMain.MenuItemImage.Caption:=ImageShow;
              FormMain.ButtonImage.Caption:=ImageShow;
            end;
       end
       else
        begin
         ShowMessage(NoTranslate);
         IniPropStorage.Restore;
        end;
     end;
   2:
     begin
       if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'locale/abid.ru.po') then
       begin
       SetDefaultLang('ru');
       ComboBoxLanguage.Items.Clear;
       ComboBoxLanguage.Items.Add('Узбекский (латиница)');
       ComboBoxLanguage.Items.Add('Узбекский (кириллица)');
       ComboBoxLanguage.Items.Add('Русский');
       ComboBoxLanguage.Text:=ComboBoxLanguage.Items.ValueFromIndex[2];
       if FormMain.PanelImage.Visible=true then
          begin
            FormMain.MenuItemImage.Caption:=ImageHide;
            FormMain.ButtonImage.Caption:=ImageHide;
          end
       else
          begin
            FormMain.MenuItemImage.Caption:=ImageShow;
            FormMain.ButtonImage.Caption:=ImageShow;
          end;
     end
       else
       begin
         ShowMessage(NoTranslate);
         IniPropStorage.Restore;
        end;
     end;
 end;
  OKButtonClick(self);
end;

procedure TFormSettings.FormActivate(Sender: TObject);
begin
  OKButtonClick(self);
  ComboBoxLanguageChange(self);
end;

procedure TFormSettings.FormClose(Sender: TObject);
begin
  IniPropStorage.Restore;
end;

procedure TFormSettings.FormCreate(Sender: TObject);
begin
  IniPropStorage.IniFileName:=GetAppConfigDir(false)+'abid.ini';
end;

procedure TFormSettings.DefaultButtonClick(Sender: TObject);
begin
  RadioButtonStart.Checked:=true;
  ComboBoxLanguage.ItemIndex:=0;
  ComboBoxLanguageChange(self);
  FormMain.pcMain.Font.SetDefault;
  FormDetails.pcMain.Font.SetDefault;
end;

procedure TFormSettings.OKButtonClick(Sender: TObject);
begin
  FormMain.IniPropStorage.Save;
  IniPropStorage.Save;
end;

end.

