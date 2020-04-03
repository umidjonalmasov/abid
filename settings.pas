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
  Buttons, ExtCtrls, EditBtn, Spin;

type

  { TFormSettings }

  TFormSettings = class(TForm)
    ButtonPanel: TButtonPanel;
    CheckBoxBomdod: TCheckBox;
    CheckBoxXufton: TCheckBox;
    CheckBoxShom: TCheckBox;
    CheckBoxAsr: TCheckBox;
    CheckBoxPeshin: TCheckBox;
    ComboBoxLanguage: TComboBox;
    FontDialog: TFontDialog;
    GroupBoxRemind: TGroupBox;
    GroupBoxLanguage: TGroupBox;
    GroupBoxRun: TGroupBox;
    GroupBoxInterface: TGroupBox;
    LabelRemind: TLabel;
    PanelBomdod: TPanel;
    PanelXufton: TPanel;
    PanelShom: TPanel;
    PanelAsr: TPanel;
    PanelPeshin: TPanel;
    PanelRemind: TPanel;
    RadioButtonStart: TRadioButton;
    RadioButtonContinue: TRadioButton;
    ButtonFont: TSpeedButton;
    SpinEdit: TSpinEdit;
    TimeEditBomdod: TTimeEdit;
    TimeEditXufton: TTimeEdit;
    TimeEditShom: TTimeEdit;
    TimeEditAsr: TTimeEdit;
    TimeEditPeshin: TTimeEdit;
    procedure ButtonFontClick(Sender: TObject);
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
       FormMain.Font.Assign(FontDialog.Font);
     end;
end;

end.

