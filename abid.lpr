program abid;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Main, Details, Settings, About
  { you can add units after this };

resourcestring
  AppTitle = 'Abid';

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:=AppTitle;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormDetails, FormDetails);
  Application.CreateForm(TFormSettings, FormSettings);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.Run;
end.

