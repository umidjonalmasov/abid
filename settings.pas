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
  NoTranslation = 'There is no translation into this language.';
  SelectFont = 'Select a font';

type

  { TFormSettings }

  TFormSettings = class(TForm)
    ButtonPanel: TButtonPanel;
    cbLanguage: TComboBox;
    FontDialog: TFontDialog;
    gbInterface: TGroupBox;
    gbLanguage: TGroupBox;
    gbRun: TGroupBox;
    IniPropStorage: TIniPropStorage;
    rbContinue: TRadioButton;
    rbStart: TRadioButton;
    sbFont: TSpeedButton;
    procedure CancelButtonClick(Sender: TObject);
    procedure cbLanguageChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HelpButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure sbFontClick(Sender: TObject);

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

procedure TFormSettings.sbFontClick(Sender: TObject);
begin
  FontDialog.Title:=SelectFont;
  if FontDialog.Execute then
     begin
       FormMain.pcMain.Font.Assign(FontDialog.Font);
       FormDetails.PageControl.Font.Assign(FontDialog.Font);
     end;
  OKButtonClick(self);
end;

procedure TFormSettings.CancelButtonClick(Sender: TObject);
begin
  IniPropStorage.Restore;
end;

procedure TFormSettings.cbLanguageChange(Sender: TObject);
begin
  case cbLanguage.ItemIndex of
   0:
     begin
       if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'locale/abid.en.po') then
       begin
       SetDefaultLang('en');
       cbLanguage.Items.Clear;
       cbLanguage.Items.Add('English');
       cbLanguage.Items.Add('Uzbek (latin)');
       cbLanguage.Items.Add('Uzbek (cyrillic)');
       cbLanguage.Items.Add('Russian');
       cbLanguage.Text:=cbLanguage.Items.ValueFromIndex[0];
       if FormMain.pImage.Visible=true then
          begin
            FormMain.miImage.Caption:=HideImage;
            FormMain.bImage.Caption:=HideImage;
          end
       else
          begin
            FormMain.miImage.Caption:=ShowImage;
            FormMain.bImage.Caption:=ShowImage;
          end;
        end
      else
      begin
       ShowMessage(NoTranslation);
       IniPropStorage.Restore;
      end;
     end;
   1:
     begin
       if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'locale/abid.uz_Latn.po') then
       begin
       SetDefaultLang('uz_Latn');
       cbLanguage.Items.Clear;
       cbLanguage.Items.Add('Ingliz');
       cbLanguage.Items.Add('Oʼzbek (lotin)');
       cbLanguage.Items.Add('Oʼzbek (kirill)');
       cbLanguage.Items.Add('Rus');
       cbLanguage.Text:=cbLanguage.Items.ValueFromIndex[1];
       if FormMain.pImage.Visible=true then
          begin
            FormMain.miImage.Caption:=HideImage;
            FormMain.bImage.Caption:=HideImage;
          end
       else
          begin
            FormMain.miImage.Caption:=ShowImage;
            FormMain.bImage.Caption:=ShowImage;
          end;
        end
      else
      begin
       ShowMessage(NoTranslation);
       IniPropStorage.Restore;
      end;
     end;
   2:
     begin
       if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'locale/abid.uz.po') then
       begin
           SetDefaultLang('uz');
           cbLanguage.Items.Clear;
           cbLanguage.Items.Add('Инглиз');
           cbLanguage.Items.Add('Ўзбек (лотин)');
           cbLanguage.Items.Add('Ўзбек (кирилл)');
           cbLanguage.Items.Add('Рус');
           cbLanguage.Text:=cbLanguage.Items.ValueFromIndex[2];
           if FormMain.pImage.Visible=true then
              begin
                FormMain.miImage.Caption:=HideImage;
                FormMain.bImage.Caption:=HideImage;
              end
           else
              begin
                FormMain.miImage.Caption:=ShowImage;
                FormMain.bImage.Caption:=ShowImage;
              end;
          end
        else
          begin
           ShowMessage(NoTranslation);
           IniPropStorage.Restore;
          end;
     end;
   3:
     begin
       if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'locale/abid.ru.po') then
       begin
       SetDefaultLang('ru');
       cbLanguage.Items.Clear;
       cbLanguage.Items.Add('Английский');
       cbLanguage.Items.Add('Узбекский (латиница)');
       cbLanguage.Items.Add('Узбекский (кириллица)');
       cbLanguage.Items.Add('Русский');
       cbLanguage.Text:=cbLanguage.Items.ValueFromIndex[3];
       if FormMain.pImage.Visible=true then
          begin
            FormMain.miImage.Caption:=HideImage;
            FormMain.bImage.Caption:=HideImage;
          end
       else
          begin
            FormMain.miImage.Caption:=ShowImage;
            FormMain.bImage.Caption:=ShowImage;
          end;
     end
       else
       begin
         ShowMessage(NoTranslation);
         IniPropStorage.Restore;
        end;
     end;
 end;
  OKButtonClick(self);
end;

procedure TFormSettings.FormActivate(Sender: TObject);
begin
  OKButtonClick(self);
  cbLanguageChange(self);
end;

procedure TFormSettings.FormClose(Sender: TObject);
begin
  IniPropStorage.Restore;
end;

procedure TFormSettings.FormCreate(Sender: TObject);
begin
  IniPropStorage.IniFileName:=GetAppConfigDir(false)+'abid.ini';
end;

procedure TFormSettings.HelpButtonClick(Sender: TObject);
begin
  rbStart.Checked:=true;
  cbLanguage.ItemIndex:=0;
  cbLanguageChange(self);
  FormMain.pcMain.Font.SetDefault;
  FormDetails.PageControl.Font.SetDefault;
end;

procedure TFormSettings.OKButtonClick(Sender: TObject);
begin
  FormMain.IniPropStorage.Save;
  IniPropStorage.Save;
end;

end.

