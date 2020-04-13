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
unit Main;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Forms, ExtCtrls, ComCtrls, Menus, StdCtrls, Buttons, IniPropStorage,
  Details, Settings, About;

resourcestring
  ImageShow = 'Tasvirlarni ko''rsatish';
  ImageHide = 'Tasvirlarni yashirish';

type

  { TFormMain }

  TFormMain = class(TForm)
    ButtonAla1_1X4F: TSpeedButton;
    ButtonAla1_1V3V: TSpeedButton;
    ButtonAla1_1X2S: TSpeedButton;
    ButtonAla1_1Sh2S: TSpeedButton;
    ButtonAla1_1Sh3F: TSpeedButton;
    ButtonAla1_1B2F: TSpeedButton;
    ButtonAla1_1P2S: TSpeedButton;
    ButtonAla1_1A4F: TSpeedButton;
    ButtonAla1_1P4S: TSpeedButton;
    ButtonAla1_1P4F: TSpeedButton;
    ButtonAla1_2X4F: TSpeedButton;
    ButtonAla1_2V3V: TSpeedButton;
    ButtonAla1_2X2S: TSpeedButton;
    ButtonAla1_2Sh2S: TSpeedButton;
    ButtonAla1_2Sh3F: TSpeedButton;
    ButtonAla1_2B2S: TSpeedButton;
    ButtonAla1_2B2F: TSpeedButton;
    ButtonAla1_2P2S: TSpeedButton;
    ButtonAla1_2A4F: TSpeedButton;
    ButtonAla1_2P4S: TSpeedButton;
    ButtonAla1_2P4F: TSpeedButton;
    ButtonAla2_1X4F: TSpeedButton;
    ButtonAla2_1V3V: TSpeedButton;
    ButtonAla2_1X2S: TSpeedButton;
    ButtonAla2_1Sh2S: TSpeedButton;
    ButtonAla2_1Sh3F: TSpeedButton;
    ButtonAla2_1B2S: TSpeedButton;
    ButtonAla2_1B2F: TSpeedButton;
    ButtonAla2_1P2S: TSpeedButton;
    ButtonAla2_1A4F: TSpeedButton;
    ButtonAla2_1P4S: TSpeedButton;
    ButtonAla2_1P4F: TSpeedButton;
    ButtonAla2_2X4F: TSpeedButton;
    ButtonAla2_2V3V: TSpeedButton;
    ButtonAla2_2X2S: TSpeedButton;
    ButtonAla2_2Sh2S: TSpeedButton;
    ButtonAla2_2Sh3F: TSpeedButton;
    ButtonAla2_2P2S: TSpeedButton;
    ButtonAla2_2P4F: TSpeedButton;
    ButtonAla2_2A4F: TSpeedButton;
    ButtonAla3_1A4F: TSpeedButton;
    ButtonAla3_1X4F: TSpeedButton;
    ButtonAla3_1V3V: TSpeedButton;
    ButtonAla3_1Sh3F: TSpeedButton;
    ButtonAla3_1P4S: TSpeedButton;
    ButtonAla2_2B2S: TSpeedButton;
    ButtonAla2_2B2F: TSpeedButton;
    ButtonAla2_2P4S: TSpeedButton;
    ButtonAla3_1P4F: TSpeedButton;
    ButtonAla3_2X4F: TSpeedButton;
    ButtonAla3_2V3V: TSpeedButton;
    ButtonAla3_2Sh3F: TSpeedButton;
    ButtonAla3_2P4F: TSpeedButton;
    ButtonAla3_2A4F: TSpeedButton;
    ButtonAla4_1X4F: TSpeedButton;
    ButtonAla4_1P4F: TSpeedButton;
    ButtonAla4_1A4F: TSpeedButton;
    ButtonAla4_2A4F: TSpeedButton;
    ButtonAla4_2X4F: TSpeedButton;
    ButtonAla4_2P4S: TSpeedButton;
    ButtonAla4_1P4S: TSpeedButton;
    ButtonAla3_2P4S: TSpeedButton;
    ButtonAla4_2P4F: TSpeedButton;
    ButtonAziym1X4F: TSpeedButton;
    ButtonAziym1V3V: TSpeedButton;
    ButtonAziym1X2S: TSpeedButton;
    ButtonAziym1Sh2S: TSpeedButton;
    ButtonAziym1Sh3F: TSpeedButton;
    ButtonAziym1B2F: TSpeedButton;
    ButtonAziym1P2S: TSpeedButton;
    ButtonAziym1A4F: TSpeedButton;
    ButtonAziym1P4S: TSpeedButton;
    ButtonAziym1P4F: TSpeedButton;
    ButtonAziym2X4F: TSpeedButton;
    ButtonAziym2V3V: TSpeedButton;
    ButtonAziym2X2S: TSpeedButton;
    ButtonAziym2Sh2S: TSpeedButton;
    ButtonAziym2Sh3F: TSpeedButton;
    ButtonAziym2B2S: TSpeedButton;
    ButtonAziym2B2F: TSpeedButton;
    ButtonAziym2P2S: TSpeedButton;
    ButtonAziym2A4F: TSpeedButton;
    ButtonAziym2P4S: TSpeedButton;
    ButtonAziym2P4F: TSpeedButton;
    ButtonAziym3A4F: TSpeedButton;
    ButtonAziym3X4F: TSpeedButton;
    ButtonAziym3V3V: TSpeedButton;
    ButtonAziym3Sh3F: TSpeedButton;
    ButtonAziym3P4S: TSpeedButton;
    ButtonAziym3P4F: TSpeedButton;
    ButtonAziym4A4F: TSpeedButton;
    ButtonAziym4X4F: TSpeedButton;
    ButtonAziym4P4S: TSpeedButton;
    ButtonAziym4P4F: TSpeedButton;
    ButtonAzonX4F: TSpeedButton;
    ButtonAzonDuoX4F: TSpeedButton;
    ButtonAzonSh3F: TSpeedButton;
    ButtonAzonDuoA4F: TSpeedButton;
    ButtonAzonDuoSh3F: TSpeedButton;
    ButtonAzonP4S: TSpeedButton;
    ButtonAzonDuoP4S: TSpeedButton;
    ButtonAzonA4F: TSpeedButton;
    ButtonBasmala1X4F: TSpeedButton;
    ButtonBasmala1V3V: TSpeedButton;
    ButtonBasmala1X2S: TSpeedButton;
    ButtonBasmala1Sh2S: TSpeedButton;
    ButtonBasmala1Sh3F: TSpeedButton;
    ButtonBasmala1P2S: TSpeedButton;
    ButtonBasmala1A4F: TSpeedButton;
    ButtonBasmala2X4F: TSpeedButton;
    ButtonBasmala2V3V: TSpeedButton;
    ButtonBasmala2X2S: TSpeedButton;
    ButtonBasmala2Sh2S: TSpeedButton;
    ButtonBasmala2Sh3F: TSpeedButton;
    ButtonBasmala2P2S: TSpeedButton;
    ButtonBasmala2A4F: TSpeedButton;
    ButtonBasmala3A4F: TSpeedButton;
    ButtonBasmala3X4F: TSpeedButton;
    ButtonBasmala3V3V: TSpeedButton;
    ButtonBasmala3Sh3F: TSpeedButton;
    ButtonBasmala4A4F: TSpeedButton;
    ButtonBasmala4X4F: TSpeedButton;
    ButtonDuoV3V: TSpeedButton;
    ButtonDuoSh2S: TSpeedButton;
    ButtonDuoFA4F: TSpeedButton;
    ButtonDuoB2F: TSpeedButton;
    ButtonDuoA4F: TSpeedButton;
    ButtonDuoP2S: TSpeedButton;
    ButtonDuoFX4F: TSpeedButton;
    ButtonDuoFSh3F: TSpeedButton;
    ButtonDuoFP4F: TSpeedButton;
    ButtonFalaqSh2S: TSpeedButton;
    ButtonFotiha1X4F: TSpeedButton;
    ButtonFotiha1V3V: TSpeedButton;
    ButtonFotiha1X2S: TSpeedButton;
    ButtonFotiha1Sh2S: TSpeedButton;
    ButtonFotiha1Sh3F: TSpeedButton;
    ButtonFotiha1P2S: TSpeedButton;
    ButtonFotiha1A4F: TSpeedButton;
    ButtonFotiha2X4F: TSpeedButton;
    ButtonFotiha2V3V: TSpeedButton;
    ButtonFotiha2X2S: TSpeedButton;
    ButtonFotiha2Sh2S: TSpeedButton;
    ButtonFotiha2Sh3F: TSpeedButton;
    ButtonFotiha2P2S: TSpeedButton;
    ButtonFotiha2A4F: TSpeedButton;
    ButtonFotiha3A4F: TSpeedButton;
    ButtonQunut: TSpeedButton;
    ButtonTakbirQunut: TSpeedButton;
    ButtonNasV3V: TSpeedButton;
    ButtonFotiha3X4F: TSpeedButton;
    ButtonFotiha3V3V: TSpeedButton;
    ButtonFotiha3Sh3F: TSpeedButton;
    ButtonFotiha4A4F: TSpeedButton;
    ButtonFotiha4X4F: TSpeedButton;
    ButtonHamd1X4F: TSpeedButton;
    ButtonHamd1V3V: TSpeedButton;
    ButtonHamd1X2S: TSpeedButton;
    ButtonHamd1Sh2S: TSpeedButton;
    ButtonHamd1Sh3F: TSpeedButton;
    ButtonHamd1P2S: TSpeedButton;
    ButtonHamd1A4F: TSpeedButton;
    ButtonHamd2X4F: TSpeedButton;
    ButtonHamd2V3V: TSpeedButton;
    ButtonHamd2X2S: TSpeedButton;
    ButtonHamd2Sh2S: TSpeedButton;
    ButtonHamd2Sh3F: TSpeedButton;
    ButtonHamd2P2S: TSpeedButton;
    ButtonHamd2A4F: TSpeedButton;
    ButtonHamd3A4F: TSpeedButton;
    ButtonHamd3X4F: TSpeedButton;
    ButtonHamd3V3V: TSpeedButton;
    ButtonHamd3Sh3F: TSpeedButton;
    ButtonHamd4A4F: TSpeedButton;
    ButtonHamd4X4F: TSpeedButton;
    ButtonIqomatX4F: TSpeedButton;
    ButtonIqomatSh3F: TSpeedButton;
    ButtonIqomatP4F: TSpeedButton;
    ButtonBasmala1P4S: TSpeedButton;
    ButtonBasmala1P4F: TSpeedButton;
    ButtonBasmala2P4S: TSpeedButton;
    ButtonBasmala2P4F: TSpeedButton;
    ButtonBasmala3P4S: TSpeedButton;
    ButtonBasmala3P4F: TSpeedButton;
    ButtonBasmala4P4S: TSpeedButton;
    ButtonBasmala4P4F: TSpeedButton;
    ButtonFotiha1P4F: TSpeedButton;
    ButtonFotiha2P4F: TSpeedButton;
    ButtonFotiha3P4F: TSpeedButton;
    ButtonFotiha4P4F: TSpeedButton;
    ButtonHamd1P4F: TSpeedButton;
    ButtonHamd2P4F: TSpeedButton;
    ButtonHamd3P4F: TSpeedButton;
    ButtonHamd4P4S: TSpeedButton;
    ButtonHamd4P4F: TSpeedButton;
    ButtonIqomatA4F: TSpeedButton;
    ButtonIxlosA4F: TSpeedButton;
    ButtonIxlosX4F: TSpeedButton;
    ButtonFalaqV3V: TSpeedButton;
    ButtonNasX2S: TSpeedButton;
    ButtonIxlosSh3F: TSpeedButton;
    ButtonKavsarA4F: TSpeedButton;
    ButtonKavsarX4F: TSpeedButton;
    ButtonIxlosV3V: TSpeedButton;
    ButtonFalaqX2S: TSpeedButton;
    ButtonKavsarSh3F: TSpeedButton;
    ButtonKursiA4F: TSpeedButton;
    ButtonKursiV3V: TSpeedButton;
    ButtonKursiP2S: TSpeedButton;
    ButtonKursiSh2S: TSpeedButton;
    ButtonNasP2S: TSpeedButton;
    ButtonIxlosP4F: TSpeedButton;
    ButtonFalaqP2S: TSpeedButton;
    ButtonKavsarP4F: TSpeedButton;
    ButtonNasSh2S: TSpeedButton;
    ButtonNasP4S: TSpeedButton;
    ButtonFotiha1P4S: TSpeedButton;
    ButtonFotiha2P4S: TSpeedButton;
    ButtonFotiha3P4S: TSpeedButton;
    ButtonFotiha4P4S: TSpeedButton;
    ButtonHamd1P4S: TSpeedButton;
    ButtonHamd2P4S: TSpeedButton;
    ButtonHamd3P4S: TSpeedButton;
    ButtonIqomatB2F: TSpeedButton;
    ButtonBasmala1B2F: TSpeedButton;
    ButtonBasmala2B2S: TSpeedButton;
    ButtonBasmala2B2F: TSpeedButton;
    ButtonFotiha1B2F: TSpeedButton;
    ButtonFotiha2B2F: TSpeedButton;
    ButtonHamd1B2F: TSpeedButton;
    ButtonHamd2B2F: TSpeedButton;
    ButtonIxlosP4S: TSpeedButton;
    ButtonFalaqP4S: TSpeedButton;
    ButtonKavsarP4S: TSpeedButton;
    ButtonNasB2F: TSpeedButton;
    ButtonFalaqB2F: TSpeedButton;
    ButtonRobbanaX4F: TSpeedButton;
    ButtonRobbanaV3V: TSpeedButton;
    ButtonRobbanaX2S: TSpeedButton;
    ButtonRobbanaSh2S: TSpeedButton;
    ButtonRobbanaSh3F: TSpeedButton;
    ButtonRobbanaB2F: TSpeedButton;
    ButtonRobbanaP2S: TSpeedButton;
    ButtonRobbanaA4F: TSpeedButton;
    ButtonRobbanaP4S: TSpeedButton;
    ButtonRobbanaP4F: TSpeedButton;
    ButtonSalavotX4F: TSpeedButton;
    ButtonSalavotV3V: TSpeedButton;
    ButtonSalavotX2S: TSpeedButton;
    ButtonSalavotSh2S: TSpeedButton;
    ButtonSalavotSh3F: TSpeedButton;
    ButtonSalavotB2F: TSpeedButton;
    ButtonKursiB2F: TSpeedButton;
    ButtonSalavotP2S: TSpeedButton;
    ButtonSalavotA4F: TSpeedButton;
    ButtonSalavotP4S: TSpeedButton;
    ButtonSalavotP4F: TSpeedButton;
    ButtonSalomX4F: TSpeedButton;
    ButtonSalomV3V: TSpeedButton;
    ButtonSalomX2S: TSpeedButton;
    ButtonSalomSh2S: TSpeedButton;
    ButtonSalomSh3F: TSpeedButton;
    ButtonSalomB2S: TSpeedButton;
    ButtonSalomB2F: TSpeedButton;
    ButtonSalomP2S: TSpeedButton;
    ButtonSalomA4F: TSpeedButton;
    ButtonSalomP4S: TSpeedButton;
    ButtonSalomP4F: TSpeedButton;
    ButtonTasme1X4F: TSpeedButton;
    ButtonTasme1V3V: TSpeedButton;
    ButtonTasme1X2S: TSpeedButton;
    ButtonTasme1Sh2S: TSpeedButton;
    ButtonTasme1Sh3F: TSpeedButton;
    ButtonTasme1B2F: TSpeedButton;
    ButtonTasme1P2S: TSpeedButton;
    ButtonTasme1A4F: TSpeedButton;
    ButtonTasme1P4S: TSpeedButton;
    ButtonTasme1P4F: TSpeedButton;
    ButtonTasme2X4F: TSpeedButton;
    ButtonTasme2V3V: TSpeedButton;
    ButtonTasme2X2S: TSpeedButton;
    ButtonTasme2Sh2S: TSpeedButton;
    ButtonTasme2Sh3F: TSpeedButton;
    ButtonTasme2B2F: TSpeedButton;
    ButtonTasme2P2S: TSpeedButton;
    ButtonTasme2A4F: TSpeedButton;
    ButtonTasme2P4S: TSpeedButton;
    ButtonTasme2P4F: TSpeedButton;
    ButtonTasme3A4F: TSpeedButton;
    ButtonTasme3X4F: TSpeedButton;
    ButtonTasme3V3V: TSpeedButton;
    ButtonTasme3Sh3F: TSpeedButton;
    ButtonTasme3P4S: TSpeedButton;
    ButtonTasme3P4F: TSpeedButton;
    ButtonTasme4A4F: TSpeedButton;
    ButtonTasme4X4F: TSpeedButton;
    ButtonTasme4P4S: TSpeedButton;
    ButtonTasme4P4F: TSpeedButton;
    ButtonSanoX4F: TSpeedButton;
    ButtonSanoV3V: TSpeedButton;
    ButtonSanoX2S: TSpeedButton;
    ButtonSanoSh2S: TSpeedButton;
    ButtonSanoSh3F: TSpeedButton;
    ButtonSanoB2F: TSpeedButton;
    ButtonSanoP2S: TSpeedButton;
    ButtonSanoA4F: TSpeedButton;
    ButtonSanoP4S: TSpeedButton;
    ButtonSanoP4F: TSpeedButton;
    ButtonTaavvuzX4F: TSpeedButton;
    ButtonTaavvuzV3V: TSpeedButton;
    ButtonTaavvuzX2S: TSpeedButton;
    ButtonTaavvuzSh2S: TSpeedButton;
    ButtonTaavvuzSh3F: TSpeedButton;
    ButtonTaavvuzB2F: TSpeedButton;
    ButtonTaavvuzP2S: TSpeedButton;
    ButtonTaavvuzA4F: TSpeedButton;
    ButtonTaavvuzP4S: TSpeedButton;
    ButtonTaavvuzP4F: TSpeedButton;
    ButtonTakbirJalsa1X4F: TSpeedButton;
    ButtonTakbirJalsa1V3V: TSpeedButton;
    ButtonTakbirJalsa1X2S: TSpeedButton;
    ButtonTakbirJalsa1Sh2S: TSpeedButton;
    ButtonTakbirJalsa1Sh3F: TSpeedButton;
    ButtonTakbirJalsa1B2F: TSpeedButton;
    ButtonTakbirJalsa1P2S: TSpeedButton;
    ButtonTakbirJalsa1A4F: TSpeedButton;
    ButtonTakbirJalsa1P4S: TSpeedButton;
    ButtonTakbirJalsa1P4F: TSpeedButton;
    ButtonTakbirJalsa2X4F: TSpeedButton;
    ButtonTakbirJalsa2V3V: TSpeedButton;
    ButtonTakbirJalsa2X2S: TSpeedButton;
    ButtonTakbirJalsa2Sh2S: TSpeedButton;
    ButtonTakbirJalsa2Sh3F: TSpeedButton;
    ButtonTakbirJalsa2B2F: TSpeedButton;
    ButtonTakbirJalsa2P2S: TSpeedButton;
    ButtonTakbirJalsa2A4F: TSpeedButton;
    ButtonTakbirJalsa2P4S: TSpeedButton;
    ButtonTakbirJalsa2P4F: TSpeedButton;
    ButtonTakbirJalsa3A4F: TSpeedButton;
    ButtonTakbirJalsa3X4F: TSpeedButton;
    ButtonTakbirJalsa3V3V: TSpeedButton;
    ButtonTakbirJalsa3Sh3F: TSpeedButton;
    ButtonTakbirJalsa3P4S: TSpeedButton;
    ButtonTakbirJalsa3P4F: TSpeedButton;
    ButtonTakbirJalsa4A4F: TSpeedButton;
    ButtonTakbirJalsa4X4F: TSpeedButton;
    ButtonTakbirJalsa4P4S: TSpeedButton;
    ButtonTakbirJalsa4P4F: TSpeedButton;
    ButtonTakbirKirishX4F: TSpeedButton;
    ButtonTakbirKirishV3V: TSpeedButton;
    ButtonTakbirKirishX2S: TSpeedButton;
    ButtonTakbirKirishSh2S: TSpeedButton;
    ButtonTakbirKirishSh3F: TSpeedButton;
    ButtonTakbirKirishB2F: TSpeedButton;
    ButtonTakbirKirishP2S: TSpeedButton;
    ButtonTakbirKirishP4S: TSpeedButton;
    ButtonTakbirKirishP4F: TSpeedButton;
    ButtonTakbirKirishA4F: TSpeedButton;
    ButtonTakbirQada1X4F: TSpeedButton;
    ButtonTakbirQada1V3V: TSpeedButton;
    ButtonTakbirQada1Sh3F: TSpeedButton;
    ButtonTakbirQada1P4F: TSpeedButton;
    ButtonTakbirQada1A4F: TSpeedButton;
    ButtonTakbirQada2X4F: TSpeedButton;
    ButtonTakbirQada2V3V: TSpeedButton;
    ButtonTakbirQada2Sh3F: TSpeedButton;
    ButtonTakbirQada2P4F: TSpeedButton;
    ButtonTakbirQada2A4F: TSpeedButton;
    ButtonTakbirQadaB2F: TSpeedButton;
    ButtonDuoFB2F: TSpeedButton;
    ButtonTakbirQada1P4S: TSpeedButton;
    ButtonTakbirQada2P4S: TSpeedButton;
    ButtonTakbirQadaX2S: TSpeedButton;
    ButtonTakbirQadaP2S: TSpeedButton;
    ButtonTakbirQadaSh2S: TSpeedButton;
    ButtonTakbirQiyom2X4F: TSpeedButton;
    ButtonTakbirQiyom2V3V: TSpeedButton;
    ButtonTakbirQiyom2X2S: TSpeedButton;
    ButtonTakbirQiyom2Sh2S: TSpeedButton;
    ButtonTakbirQiyom2Sh3F: TSpeedButton;
    ButtonTakbirQiyom2B2F: TSpeedButton;
    ButtonTakbirQiyom2P2S: TSpeedButton;
    ButtonTakbirQiyom2A4F: TSpeedButton;
    ButtonTakbirQiyom2P4S: TSpeedButton;
    ButtonTakbirQiyom2P4F: TSpeedButton;
    ButtonTakbirQiyom3A4F: TSpeedButton;
    ButtonTakbirQiyom3X4F: TSpeedButton;
    ButtonTakbirQiyom3V3V: TSpeedButton;
    ButtonTakbirQiyom3Sh3F: TSpeedButton;
    ButtonTakbirQiyom3P4S: TSpeedButton;
    ButtonTakbirQiyom3P4F: TSpeedButton;
    ButtonTakbirQiyom4A4F: TSpeedButton;
    ButtonTakbirQiyom4X4F: TSpeedButton;
    ButtonTakbirQiyom4P4S: TSpeedButton;
    ButtonTakbirQiyom4P4F: TSpeedButton;
    ButtonTakbirRuku1X4F: TSpeedButton;
    ButtonTakbirRuku1V3V: TSpeedButton;
    ButtonTakbirRuku1X2S: TSpeedButton;
    ButtonTakbirRuku1Sh2S: TSpeedButton;
    ButtonTakbirRuku1Sh3F: TSpeedButton;
    ButtonTakbirRuku1B2F: TSpeedButton;
    ButtonTakbirRuku1P2S: TSpeedButton;
    ButtonTakbirRuku1A4F: TSpeedButton;
    ButtonTakbirRuku1P4S: TSpeedButton;
    ButtonTakbirRuku1P4F: TSpeedButton;
    ButtonTakbirRuku2X4F: TSpeedButton;
    ButtonTakbirRuku2V3V: TSpeedButton;
    ButtonTakbirRuku2X2S: TSpeedButton;
    ButtonTakbirRuku2Sh2S: TSpeedButton;
    ButtonTakbirRuku2Sh3F: TSpeedButton;
    ButtonTakbirRuku2B2F: TSpeedButton;
    ButtonTakbirRuku2P2S: TSpeedButton;
    ButtonTakbirRuku2A4F: TSpeedButton;
    ButtonTakbirRuku2P4S: TSpeedButton;
    ButtonTakbirRuku2P4F: TSpeedButton;
    ButtonTakbirRuku3A4F: TSpeedButton;
    ButtonTakbirRuku3X4F: TSpeedButton;
    ButtonTakbirRuku3V3V: TSpeedButton;
    ButtonTakbirRuku3Sh3F: TSpeedButton;
    ButtonTakbirRuku3P4S: TSpeedButton;
    ButtonTakbirRuku3P4F: TSpeedButton;
    ButtonTakbirRuku4A4F: TSpeedButton;
    ButtonTakbirRuku4X4F: TSpeedButton;
    ButtonTakbirRuku4P4S: TSpeedButton;
    ButtonTakbirRuku4P4F: TSpeedButton;
    ButtonTakbirSajda1_1X4F: TSpeedButton;
    ButtonTakbirSajda1_1V3V: TSpeedButton;
    ButtonTakbirSajda1_1X2S: TSpeedButton;
    ButtonTakbirSajda1_1Sh2S: TSpeedButton;
    ButtonTakbirSajda1_1Sh3F: TSpeedButton;
    ButtonTakbirSajda1_1B2F: TSpeedButton;
    ButtonTakbirSajda1_1P2S: TSpeedButton;
    ButtonTakbirSajda1_1A4F: TSpeedButton;
    ButtonTakbirSajda1_1P4S: TSpeedButton;
    ButtonTakbirSajda1_1P4F: TSpeedButton;
    ButtonTakbirSajda1_2X4F: TSpeedButton;
    ButtonTakbirSajda1_2V3V: TSpeedButton;
    ButtonTakbirSajda1_2X2S: TSpeedButton;
    ButtonTakbirSajda1_2Sh2S: TSpeedButton;
    ButtonTakbirSajda1_2Sh3F: TSpeedButton;
    ButtonTakbirSajda1_2B2F: TSpeedButton;
    ButtonTakbirSajda1_2P2S: TSpeedButton;
    ButtonTakbirSajda1_2A4F: TSpeedButton;
    ButtonTakbirSajda1_2P4S: TSpeedButton;
    ButtonTakbirSajda1_2P4F: TSpeedButton;
    ButtonTakbirSajda2_1X4F: TSpeedButton;
    ButtonTakbirSajda2_1V3V: TSpeedButton;
    ButtonTakbirSajda2_1X2S: TSpeedButton;
    ButtonTakbirSajda2_1Sh2S: TSpeedButton;
    ButtonTakbirSajda2_1Sh3F: TSpeedButton;
    ButtonTakbirSajda2_1B2F: TSpeedButton;
    ButtonTakbirSajda2_1P2S: TSpeedButton;
    ButtonTakbirSajda2_1A4F: TSpeedButton;
    ButtonTakbirSajda2_1P4S: TSpeedButton;
    ButtonTakbirSajda2_1P4F: TSpeedButton;
    ButtonTakbirSajda2_2X4F: TSpeedButton;
    ButtonTakbirSajda2_2V3V: TSpeedButton;
    ButtonTakbirSajda2_2X2S: TSpeedButton;
    ButtonTakbirSajda2_2Sh2S: TSpeedButton;
    ButtonTakbirSajda2_2Sh3F: TSpeedButton;
    ButtonTakbirSajda2_2P2S: TSpeedButton;
    ButtonTakbirSajda2_2P4F: TSpeedButton;
    ButtonTakbirSajda2_2A4F: TSpeedButton;
    ButtonTakbirSajda3_1A4F: TSpeedButton;
    ButtonTakbirSajda3_1X4F: TSpeedButton;
    ButtonTakbirSajda3_1V3V: TSpeedButton;
    ButtonTakbirSajda3_1Sh3F: TSpeedButton;
    ButtonTakbirSajda3_1P4S: TSpeedButton;
    ButtonTakbirSajda2_2B2F: TSpeedButton;
    ButtonTakbirSajda2_2P4S: TSpeedButton;
    ButtonTakbirSajda3_1P4F: TSpeedButton;
    ButtonTakbirSajda3_2X4F: TSpeedButton;
    ButtonTakbirSajda3_2V3V: TSpeedButton;
    ButtonTakbirSajda3_2Sh3F: TSpeedButton;
    ButtonTakbirSajda3_2P4F: TSpeedButton;
    ButtonTakbirSajda3_2A4F: TSpeedButton;
    ButtonTakbirSajda4_1X4F: TSpeedButton;
    ButtonTakbirSajda4_1P4F: TSpeedButton;
    ButtonTakbirSajda4_1A4F: TSpeedButton;
    ButtonTakbirSajda4_2A4F: TSpeedButton;
    ButtonTakbirSajda4_2X4F: TSpeedButton;
    ButtonTakbirSajda4_2P4S: TSpeedButton;
    ButtonTakbirSajda4_1P4S: TSpeedButton;
    ButtonTakbirSajda3_2P4S: TSpeedButton;
    ButtonTakbirSajda4_2P4F: TSpeedButton;
    ButtonTasbehV3V: TSpeedButton;
    ButtonTasbehB2F: TSpeedButton;
    ButtonTasbehA4F: TSpeedButton;
    ButtonTasbehP2S: TSpeedButton;
    ButtonTasbehSh2S: TSpeedButton;
    ButtonTashahhud1X4F: TSpeedButton;
    ButtonTashahhud1V3V: TSpeedButton;
    ButtonTashahhud1Sh3F: TSpeedButton;
    ButtonTashahhud1P4F: TSpeedButton;
    ButtonTashahhud1A4F: TSpeedButton;
    ButtonTashahhud2X4F: TSpeedButton;
    ButtonTashahhud2V3V: TSpeedButton;
    ButtonTashahhud2Sh3F: TSpeedButton;
    ButtonTashahhud2P4F: TSpeedButton;
    ButtonTashahhud2A4F: TSpeedButton;
    ButtonTashahhudB2S: TSpeedButton;
    ButtonFotiha2B2S: TSpeedButton;
    ButtonSalavotB2S: TSpeedButton;
    ButtonHamd1B2S: TSpeedButton;
    ButtonAla1_1B2S: TSpeedButton;
    ButtonHamd2B2S: TSpeedButton;
    ButtonRobbanaB2S: TSpeedButton;
    ButtonKavsarB2S: TSpeedButton;
    ButtonFotiha1B2S: TSpeedButton;
    ButtonIxlosB2S: TSpeedButton;
    ButtonTasme2B2S: TSpeedButton;
    ButtonTakbirJalsa2B2S: TSpeedButton;
    ButtonTakbirQiyom2B2S: TSpeedButton;
    ButtonTakbirQadaB2S: TSpeedButton;
    ButtonTakbirRuku2B2S: TSpeedButton;
    ButtonTakbirSajda1_1B2S: TSpeedButton;
    ButtonSanoB2S: TSpeedButton;
    ButtonAzonDuoB2S: TSpeedButton;
    ButtonTakbirRuku1B2S: TSpeedButton;
    ButtonTaavvuzB2S: TSpeedButton;
    ButtonAziym1B2S: TSpeedButton;
    ButtonTakbirKirishB2S: TSpeedButton;
    ButtonBasmala1B2S: TSpeedButton;
    ButtonTasme1B2S: TSpeedButton;
    ButtonTakbirJalsa1B2S: TSpeedButton;
    ButtonTakbirSajda1_2B2S: TSpeedButton;
    ButtonTakbirSajda2_1B2S: TSpeedButton;
    ButtonTakbirSajda2_2B2S: TSpeedButton;
    ButtonTashahhudB2F: TSpeedButton;
    ButtonTashahhud1P4S: TSpeedButton;
    ButtonTashahhud2P4S: TSpeedButton;
    ButtonTashahhudX2S: TSpeedButton;
    ButtonTashahhudP2S: TSpeedButton;
    ButtonTashahhudSh2S: TSpeedButton;
    ImageMan: TImage;
    ImageWoman: TImage;
    IniPropStorage: TIniPropStorage;
    LabelAla1_1X4F: TLabel;
    LabelAla1_1V3V: TLabel;
    LabelAla1_1X2S: TLabel;
    LabelAla1_1Sh2S: TLabel;
    LabelAla1_1Sh3F: TLabel;
    LabelAla1_1B2F: TLabel;
    LabelAla1_1P2S: TLabel;
    LabelAla1_1A4F: TLabel;
    LabelAla1_1P4S: TLabel;
    LabelAla1_1P4F: TLabel;
    LabelAla1_2X4F: TLabel;
    LabelAla1_2V3V: TLabel;
    LabelAla1_2X2S: TLabel;
    LabelAla1_2Sh2S: TLabel;
    LabelAla1_2Sh3F: TLabel;
    LabelAla1_2B2S: TLabel;
    LabelAla1_2B2F: TLabel;
    LabelAla1_2P2S: TLabel;
    LabelAla1_2A4F: TLabel;
    LabelAla1_2P4S: TLabel;
    LabelAla1_2P4F: TLabel;
    LabelAla2_1X4F: TLabel;
    LabelAla2_1V3V: TLabel;
    LabelAla2_1X2S: TLabel;
    LabelAla2_1Sh2S: TLabel;
    LabelAla2_1Sh3F: TLabel;
    LabelAla2_1B2S: TLabel;
    LabelAla2_1B2F: TLabel;
    LabelAla2_1P2S: TLabel;
    LabelAla2_1A4F: TLabel;
    LabelAla2_1P4S: TLabel;
    LabelAla2_1P4F: TLabel;
    LabelAla2_2X4F: TLabel;
    LabelAla2_2V3V: TLabel;
    LabelAla2_2X2S: TLabel;
    LabelAla2_2Sh2S: TLabel;
    LabelAla2_2Sh3F: TLabel;
    LabelAla2_2P2S: TLabel;
    LabelAla2_2P4F: TLabel;
    LabelAla2_2A4F: TLabel;
    LabelAla3_1A4F: TLabel;
    LabelAla3_1X4F: TLabel;
    LabelAla3_1V3V: TLabel;
    LabelAla3_1Sh3F: TLabel;
    LabelAla3_1P4S: TLabel;
    LabelAla2_2B2S: TLabel;
    LabelAla2_2B2F: TLabel;
    LabelAla2_2P4S: TLabel;
    LabelAla3_1P4F: TLabel;
    LabelAla3_2X4F: TLabel;
    LabelAla3_2V3V: TLabel;
    LabelAla3_2Sh3F: TLabel;
    LabelAla3_2P4F: TLabel;
    LabelAla3_2A4F: TLabel;
    LabelAla4_1X4F: TLabel;
    LabelAla4_1P4F: TLabel;
    LabelAla4_1A4F: TLabel;
    LabelAla4_2A4F: TLabel;
    LabelAla4_2X4F: TLabel;
    LabelAla4_2P4S: TLabel;
    LabelAla4_1P4S: TLabel;
    LabelAla3_2P4S: TLabel;
    LabelAla4_2P4F: TLabel;
    LabelAziym1X4F: TLabel;
    LabelAziym1V3V: TLabel;
    LabelAziym1X2S: TLabel;
    LabelAziym1Sh2S: TLabel;
    LabelAziym1Sh3F: TLabel;
    LabelAziym1B2F: TLabel;
    LabelAziym1P2S: TLabel;
    LabelAziym1A4F: TLabel;
    LabelAziym1P4S: TLabel;
    LabelAziym1P4F: TLabel;
    LabelAziym2X4F: TLabel;
    LabelAziym2V3V: TLabel;
    LabelAziym2X2S: TLabel;
    LabelAziym2Sh2S: TLabel;
    LabelAziym2Sh3F: TLabel;
    LabelAziym2B2S: TLabel;
    LabelAziym2B2F: TLabel;
    LabelAziym2P2S: TLabel;
    LabelAziym2A4F: TLabel;
    LabelAziym2P4S: TLabel;
    LabelAziym2P4F: TLabel;
    LabelAziym3A4F: TLabel;
    LabelAziym3X4F: TLabel;
    LabelAziym3V3V: TLabel;
    LabelAziym3Sh3F: TLabel;
    LabelAziym3P4S: TLabel;
    LabelAziym3P4F: TLabel;
    LabelAziym4A4F: TLabel;
    LabelAziym4X4F: TLabel;
    LabelAziym4P4S: TLabel;
    LabelAziym4P4F: TLabel;
    LabelAzonX4F: TLabel;
    LabelAzonDuoX4F: TLabel;
    LabelAzonSh3F: TLabel;
    LabelAzonDuoA4F: TLabel;
    LabelAzonDuoSh3F: TLabel;
    LabelAzonP4S: TLabel;
    LabelAzonDuoP4S: TLabel;
    LabelAzonA4F: TLabel;
    LabelBasmala1X4F: TLabel;
    LabelBasmala1V3V: TLabel;
    LabelBasmala1X2S: TLabel;
    LabelBasmala1Sh2S: TLabel;
    LabelBasmala1Sh3F: TLabel;
    LabelBasmala1P2S: TLabel;
    LabelBasmala1A4F: TLabel;
    LabelBasmala2X4F: TLabel;
    LabelBasmala2V3V: TLabel;
    LabelBasmala2X2S: TLabel;
    LabelBasmala2Sh2S: TLabel;
    LabelBasmala2Sh3F: TLabel;
    LabelBasmala2P2S: TLabel;
    LabelBasmala2A4F: TLabel;
    LabelBasmala3A4F: TLabel;
    LabelBasmala3X4F: TLabel;
    LabelBasmala3V3V: TLabel;
    LabelBasmala3Sh3F: TLabel;
    LabelBasmala4A4F: TLabel;
    LabelBasmala4X4F: TLabel;
    LabelDuoV3V: TLabel;
    LabelDuoSh2S: TLabel;
    LabelDuoFA4F: TLabel;
    LabelDuoB2F: TLabel;
    LabelDuoA4F: TLabel;
    LabelDuoP2S: TLabel;
    LabelDuoFX4F: TLabel;
    LabelDuoFSh3F: TLabel;
    LabelDuoFP4F: TLabel;
    LabelFalaqSh2S: TLabel;
    LabelFotiha1X4F: TLabel;
    LabelFotiha1V3V: TLabel;
    LabelFotiha1X2S: TLabel;
    LabelFotiha1Sh2S: TLabel;
    LabelFotiha1Sh3F: TLabel;
    LabelFotiha1P2S: TLabel;
    LabelFotiha1A4F: TLabel;
    LabelFotiha2X4F: TLabel;
    LabelFotiha2V3V: TLabel;
    LabelFotiha2X2S: TLabel;
    LabelFotiha2Sh2S: TLabel;
    LabelFotiha2Sh3F: TLabel;
    LabelFotiha2P2S: TLabel;
    LabelFotiha2A4F: TLabel;
    LabelFotiha3A4F: TLabel;
    LabelQunut: TLabel;
    LabelTakbirQunut: TLabel;
    LabelNasV3V: TLabel;
    LabelFotiha3X4F: TLabel;
    LabelFotiha3V3V: TLabel;
    LabelFotiha3Sh3F: TLabel;
    LabelFotiha4A4F: TLabel;
    LabelFotiha4X4F: TLabel;
    LabelHamd1X4F: TLabel;
    LabelHamd1V3V: TLabel;
    LabelHamd1X2S: TLabel;
    LabelHamd1Sh2S: TLabel;
    LabelHamd1Sh3F: TLabel;
    LabelHamd1P2S: TLabel;
    LabelHamd1A4F: TLabel;
    LabelHamd2X4F: TLabel;
    LabelHamd2V3V: TLabel;
    LabelHamd2X2S: TLabel;
    LabelHamd2Sh2S: TLabel;
    LabelHamd2Sh3F: TLabel;
    LabelHamd2P2S: TLabel;
    LabelHamd2A4F: TLabel;
    LabelHamd3A4F: TLabel;
    LabelHamd3X4F: TLabel;
    LabelHamd3V3V: TLabel;
    LabelHamd3Sh3F: TLabel;
    LabelHamd4A4F: TLabel;
    LabelHamd4X4F: TLabel;
    LabelIqomatX4F: TLabel;
    LabelIqomatSh3F: TLabel;
    LabelIqomatP4F: TLabel;
    LabelBasmala1P4S: TLabel;
    LabelBasmala1P4F: TLabel;
    LabelBasmala2P4S: TLabel;
    LabelBasmala2P4F: TLabel;
    LabelBasmala3P4S: TLabel;
    LabelBasmala3P4F: TLabel;
    LabelBasmala4P4S: TLabel;
    LabelBasmala4P4F: TLabel;
    LabelFotiha1P4F: TLabel;
    LabelFotiha2P4F: TLabel;
    LabelFotiha3P4F: TLabel;
    LabelFotiha4P4F: TLabel;
    LabelHamd1P4F: TLabel;
    LabelHamd2P4F: TLabel;
    LabelHamd3P4F: TLabel;
    LabelHamd4P4S: TLabel;
    LabelHamd4P4F: TLabel;
    LabelIqomatA4F: TLabel;
    LabelIxlosA4F: TLabel;
    LabelIxlosX4F: TLabel;
    LabelFalaqV3V: TLabel;
    LabelNasX2S: TLabel;
    LabelIxlosSh3F: TLabel;
    LabelKavsarA4F: TLabel;
    LabelKavsarX4F: TLabel;
    LabelIxlosV3V: TLabel;
    LabelFalaqX2S: TLabel;
    LabelKavsarSh3F: TLabel;
    LabelKursiA4F: TLabel;
    LabelKursiV3V: TLabel;
    LabelKursiP2S: TLabel;
    LabelKursiSh2S: TLabel;
    LabelNasP2S: TLabel;
    LabelIxlosP4F: TLabel;
    LabelFalaqP2S: TLabel;
    LabelKavsarP4F: TLabel;
    LabelNasSh2S: TLabel;
    LabelNasP4S: TLabel;
    LabelFotiha1P4S: TLabel;
    LabelFotiha2P4S: TLabel;
    LabelFotiha3P4S: TLabel;
    LabelFotiha4P4S: TLabel;
    LabelHamd1P4S: TLabel;
    LabelHamd2P4S: TLabel;
    LabelHamd3P4S: TLabel;
    LabelIqomatB2F: TLabel;
    LabelBasmala1B2F: TLabel;
    LabelBasmala2B2S: TLabel;
    LabelBasmala2B2F: TLabel;
    LabelFotiha1B2F: TLabel;
    LabelFotiha2B2F: TLabel;
    LabelHamd1B2F: TLabel;
    LabelHamd2B2F: TLabel;
    LabelIxlosP4S: TLabel;
    LabelFalaqP4S: TLabel;
    LabelKavsarP4S: TLabel;
    LabelNasB2F: TLabel;
    LabelFalaqB2F: TLabel;
    LabelNiyatX4F: TLabel;
    LabelNiyatV3V: TLabel;
    LabelNiyatX2S: TLabel;
    LabelNiyatSh2S: TLabel;
    LabelNiyatSh3F: TLabel;
    LabelNiyatB2F: TLabel;
    LabelNiyatP2S: TLabel;
    LabelNiyatP4S: TLabel;
    LabelNiyatP4F: TLabel;
    LabelNiyatA4F: TLabel;
    LabelRobbanaX4F: TLabel;
    LabelRobbanaV3V: TLabel;
    LabelRobbanaX2S: TLabel;
    LabelRobbanaSh2S: TLabel;
    LabelRobbanaSh3F: TLabel;
    LabelRobbanaB2F: TLabel;
    LabelRobbanaP2S: TLabel;
    LabelRobbanaA4F: TLabel;
    LabelRobbanaP4S: TLabel;
    LabelRobbanaP4F: TLabel;
    LabelSalavotX4F: TLabel;
    LabelSalavotV3V: TLabel;
    LabelSalavotX2S: TLabel;
    LabelSalavotSh2S: TLabel;
    LabelSalavotSh3F: TLabel;
    LabelSalavotB2F: TLabel;
    LabelKursiB2F: TLabel;
    LabelSalavotP2S: TLabel;
    LabelSalavotA4F: TLabel;
    LabelSalavotP4S: TLabel;
    LabelSalavotP4F: TLabel;
    LabelSalomX4F: TLabel;
    LabelSalomV3V: TLabel;
    LabelSalomX2S: TLabel;
    LabelSalomSh2S: TLabel;
    LabelSalomSh3F: TLabel;
    LabelSalomB2S: TLabel;
    LabelSalomB2F: TLabel;
    LabelSalomP2S: TLabel;
    LabelSalomA4F: TLabel;
    LabelSalomP4S: TLabel;
    LabelSalomP4F: TLabel;
    LabelTasme1X4F: TLabel;
    LabelTasme1V3V: TLabel;
    LabelTasme1X2S: TLabel;
    LabelTasme1Sh2S: TLabel;
    LabelTasme1Sh3F: TLabel;
    LabelTasme1B2F: TLabel;
    LabelTasme1P2S: TLabel;
    LabelTasme1A4F: TLabel;
    LabelTasme1P4S: TLabel;
    LabelTasme1P4F: TLabel;
    LabelTasme2X4F: TLabel;
    LabelTasme2V3V: TLabel;
    LabelTasme2X2S: TLabel;
    LabelTasme2Sh2S: TLabel;
    LabelTasme2Sh3F: TLabel;
    LabelTasme2B2F: TLabel;
    LabelTasme2P2S: TLabel;
    LabelTasme2A4F: TLabel;
    LabelTasme2P4S: TLabel;
    LabelTasme2P4F: TLabel;
    LabelTasme3A4F: TLabel;
    LabelTasme3X4F: TLabel;
    LabelTasme3V3V: TLabel;
    LabelTasme3Sh3F: TLabel;
    LabelTasme3P4S: TLabel;
    LabelTasme3P4F: TLabel;
    LabelTasme4A4F: TLabel;
    LabelTasme4X4F: TLabel;
    LabelTasme4P4S: TLabel;
    LabelTasme4P4F: TLabel;
    LabelSanoX4F: TLabel;
    LabelSanoV3V: TLabel;
    LabelSanoX2S: TLabel;
    LabelSanoSh2S: TLabel;
    LabelSanoSh3F: TLabel;
    LabelSanoB2F: TLabel;
    LabelSanoP2S: TLabel;
    LabelSanoA4F: TLabel;
    LabelSanoP4S: TLabel;
    LabelSanoP4F: TLabel;
    LabelTaavvuzX4F: TLabel;
    LabelTaavvuzV3V: TLabel;
    LabelTaavvuzX2S: TLabel;
    LabelTaavvuzSh2S: TLabel;
    LabelTaavvuzSh3F: TLabel;
    LabelTaavvuzB2F: TLabel;
    LabelTaavvuzP2S: TLabel;
    LabelTaavvuzA4F: TLabel;
    LabelTaavvuzP4S: TLabel;
    LabelTaavvuzP4F: TLabel;
    LabelTakbirJalsa1X4F: TLabel;
    LabelTakbirJalsa1V3V: TLabel;
    LabelTakbirJalsa1X2S: TLabel;
    LabelTakbirJalsa1Sh2S: TLabel;
    LabelTakbirJalsa1Sh3F: TLabel;
    LabelTakbirJalsa1B2F: TLabel;
    LabelTakbirJalsa1P2S: TLabel;
    LabelTakbirJalsa1A4F: TLabel;
    LabelTakbirJalsa1P4S: TLabel;
    LabelTakbirJalsa1P4F: TLabel;
    LabelTakbirJalsa2X4F: TLabel;
    LabelTakbirJalsa2V3V: TLabel;
    LabelTakbirJalsa2X2S: TLabel;
    LabelTakbirJalsa2Sh2S: TLabel;
    LabelTakbirJalsa2Sh3F: TLabel;
    LabelTakbirJalsa2B2F: TLabel;
    LabelTakbirJalsa2P2S: TLabel;
    LabelTakbirJalsa2A4F: TLabel;
    LabelTakbirJalsa2P4S: TLabel;
    LabelTakbirJalsa2P4F: TLabel;
    LabelTakbirJalsa3A4F: TLabel;
    LabelTakbirJalsa3X4F: TLabel;
    LabelTakbirJalsa3V3V: TLabel;
    LabelTakbirJalsa3Sh3F: TLabel;
    LabelTakbirJalsa3P4S: TLabel;
    LabelTakbirJalsa3P4F: TLabel;
    LabelTakbirJalsa4A4F: TLabel;
    LabelTakbirJalsa4X4F: TLabel;
    LabelTakbirJalsa4P4S: TLabel;
    LabelTakbirJalsa4P4F: TLabel;
    LabelTakbirKirishX4F: TLabel;
    LabelTakbirKirishV3V: TLabel;
    LabelTakbirKirishX2S: TLabel;
    LabelTakbirKirishSh2S: TLabel;
    LabelTakbirKirishSh3F: TLabel;
    LabelTakbirKirishB2F: TLabel;
    LabelTakbirKirishP2S: TLabel;
    LabelTakbirKirishP4S: TLabel;
    LabelTakbirKirishP4F: TLabel;
    LabelTakbirKirishA4F: TLabel;
    LabelTakbirQada1X4F: TLabel;
    LabelTakbirQada1V3V: TLabel;
    LabelTakbirQada1Sh3F: TLabel;
    LabelTakbirQada1P4F: TLabel;
    LabelTakbirQada1A4F: TLabel;
    LabelTakbirQada2X4F: TLabel;
    LabelTakbirQada2V3V: TLabel;
    LabelTakbirQada2Sh3F: TLabel;
    LabelTakbirQada2P4F: TLabel;
    LabelTakbirQada2A4F: TLabel;
    LabelTakbirQadaB2F: TLabel;
    LabelDuoFB2F: TLabel;
    LabelTakbirQada1P4S: TLabel;
    LabelTakbirQada2P4S: TLabel;
    LabelTakbirQadaX2S: TLabel;
    LabelTakbirQadaP2S: TLabel;
    LabelTakbirQadaSh2S: TLabel;
    LabelTakbirQiyom2X4F: TLabel;
    LabelTakbirQiyom2V3V: TLabel;
    LabelTakbirQiyom2X2S: TLabel;
    LabelTakbirQiyom2Sh2S: TLabel;
    LabelTakbirQiyom2Sh3F: TLabel;
    LabelTakbirQiyom2B2F: TLabel;
    LabelTakbirQiyom2P2S: TLabel;
    LabelTakbirQiyom2A4F: TLabel;
    LabelTakbirQiyom2P4S: TLabel;
    LabelTakbirQiyom2P4F: TLabel;
    LabelTakbirQiyom3A4F: TLabel;
    LabelTakbirQiyom3X4F: TLabel;
    LabelTakbirQiyom3V3V: TLabel;
    LabelTakbirQiyom3Sh3F: TLabel;
    LabelTakbirQiyom3P4S: TLabel;
    LabelTakbirQiyom3P4F: TLabel;
    LabelTakbirQiyom4A4F: TLabel;
    LabelTakbirQiyom4X4F: TLabel;
    LabelTakbirQiyom4P4S: TLabel;
    LabelTakbirQiyom4P4F: TLabel;
    LabelTakbirRuku1X4F: TLabel;
    LabelTakbirRuku1V3V: TLabel;
    LabelTakbirRuku1X2S: TLabel;
    LabelTakbirRuku1Sh2S: TLabel;
    LabelTakbirRuku1Sh3F: TLabel;
    LabelTakbirRuku1B2F: TLabel;
    LabelTakbirRuku1P2S: TLabel;
    LabelTakbirRuku1A4F: TLabel;
    LabelTakbirRuku1P4S: TLabel;
    LabelTakbirRuku1P4F: TLabel;
    LabelTakbirRuku2X4F: TLabel;
    LabelTakbirRuku2V3V: TLabel;
    LabelTakbirRuku2X2S: TLabel;
    LabelTakbirRuku2Sh2S: TLabel;
    LabelTakbirRuku2Sh3F: TLabel;
    LabelTakbirRuku2B2F: TLabel;
    LabelTakbirRuku2P2S: TLabel;
    LabelTakbirRuku2A4F: TLabel;
    LabelTakbirRuku2P4S: TLabel;
    LabelTakbirRuku2P4F: TLabel;
    LabelTakbirRuku3A4F: TLabel;
    LabelTakbirRuku3X4F: TLabel;
    LabelTakbirRuku3V3V: TLabel;
    LabelTakbirRuku3Sh3F: TLabel;
    LabelTakbirRuku3P4S: TLabel;
    LabelTakbirRuku3P4F: TLabel;
    LabelTakbirRuku4A4F: TLabel;
    LabelTakbirRuku4X4F: TLabel;
    LabelTakbirRuku4P4S: TLabel;
    LabelTakbirRuku4P4F: TLabel;
    LabelTakbirSajda1_1X4F: TLabel;
    LabelTakbirSajda1_1V3V: TLabel;
    LabelTakbirSajda1_1X2S: TLabel;
    LabelTakbirSajda1_1Sh2S: TLabel;
    LabelTakbirSajda1_1Sh3F: TLabel;
    LabelTakbirSajda1_1B2F: TLabel;
    LabelTakbirSajda1_1P2S: TLabel;
    LabelTakbirSajda1_1A4F: TLabel;
    LabelTakbirSajda1_1P4S: TLabel;
    LabelTakbirSajda1_1P4F: TLabel;
    LabelTakbirSajda1_2X4F: TLabel;
    LabelTakbirSajda1_2V3V: TLabel;
    LabelTakbirSajda1_2X2S: TLabel;
    LabelTakbirSajda1_2Sh2S: TLabel;
    LabelTakbirSajda1_2Sh3F: TLabel;
    LabelTakbirSajda1_2B2F: TLabel;
    LabelTakbirSajda1_2P2S: TLabel;
    LabelTakbirSajda1_2A4F: TLabel;
    LabelTakbirSajda1_2P4S: TLabel;
    LabelTakbirSajda1_2P4F: TLabel;
    LabelTakbirSajda2_1X4F: TLabel;
    LabelTakbirSajda2_1V3V: TLabel;
    LabelTakbirSajda2_1X2S: TLabel;
    LabelTakbirSajda2_1Sh2S: TLabel;
    LabelTakbirSajda2_1Sh3F: TLabel;
    LabelTakbirSajda2_1B2F: TLabel;
    LabelTakbirSajda2_1P2S: TLabel;
    LabelTakbirSajda2_1A4F: TLabel;
    LabelTakbirSajda2_1P4S: TLabel;
    LabelTakbirSajda2_1P4F: TLabel;
    LabelTakbirSajda2_2X4F: TLabel;
    LabelTakbirSajda2_2V3V: TLabel;
    LabelTakbirSajda2_2X2S: TLabel;
    LabelTakbirSajda2_2Sh2S: TLabel;
    LabelTakbirSajda2_2Sh3F: TLabel;
    LabelTakbirSajda2_2P2S: TLabel;
    LabelTakbirSajda2_2P4S1: TLabel;
    LabelTakbirSajda2_2A4F: TLabel;
    LabelTakbirSajda3_1A4F: TLabel;
    LabelTakbirSajda3_1X4F: TLabel;
    LabelTakbirSajda3_1V3V: TLabel;
    LabelTakbirSajda3_1Sh3F: TLabel;
    LabelTakbirSajda3_1P4S: TLabel;
    LabelTakbirSajda2_2B2F: TLabel;
    LabelTakbirSajda2_2P4S: TLabel;
    LabelTakbirSajda3_1P4F: TLabel;
    LabelTakbirSajda3_2X4F: TLabel;
    LabelTakbirSajda3_2V3V: TLabel;
    LabelTakbirSajda3_2Sh3F: TLabel;
    LabelTakbirSajda3_2P4F: TLabel;
    LabelTakbirSajda3_2A4F: TLabel;
    LabelTakbirSajda4_1X4F: TLabel;
    LabelTakbirSajda4_1P4F: TLabel;
    LabelTakbirSajda4_1A4F: TLabel;
    LabelTakbirSajda4_2A4F: TLabel;
    LabelTakbirSajda4_2X4F: TLabel;
    LabelTakbirSajda4_2P4S: TLabel;
    LabelTakbirSajda4_1P4S: TLabel;
    LabelTakbirSajda3_2P4S: TLabel;
    LabelTakbirSajda4_2P4F: TLabel;
    LabelTasbehV3V: TLabel;
    LabelTasbehB2F: TLabel;
    LabelTasbehA4F: TLabel;
    LabelTasbehP2S: TLabel;
    LabelTasbehSh2S: TLabel;
    LabelTashahhud1X4F: TLabel;
    LabelTashahhud1V3V: TLabel;
    LabelTashahhud1Sh3F: TLabel;
    LabelTashahhud1P4F: TLabel;
    LabelTashahhud1A4F: TLabel;
    LabelTashahhud2X4F: TLabel;
    LabelTashahhud2V3V: TLabel;
    LabelTashahhud2Sh3F: TLabel;
    LabelTashahhud2P4F: TLabel;
    LabelTashahhud2A4F: TLabel;
    LabelTashahhudB2S: TLabel;
    LabelFotiha2B2S: TLabel;
    LabelSalavotB2S: TLabel;
    LabelHamd1B2S: TLabel;
    LabelAzonB2S: TLabel;
    LabelAla1_1B2S: TLabel;
    LabelHamd2B2S: TLabel;
    LabelRobbanaB2S: TLabel;
    LabelKavsarB2S: TLabel;
    LabelFotiha1B2S: TLabel;
    LabelIxlosB2S: TLabel;
    LabelTasme2B2S: TLabel;
    LabelTakbirJalsa2B2S: TLabel;
    LabelTakbirQiyom2B2S: TLabel;
    LabelTakbirQadaB2S: TLabel;
    LabelTakbirRuku2B2S: TLabel;
    LabelTakbirSajda1_1B2S: TLabel;
    LabelSanoB2S: TLabel;
    LabelAzonDuoB2S: TLabel;
    LabelTakbirRuku1B2S: TLabel;
    LabelTaavvuzB2S: TLabel;
    LabelAziym1B2S: TLabel;
    LabelTakbirKirishB2S: TLabel;
    LabelNiyatB2S: TLabel;
    LabelBomdod: TLabel;
    LabelPeshin: TLabel;
    LabelAsr: TLabel;
    LabelShom: TLabel;
    LabelBasmala1B2S: TLabel;
    LabelTasme1B2S: TLabel;
    LabelTakbirJalsa1B2S: TLabel;
    LabelTakbirSajda1_2B2S: TLabel;
    LabelTakbirSajda2_1B2S: TLabel;
    LabelTakbirSajda2_2B2S: TLabel;
    LabelTashahhudB2F: TLabel;
    LabelTashahhud1P4S: TLabel;
    LabelTashahhud2P4S: TLabel;
    LabelTashahhudX2S: TLabel;
    LabelTashahhudP2S: TLabel;
    LabelTashahhudSh2S: TLabel;
    LabelXufton: TLabel;
    MainMenu: TMainMenu;
    MenuItemPrevious: TMenuItem;
    MenuItemNext: TMenuItem;
    MenuItemImage: TMenuItem;
    MenuItemExit: TMenuItem;
    MenuItemSettings: TMenuItem;
    MenuItemAbout: TMenuItem;
    MenuItemFile: TMenuItem;
    MenuItemEdit: TMenuItem;
    MenuItemHelp: TMenuItem;
    PageControlX4F: TPageControl;
    PageControlV3V: TPageControl;
    PageControlX2S: TPageControl;
    PageControlSh2S: TPageControl;
    PageControlSh3F: TPageControl;
    PageControlB2S: TPageControl;
    PageControlB2F: TPageControl;
    PageControlP2S: TPageControl;
    PageControlA4F: TPageControl;
    PageControlP4S: TPageControl;
    PageControlBomdod: TPageControl;
    PageControlP4F: TPageControl;
    PageControlPeshin: TPageControl;
    PageControlAsr: TPageControl;
    PageControlShom: TPageControl;
    PageControlXufton: TPageControl;
    PageControlMain: TPageControl;
    PanelAla1_1X4F: TPanel;
    PanelAla1_1V3V: TPanel;
    PanelAla1_1X2S: TPanel;
    PanelAla1_1Sh2S: TPanel;
    PanelAla1_1Sh3F: TPanel;
    PanelAla1_1B2F: TPanel;
    PanelAla1_1P2S: TPanel;
    PanelAla1_1A4F: TPanel;
    PanelAla1_1P4S: TPanel;
    PanelAla1_1P4F: TPanel;
    PanelAla1_2X4F: TPanel;
    PanelAla1_2V3V: TPanel;
    PanelAla1_2X2S: TPanel;
    PanelAla1_2Sh2S: TPanel;
    PanelAla1_2Sh3F: TPanel;
    PanelAla1_2B2S: TPanel;
    PanelAla1_2B2F: TPanel;
    PanelAla1_2P2S: TPanel;
    PanelAla1_2A4F: TPanel;
    PanelAla1_2P4S: TPanel;
    PanelAla1_2P4F: TPanel;
    PanelAla2_1X4F: TPanel;
    PanelAla2_1V3V: TPanel;
    PanelAla2_1X2S: TPanel;
    PanelAla2_1Sh2S: TPanel;
    PanelAla2_1Sh3F: TPanel;
    PanelAla2_1B2S: TPanel;
    PanelAla2_1B2F: TPanel;
    PanelAla2_1P2S: TPanel;
    PanelAla2_1A4F: TPanel;
    PanelAla2_1P4S: TPanel;
    PanelAla2_1P4F: TPanel;
    PanelAla2_2X4F: TPanel;
    PanelAla2_2V3V: TPanel;
    PanelAla2_2X2S: TPanel;
    PanelAla2_2Sh2S: TPanel;
    PanelAla2_2Sh3F: TPanel;
    PanelAla2_2P2S: TPanel;
    PanelAla2_2P4F: TPanel;
    PanelAla2_2A4F: TPanel;
    PanelAla3_1A4F: TPanel;
    PanelAla3_1X4F: TPanel;
    PanelAla3_1V3V: TPanel;
    PanelAla3_1Sh3F: TPanel;
    PanelAla3_1P4S: TPanel;
    PanelAla2_2B2S: TPanel;
    PanelAla2_2B2F: TPanel;
    PanelAla2_2P4S: TPanel;
    PanelAla3_1P4F: TPanel;
    PanelAla3_2X4F: TPanel;
    PanelAla3_2V3V: TPanel;
    PanelAla3_2Sh3F: TPanel;
    PanelAla3_2P4F: TPanel;
    PanelAla3_2A4F: TPanel;
    PanelAla4_1X4F: TPanel;
    PanelAla4_1P4F: TPanel;
    PanelAla4_1A4F: TPanel;
    PanelAla4_2A4F: TPanel;
    PanelAla4_2X4F: TPanel;
    PanelAla4_2P4S: TPanel;
    PanelAla4_1P4S: TPanel;
    PanelAla3_2P4S: TPanel;
    PanelAla4_2P4F: TPanel;
    PanelAziym1X4F: TPanel;
    PanelAziym1V3V: TPanel;
    PanelAziym1X2S: TPanel;
    PanelAziym1Sh2S: TPanel;
    PanelAziym1Sh3F: TPanel;
    PanelAziym1B2F: TPanel;
    PanelAziym1P2S: TPanel;
    PanelAziym1A4F: TPanel;
    PanelAziym1P4S: TPanel;
    PanelAziym1P4F: TPanel;
    PanelAziym2X4F: TPanel;
    PanelAziym2V3V: TPanel;
    PanelAziym2X2S: TPanel;
    PanelAziym2Sh2S: TPanel;
    PanelAziym2Sh3F: TPanel;
    PanelAziym2B2S: TPanel;
    PanelAziym2B2F: TPanel;
    PanelAziym2P2S: TPanel;
    PanelAziym2A4F: TPanel;
    PanelAziym2P4S: TPanel;
    PanelAziym2P4F: TPanel;
    PanelAziym3A4F: TPanel;
    PanelAziym3X4F: TPanel;
    PanelAziym3V3V: TPanel;
    PanelAziym3Sh3F: TPanel;
    PanelAziym3P4S: TPanel;
    PanelAziym3P4F: TPanel;
    PanelAziym4A4F: TPanel;
    PanelAziym4X4F: TPanel;
    PanelAziym4P4S: TPanel;
    PanelAziym4P4F: TPanel;
    PanelAzonX4F: TPanel;
    PanelAzonDuoX4F: TPanel;
    PanelAzonSh3F: TPanel;
    PanelAzonDuoA4F: TPanel;
    PanelAzonDuoSh3F: TPanel;
    PanelAzonP4S: TPanel;
    PanelAzonDuoP4S: TPanel;
    PanelAzonA4F: TPanel;
    PanelBasmala1X4F: TPanel;
    PanelBasmala1V3V: TPanel;
    PanelBasmala1X2S: TPanel;
    PanelBasmala1Sh2S: TPanel;
    PanelBasmala1Sh3F: TPanel;
    PanelBasmala1P2S: TPanel;
    PanelBasmala1A4F: TPanel;
    PanelBasmala2X4F: TPanel;
    PanelBasmala2V3V: TPanel;
    PanelBasmala2X2S: TPanel;
    PanelBasmala2Sh2S: TPanel;
    PanelBasmala2Sh3F: TPanel;
    PanelBasmala2P2S: TPanel;
    PanelBasmala2A4F: TPanel;
    PanelBasmala3A4F: TPanel;
    PanelBasmala3X4F: TPanel;
    PanelBasmala3V3V: TPanel;
    PanelBasmala3Sh3F: TPanel;
    PanelBasmala4A4F: TPanel;
    PanelBasmala4X4F: TPanel;
    PanelDuoV3V: TPanel;
    PanelDuoSh2S: TPanel;
    PanelDuoFA4F: TPanel;
    PanelDuoB2F: TPanel;
    PanelDuoA4F: TPanel;
    PanelDuoP2S: TPanel;
    PanelDuoFX4F: TPanel;
    PanelDuoFSh3F: TPanel;
    PanelDuoFP4F: TPanel;
    PanelFalaqSh2S: TPanel;
    PanelFotiha1X4F: TPanel;
    PanelFotiha1V3V: TPanel;
    PanelFotiha1X2S: TPanel;
    PanelFotiha1Sh2S: TPanel;
    PanelFotiha1Sh3F: TPanel;
    PanelFotiha1P2S: TPanel;
    PanelFotiha1A4F: TPanel;
    PanelFotiha2X4F: TPanel;
    PanelFotiha2V3V: TPanel;
    PanelFotiha2X2S: TPanel;
    PanelFotiha2Sh2S: TPanel;
    PanelFotiha2Sh3F: TPanel;
    PanelFotiha2P2S: TPanel;
    PanelFotiha2A4F: TPanel;
    PanelFotiha3A4F: TPanel;
    PanelQunut: TPanel;
    PanelTakbirQunut: TPanel;
    PanelNasV3V: TPanel;
    PanelFotiha3X4F: TPanel;
    PanelFotiha3V3V: TPanel;
    PanelFotiha3Sh3F: TPanel;
    PanelFotiha4A4F: TPanel;
    PanelFotiha4X4F: TPanel;
    PanelHamd1X4F: TPanel;
    PanelHamd1V3V: TPanel;
    PanelHamd1X2S: TPanel;
    PanelHamd1Sh2S: TPanel;
    PanelHamd1Sh3F: TPanel;
    PanelHamd1P2S: TPanel;
    PanelHamd1A4F: TPanel;
    PanelHamd2X4F: TPanel;
    PanelHamd2V3V: TPanel;
    PanelHamd2X2S: TPanel;
    PanelHamd2Sh2S: TPanel;
    PanelHamd2Sh3F: TPanel;
    PanelHamd2P2S: TPanel;
    PanelHamd2A4F: TPanel;
    PanelHamd3A4F: TPanel;
    PanelHamd3X4F: TPanel;
    PanelHamd3V3V: TPanel;
    PanelHamd3Sh3F: TPanel;
    PanelHamd4A4F: TPanel;
    PanelHamd4X4F: TPanel;
    PanelIqomatX4F: TPanel;
    PanelIqomatSh3F: TPanel;
    PanelIqomatP4F: TPanel;
    PanelBasmala1P4S: TPanel;
    PanelBasmala1P4F: TPanel;
    PanelBasmala2P4S: TPanel;
    PanelBasmala2P4F: TPanel;
    PanelBasmala3P4S: TPanel;
    PanelBasmala3P4F: TPanel;
    PanelBasmala4P4S: TPanel;
    PanelBasmala4P4F: TPanel;
    PanelFotiha1P4F: TPanel;
    PanelFotiha2P4F: TPanel;
    PanelFotiha3P4F: TPanel;
    PanelFotiha4P4F: TPanel;
    PanelHamd1P4F: TPanel;
    PanelHamd2P4F: TPanel;
    PanelHamd3P4F: TPanel;
    PanelHamd4P4S: TPanel;
    PanelHamd4P4F: TPanel;
    PanelIqomatA4F: TPanel;
    PanelIxlosA4F: TPanel;
    PanelIxlosX4F: TPanel;
    PanelFalaqV3V: TPanel;
    PanelNasX2S: TPanel;
    PanelIxlosSh3F: TPanel;
    PanelKavsarA4F: TPanel;
    PanelKavsarX4F: TPanel;
    PanelIxlosV3V: TPanel;
    PanelFalaqX2S: TPanel;
    PanelKavsarSh3F: TPanel;
    PanelKursiA4F: TPanel;
    PanelKursiV3V: TPanel;
    PanelKursiP2S: TPanel;
    PanelKursiSh2S: TPanel;
    PanelNasP2S: TPanel;
    PanelIxlosP4F: TPanel;
    PanelFalaqP2S: TPanel;
    PanelKavsarP4F: TPanel;
    PanelNasSh2S: TPanel;
    PanelNasP4S: TPanel;
    PanelFotiha1P4S: TPanel;
    PanelFotiha2P4S: TPanel;
    PanelFotiha3P4S: TPanel;
    PanelFotiha4P4S: TPanel;
    PanelHamd1P4S: TPanel;
    PanelHamd2P4S: TPanel;
    PanelHamd3P4S: TPanel;
    PanelIqomatB2F: TPanel;
    PanelBasmala1B2F: TPanel;
    PanelBasmala2B2S: TPanel;
    PanelBasmala2B2F: TPanel;
    PanelFotiha1B2F: TPanel;
    PanelFotiha2B2F: TPanel;
    PanelHamd1B2F: TPanel;
    PanelHamd2B2F: TPanel;
    PanelIxlosP4S: TPanel;
    PanelFalaqP4S: TPanel;
    PanelKavsarP4S: TPanel;
    PanelNasB2F: TPanel;
    PanelFalaqB2F: TPanel;
    PanelNiyatX4F: TPanel;
    PanelNiyatV3V: TPanel;
    PanelNiyatX2S: TPanel;
    PanelNiyatSh2S: TPanel;
    PanelNiyatSh3F: TPanel;
    PanelNiyatB2F: TPanel;
    PanelNiyatP2S: TPanel;
    PanelNiyatP4S: TPanel;
    PanelNiyatP4F: TPanel;
    PanelNiyatA4F: TPanel;
    PanelRobbanaX4F: TPanel;
    PanelRobbanaV3V: TPanel;
    PanelRobbanaX2S: TPanel;
    PanelRobbanaSh2S: TPanel;
    PanelRobbanaSh3F: TPanel;
    PanelRobbanaB2F: TPanel;
    PanelRobbanaP2S: TPanel;
    PanelRobbanaA4F: TPanel;
    PanelRobbanaP4S: TPanel;
    PanelRobbanaP4F: TPanel;
    PanelSalavotX4F: TPanel;
    PanelSalavotV3V: TPanel;
    PanelSalavotX2S: TPanel;
    PanelSalavotSh2S: TPanel;
    PanelSalavotSh3F: TPanel;
    PanelSalavotB2F: TPanel;
    PanelKursiB2F: TPanel;
    PanelSalavotP2S: TPanel;
    PanelSalavotA4F: TPanel;
    PanelSalavotP4S: TPanel;
    PanelSalavotP4F: TPanel;
    PanelSalomX4F: TPanel;
    PanelSalomV3V: TPanel;
    PanelSalomX2S: TPanel;
    PanelSalomSh2S: TPanel;
    PanelSalomSh3F: TPanel;
    PanelSalomB2S: TPanel;
    PanelSalomB2F: TPanel;
    PanelSalomP2S: TPanel;
    PanelSalomA4F: TPanel;
    PanelSalomP4S: TPanel;
    PanelSalomP4F: TPanel;
    PanelTasme1X4F: TPanel;
    PanelTasme1V3V: TPanel;
    PanelTasme1X2S: TPanel;
    PanelTasme1Sh2S: TPanel;
    PanelTasme1Sh3F: TPanel;
    PanelTasme1B2F: TPanel;
    PanelTasme1P2S: TPanel;
    PanelTasme1A4F: TPanel;
    PanelTasme1P4S: TPanel;
    PanelTasme1P4F: TPanel;
    PanelTasme2X4F: TPanel;
    PanelTasme2V3V: TPanel;
    PanelTasme2X2S: TPanel;
    PanelTasme2Sh2S: TPanel;
    PanelTasme2Sh3F: TPanel;
    PanelTasme2B2F: TPanel;
    PanelTasme2P2S: TPanel;
    PanelTasme2A4F: TPanel;
    PanelTasme2P4S: TPanel;
    PanelTasme2P4F: TPanel;
    PanelTasme3A4F: TPanel;
    PanelTasme3X4F: TPanel;
    PanelTasme3V3V: TPanel;
    PanelTasme3Sh3F: TPanel;
    PanelTasme3P4S: TPanel;
    PanelTasme3P4F: TPanel;
    PanelTasme4A4F: TPanel;
    PanelTasme4X4F: TPanel;
    PanelTasme4P4S: TPanel;
    PanelTasme4P4F: TPanel;
    PanelSanoX4F: TPanel;
    PanelSanoV3V: TPanel;
    PanelSanoX2S: TPanel;
    PanelSanoSh2S: TPanel;
    PanelSanoSh3F: TPanel;
    PanelSanoB2F: TPanel;
    PanelSanoP2S: TPanel;
    PanelSanoA4F: TPanel;
    PanelSanoP4S: TPanel;
    PanelSanoP4F: TPanel;
    PanelTaavvuzX4F: TPanel;
    PanelTaavvuzV3V: TPanel;
    PanelTaavvuzX2S: TPanel;
    PanelTaavvuzSh2S: TPanel;
    PanelTaavvuzSh3F: TPanel;
    PanelTaavvuzB2F: TPanel;
    PanelTaavvuzP2S: TPanel;
    PanelTaavvuzA4F: TPanel;
    PanelTaavvuzP4S: TPanel;
    PanelTaavvuzP4F: TPanel;
    PanelTakbirJalsa1X4F: TPanel;
    PanelTakbirJalsa1V3V: TPanel;
    PanelTakbirJalsa1X2S: TPanel;
    PanelTakbirJalsa1Sh2S: TPanel;
    PanelTakbirJalsa1Sh3F: TPanel;
    PanelTakbirJalsa1B2F: TPanel;
    PanelTakbirJalsa1P2S: TPanel;
    PanelTakbirJalsa1A4F: TPanel;
    PanelTakbirJalsa1P4S: TPanel;
    PanelTakbirJalsa1P4F: TPanel;
    PanelTakbirJalsa2X4F: TPanel;
    PanelTakbirJalsa2V3V: TPanel;
    PanelTakbirJalsa2X2S: TPanel;
    PanelTakbirJalsa2Sh2S: TPanel;
    PanelTakbirJalsa2Sh3F: TPanel;
    PanelTakbirJalsa2B2F: TPanel;
    PanelTakbirJalsa2P2S: TPanel;
    PanelTakbirJalsa2A4F: TPanel;
    PanelTakbirJalsa2P4S: TPanel;
    PanelTakbirJalsa2P4F: TPanel;
    PanelTakbirJalsa3A4F: TPanel;
    PanelTakbirJalsa3X4F: TPanel;
    PanelTakbirJalsa3V3V: TPanel;
    PanelTakbirJalsa3Sh3F: TPanel;
    PanelTakbirJalsa3P4S: TPanel;
    PanelTakbirJalsa3P4F: TPanel;
    PanelTakbirJalsa4A4F: TPanel;
    PanelTakbirJalsa4X4F: TPanel;
    PanelTakbirJalsa4P4S: TPanel;
    PanelTakbirJalsa4P4F: TPanel;
    PanelTakbirKirishX4F: TPanel;
    PanelTakbirKirishV3V: TPanel;
    PanelTakbirKirishX2S: TPanel;
    PanelTakbirKirishSh2S: TPanel;
    PanelTakbirKirishSh3F: TPanel;
    PanelTakbirKirishB2F: TPanel;
    PanelTakbirKirishP2S: TPanel;
    PanelTakbirKirishP4S: TPanel;
    PanelTakbirKirishP4F: TPanel;
    PanelTakbirKirishA4F: TPanel;
    PanelTakbirQada1X4F: TPanel;
    PanelTakbirQada1V3V: TPanel;
    PanelTakbirQada1Sh3F: TPanel;
    PanelTakbirQada1P4F: TPanel;
    PanelTakbirQada1A4F: TPanel;
    PanelTakbirQada2X4F: TPanel;
    PanelTakbirQada2V3V: TPanel;
    PanelTakbirQada2Sh3F: TPanel;
    PanelTakbirQada2P4F: TPanel;
    PanelTakbirQada2A4F: TPanel;
    PanelTakbirQadaB2F: TPanel;
    PanelDuoFB2F: TPanel;
    PanelTakbirQada1P4S: TPanel;
    PanelTakbirQada2P4S: TPanel;
    PanelTakbirQadaX2S: TPanel;
    PanelTakbirQadaP2S: TPanel;
    PanelTakbirQadaSh2S: TPanel;
    PanelTakbirQiyom2X4F: TPanel;
    PanelTakbirQiyom2V3V: TPanel;
    PanelTakbirQiyom2X2S: TPanel;
    PanelTakbirQiyom2Sh2S: TPanel;
    PanelTakbirQiyom2Sh3F: TPanel;
    PanelTakbirQiyom2B2F: TPanel;
    PanelTakbirQiyom2P2S: TPanel;
    PanelTakbirQiyom2A4F: TPanel;
    PanelTakbirQiyom2P4S: TPanel;
    PanelTakbirQiyom2P4F: TPanel;
    PanelTakbirQiyom3A4F: TPanel;
    PanelTakbirQiyom3X4F: TPanel;
    PanelTakbirQiyom3V3V: TPanel;
    PanelTakbirQiyom3Sh3F: TPanel;
    PanelTakbirQiyom3P4S: TPanel;
    PanelTakbirQiyom3P4F: TPanel;
    PanelTakbirQiyom4A4F: TPanel;
    PanelTakbirQiyom4X4F: TPanel;
    PanelTakbirQiyom4P4S: TPanel;
    PanelTakbirQiyom4P4F: TPanel;
    PanelTakbirRuku1X4F: TPanel;
    PanelTakbirRuku1V3V: TPanel;
    PanelTakbirRuku1X2S: TPanel;
    PanelTakbirRuku1Sh2S: TPanel;
    PanelTakbirRuku1Sh3F: TPanel;
    PanelTakbirRuku1B2F: TPanel;
    PanelTakbirRuku1P2S: TPanel;
    PanelTakbirRuku1A4F: TPanel;
    PanelTakbirRuku1P4S: TPanel;
    PanelTakbirRuku1P4F: TPanel;
    PanelTakbirRuku2X4F: TPanel;
    PanelTakbirRuku2V3V: TPanel;
    PanelTakbirRuku2X2S: TPanel;
    PanelTakbirRuku2Sh2S: TPanel;
    PanelTakbirRuku2Sh3F: TPanel;
    PanelTakbirRuku2B2F: TPanel;
    PanelTakbirRuku2P2S: TPanel;
    PanelTakbirRuku2A4F: TPanel;
    PanelTakbirRuku2P4S: TPanel;
    PanelTakbirRuku2P4F: TPanel;
    PanelTakbirRuku3A4F: TPanel;
    PanelTakbirRuku3X4F: TPanel;
    PanelTakbirRuku3V3V: TPanel;
    PanelTakbirRuku3Sh3F: TPanel;
    PanelTakbirRuku3P4S: TPanel;
    PanelTakbirRuku3P4F: TPanel;
    PanelTakbirRuku4A4F: TPanel;
    PanelTakbirRuku4X4F: TPanel;
    PanelTakbirRuku4P4S: TPanel;
    PanelTakbirRuku4P4F: TPanel;
    PanelTakbirSajda1_1X4F: TPanel;
    PanelTakbirSajda1_1V3V: TPanel;
    PanelTakbirSajda1_1X2S: TPanel;
    PanelTakbirSajda1_1Sh2S: TPanel;
    PanelTakbirSajda1_1Sh3F: TPanel;
    PanelTakbirSajda1_1B2F: TPanel;
    PanelTakbirSajda1_1P2S: TPanel;
    PanelTakbirSajda1_1A4F: TPanel;
    PanelTakbirSajda1_1P4S: TPanel;
    PanelTakbirSajda1_1P4F: TPanel;
    PanelTakbirSajda1_2X4F: TPanel;
    PanelTakbirSajda1_2V3V: TPanel;
    PanelTakbirSajda1_2X2S: TPanel;
    PanelTakbirSajda1_2Sh2S: TPanel;
    PanelTakbirSajda1_2Sh3F: TPanel;
    PanelTakbirSajda1_2B2F: TPanel;
    PanelTakbirSajda1_2P2S: TPanel;
    PanelTakbirSajda1_2A4F: TPanel;
    PanelTakbirSajda1_2P4S: TPanel;
    PanelTakbirSajda1_2P4F: TPanel;
    PanelTakbirSajda2_1X4F: TPanel;
    PanelTakbirSajda2_1V3V: TPanel;
    PanelTakbirSajda2_1X2S: TPanel;
    PanelTakbirSajda2_1Sh2S: TPanel;
    PanelTakbirSajda2_1Sh3F: TPanel;
    PanelTakbirSajda2_1B2F: TPanel;
    PanelTakbirSajda2_1P2S: TPanel;
    PanelTakbirSajda2_1A4F: TPanel;
    PanelTakbirSajda2_1P4S: TPanel;
    PanelTakbirSajda2_1P4F: TPanel;
    PanelTakbirSajda2_2X4F: TPanel;
    PanelTakbirSajda2_2V3V: TPanel;
    PanelTakbirSajda2_2X2S: TPanel;
    PanelTakbirSajda2_2Sh2S: TPanel;
    PanelTakbirSajda2_2Sh3F: TPanel;
    PanelTakbirSajda2_2P2S: TPanel;
    PanelTakbirSajda2_2P4F: TPanel;
    PanelTakbirSajda2_2A4F: TPanel;
    PanelTakbirSajda3_1A4F: TPanel;
    PanelTakbirSajda3_1X4F: TPanel;
    PanelTakbirSajda3_1V3V: TPanel;
    PanelTakbirSajda3_1Sh3F: TPanel;
    PanelTakbirSajda3_1P4S: TPanel;
    PanelTakbirSajda2_2B2F: TPanel;
    PanelTakbirSajda2_2P4S: TPanel;
    PanelTakbirSajda3_1P4F: TPanel;
    PanelTakbirSajda3_2X4F: TPanel;
    PanelTakbirSajda3_2V3V: TPanel;
    PanelTakbirSajda3_2Sh3F: TPanel;
    PanelTakbirSajda3_2P4F: TPanel;
    PanelTakbirSajda3_2A4F: TPanel;
    PanelTakbirSajda4_1X4F: TPanel;
    PanelTakbirSajda4_1P4F: TPanel;
    PanelTakbirSajda4_1A4F: TPanel;
    PanelTakbirSajda4_2A4F: TPanel;
    PanelTakbirSajda4_2X4F: TPanel;
    PanelTakbirSajda4_2P4S: TPanel;
    PanelTakbirSajda4_1P4S: TPanel;
    PanelTakbirSajda3_2P4S: TPanel;
    PanelTakbirSajda4_2P4F: TPanel;
    PanelTasbehV3V: TPanel;
    PanelTasbehB2F: TPanel;
    PanelTasbehA4F: TPanel;
    PanelTasbehP2S: TPanel;
    PanelTasbehSh2S: TPanel;
    PanelTashahhud1X4F: TPanel;
    PanelTashahhud1V3V: TPanel;
    PanelTashahhud1Sh3F: TPanel;
    PanelTashahhud1P4F: TPanel;
    PanelTashahhud1A4F: TPanel;
    PanelTashahhud2X4F: TPanel;
    PanelTashahhud2V3V: TPanel;
    PanelTashahhud2Sh3F: TPanel;
    PanelTashahhud2P4F: TPanel;
    PanelTashahhud2A4F: TPanel;
    PanelTashahhudB2S: TPanel;
    PanelFotiha2B2S: TPanel;
    PanelSalavotB2S: TPanel;
    PanelHamd1B2S: TPanel;
    PanelAzonB2S: TPanel;
    PanelAla1_1B2S: TPanel;
    PanelHamd2B2S: TPanel;
    PanelRobbanaB2S: TPanel;
    PanelKavsarB2S: TPanel;
    PanelFotiha1B2S: TPanel;
    PanelIxlosB2S: TPanel;
    PanelTasme2B2S: TPanel;
    PanelTakbirJalsa2B2S: TPanel;
    PanelTakbirQiyom2B2S: TPanel;
    PanelTakbirQadaB2S: TPanel;
    PanelTakbirRuku2B2S: TPanel;
    PanelTakbirSajda1_1B2S: TPanel;
    PanelSanoB2S: TPanel;
    PanelAzonDuoB2S: TPanel;
    PanelTakbirRuku1B2S: TPanel;
    PanelTaavvuzB2S: TPanel;
    PanelAziym1B2S: TPanel;
    PanelTakbirKirishB2S: TPanel;
    PanelNiyatB2S: TPanel;
    PanelTashahhudX2S: TPanel;
    PanelTashahhudP2S: TPanel;
    PanelTashahhudSh2S: TPanel;
    PanelBottom: TPanel;
    PanelMain: TPanel;
    PanelImage: TPanel;
    PanelBasmala1B2S: TPanel;
    PanelTasme1B2S: TPanel;
    PanelTakbirJalsa1B2S: TPanel;
    PanelTakbirSajda1_2B2S: TPanel;
    PanelTakbirSajda2_1B2S: TPanel;
    PanelTakbirSajda2_2B2S: TPanel;
    PanelTashahhudB2F: TPanel;
    PanelTashahhud1P4S: TPanel;
    PanelTashahhud2P4S: TPanel;
    ScrollBoxDuoA4F: TScrollBox;
    ScrollBoxDuoX4F: TScrollBox;
    ScrollBoxDuoV3V: TScrollBox;
    ScrollBoxDuoSh2S: TScrollBox;
    ScrollBoxDuoSh3F: TScrollBox;
    ScrollBoxDuoP2S: TScrollBox;
    ScrollBoxDuoP4F: TScrollBox;
    ScrollBoxJalsa1X4F: TScrollBox;
    ScrollBoxJalsa1V3V: TScrollBox;
    ScrollBoxJalsa1X2S: TScrollBox;
    ScrollBoxJalsa1Sh2S: TScrollBox;
    ScrollBoxJalsa1Sh3F: TScrollBox;
    ScrollBoxJalsa1B2F: TScrollBox;
    ScrollBoxJalsa1P2S: TScrollBox;
    ScrollBoxJalsa1A4F: TScrollBox;
    ScrollBoxJalsa1P4S: TScrollBox;
    ScrollBoxJalsa1P4F: TScrollBox;
    ScrollBoxJalsa2X4F: TScrollBox;
    ScrollBoxJalsa2V3V: TScrollBox;
    ScrollBoxJalsa2X2S: TScrollBox;
    ScrollBoxJalsa2Sh2S: TScrollBox;
    ScrollBoxJalsa2Sh3F: TScrollBox;
    ScrollBoxJalsa2B2S: TScrollBox;
    ScrollBoxJalsa2B2F: TScrollBox;
    ScrollBoxJalsa2P2S: TScrollBox;
    ScrollBoxJalsa2A4F: TScrollBox;
    ScrollBoxJalsa2P4S: TScrollBox;
    ScrollBoxJalsa2P4F: TScrollBox;
    ScrollBoxJalsa3A4F: TScrollBox;
    ScrollBoxJalsa3X4F: TScrollBox;
    ScrollBoxJalsa3V3V: TScrollBox;
    ScrollBoxJalsa3Sh3F: TScrollBox;
    ScrollBoxJalsa3P4S: TScrollBox;
    ScrollBoxJalsa3P4F: TScrollBox;
    ScrollBoxJalsa4A4F: TScrollBox;
    ScrollBoxJalsa4X4F: TScrollBox;
    ScrollBoxJalsa4P4S: TScrollBox;
    ScrollBoxJalsa4P4F: TScrollBox;
    ScrollBoxKirishX4F: TScrollBox;
    ScrollBoxKirishV3V: TScrollBox;
    ScrollBoxKirishX2S: TScrollBox;
    ScrollBoxKirishSh2S: TScrollBox;
    ScrollBoxKirishSh3F: TScrollBox;
    ScrollBoxKirishB2F: TScrollBox;
    ScrollBoxKirishP2S: TScrollBox;
    ScrollBoxKirishP4S: TScrollBox;
    ScrollBoxKirishP4F: TScrollBox;
    ScrollBoxKirishA4F: TScrollBox;
    ScrollBoxQada1X4F: TScrollBox;
    ScrollBoxQada1V3V: TScrollBox;
    ScrollBoxQada1Sh3F: TScrollBox;
    ScrollBoxQada1P4F: TScrollBox;
    ScrollBoxQada1A4F: TScrollBox;
    ScrollBoxQada2X4F: TScrollBox;
    ScrollBoxQada2V3V: TScrollBox;
    ScrollBoxQada2Sh3F: TScrollBox;
    ScrollBoxQada2P4F: TScrollBox;
    ScrollBoxQada2A4F: TScrollBox;
    ScrollBoxQadaB2F: TScrollBox;
    ScrollBoxDuoB2F: TScrollBox;
    ScrollBoxQada1P4S: TScrollBox;
    ScrollBoxQada2P4S: TScrollBox;
    ScrollBoxQadaX2S: TScrollBox;
    ScrollBoxQadaP2S: TScrollBox;
    ScrollBoxQadaSh2S: TScrollBox;
    ScrollBoxQiyom1X4F: TScrollBox;
    ScrollBoxQiyom1V3V: TScrollBox;
    ScrollBoxQiyom1X2S: TScrollBox;
    ScrollBoxQiyom1Sh2S: TScrollBox;
    ScrollBoxQiyom1Sh3F: TScrollBox;
    ScrollBoxQiyom1B2F: TScrollBox;
    ScrollBoxQiyom1P2S: TScrollBox;
    ScrollBoxQiyom1A4F: TScrollBox;
    ScrollBoxQiyom1P4S: TScrollBox;
    ScrollBoxQiyom1P4F: TScrollBox;
    ScrollBoxQiyom2X4F: TScrollBox;
    ScrollBoxQiyom2V3V: TScrollBox;
    ScrollBoxQiyom2X2S: TScrollBox;
    ScrollBoxQiyom2Sh2S: TScrollBox;
    ScrollBoxQiyom2Sh3F: TScrollBox;
    ScrollBoxQiyom2B2F: TScrollBox;
    ScrollBoxQiyom2P2S: TScrollBox;
    ScrollBoxQiyom2A4F: TScrollBox;
    ScrollBoxQiyom2P4S: TScrollBox;
    ScrollBoxQiyom2P4F: TScrollBox;
    ScrollBoxQiyom3A4F: TScrollBox;
    ScrollBoxQiyom3X4F: TScrollBox;
    ScrollBoxQiyom3V3V: TScrollBox;
    ScrollBoxQiyom3Sh3F: TScrollBox;
    ScrollBoxQiyom3P4S: TScrollBox;
    ScrollBoxQiyom3P4F: TScrollBox;
    ScrollBoxQiyom4A4F: TScrollBox;
    ScrollBoxQiyom4X4F: TScrollBox;
    ScrollBoxQiyom4P4S: TScrollBox;
    ScrollBoxQiyom4P4F: TScrollBox;
    ScrollBoxQovma1X4F: TScrollBox;
    ScrollBoxQovma1V3V: TScrollBox;
    ScrollBoxQovma1X2S: TScrollBox;
    ScrollBoxQovma1Sh2S: TScrollBox;
    ScrollBoxQovma1Sh3F: TScrollBox;
    ScrollBoxQovma1B2F: TScrollBox;
    ScrollBoxQovma1P2S: TScrollBox;
    ScrollBoxQovma1A4F: TScrollBox;
    ScrollBoxQovma1P4S: TScrollBox;
    ScrollBoxQovma1P4F: TScrollBox;
    ScrollBoxQovma2X4F: TScrollBox;
    ScrollBoxQovma2V3V: TScrollBox;
    ScrollBoxQovma2X2S: TScrollBox;
    ScrollBoxQovma2Sh2S: TScrollBox;
    ScrollBoxQovma2Sh3F: TScrollBox;
    ScrollBoxQovma2B2F: TScrollBox;
    ScrollBoxQovma2P2S: TScrollBox;
    ScrollBoxQovma2A4F: TScrollBox;
    ScrollBoxQovma2P4S: TScrollBox;
    ScrollBoxQovma2P4F: TScrollBox;
    ScrollBoxQovma3A4F: TScrollBox;
    ScrollBoxQovma3X4F: TScrollBox;
    ScrollBoxQovma3V3V: TScrollBox;
    ScrollBoxQovma3Sh3F: TScrollBox;
    ScrollBoxQovma3P4S: TScrollBox;
    ScrollBoxQovma3P4F: TScrollBox;
    ScrollBoxQovma4A4F: TScrollBox;
    ScrollBoxQovma4X4F: TScrollBox;
    ScrollBoxQovma4P4S: TScrollBox;
    ScrollBoxQovma4P4F: TScrollBox;
    ScrollBoxRuku1X4F: TScrollBox;
    ScrollBoxRuku1V3V: TScrollBox;
    ScrollBoxRuku1X2S: TScrollBox;
    ScrollBoxRuku1Sh2S: TScrollBox;
    ScrollBoxRuku1Sh3F: TScrollBox;
    ScrollBoxRuku1B2F: TScrollBox;
    ScrollBoxRuku1P2S: TScrollBox;
    ScrollBoxRuku1A4F: TScrollBox;
    ScrollBoxRuku1P4S: TScrollBox;
    ScrollBoxRuku1P4F: TScrollBox;
    ScrollBoxRuku2X4F: TScrollBox;
    ScrollBoxRuku2V3V: TScrollBox;
    ScrollBoxRuku2X2S: TScrollBox;
    ScrollBoxRuku2Sh2S: TScrollBox;
    ScrollBoxRuku2Sh3F: TScrollBox;
    ScrollBoxRuku2B2F: TScrollBox;
    ScrollBoxRuku2P2S: TScrollBox;
    ScrollBoxRuku2A4F: TScrollBox;
    ScrollBoxRuku2P4S: TScrollBox;
    ScrollBoxRuku2P4F: TScrollBox;
    ScrollBoxRuku3A4F: TScrollBox;
    ScrollBoxRuku3X4F: TScrollBox;
    ScrollBoxRuku3V3V: TScrollBox;
    ScrollBoxRuku3Sh3F: TScrollBox;
    ScrollBoxRuku3P4S: TScrollBox;
    ScrollBoxRuku3P4F: TScrollBox;
    ScrollBoxRuku4A4F: TScrollBox;
    ScrollBoxRuku4X4F: TScrollBox;
    ScrollBoxRuku4P4S: TScrollBox;
    ScrollBoxRuku4P4F: TScrollBox;
    ScrollBoxSajda1_1X4F: TScrollBox;
    ScrollBoxSajda1_1V3V: TScrollBox;
    ScrollBoxSajda1_1X2S: TScrollBox;
    ScrollBoxSajda1_1Sh2S: TScrollBox;
    ScrollBoxSajda1_1Sh3F: TScrollBox;
    ScrollBoxSajda1_1B2F: TScrollBox;
    ScrollBoxSajda1_1P2S: TScrollBox;
    ScrollBoxSajda1_1A4F: TScrollBox;
    ScrollBoxSajda1_1P4S: TScrollBox;
    ScrollBoxSajda1_1P4F: TScrollBox;
    ScrollBoxSajda1_2X4F: TScrollBox;
    ScrollBoxSajda1_2V3V: TScrollBox;
    ScrollBoxSajda1_2X2S: TScrollBox;
    ScrollBoxSajda1_2Sh2S: TScrollBox;
    ScrollBoxSajda1_2Sh3F: TScrollBox;
    ScrollBoxSajda1_2B2F: TScrollBox;
    ScrollBoxSajda1_2P2S: TScrollBox;
    ScrollBoxSajda1_2A4F: TScrollBox;
    ScrollBoxSajda1_2P4S: TScrollBox;
    ScrollBoxSajda1_2P4F: TScrollBox;
    ScrollBoxSajda2_1X4F: TScrollBox;
    ScrollBoxSajda2_1V3V: TScrollBox;
    ScrollBoxSajda2_1X2S: TScrollBox;
    ScrollBoxSajda2_1Sh2S: TScrollBox;
    ScrollBoxSajda2_1Sh3F: TScrollBox;
    ScrollBoxSajda2_1B2F: TScrollBox;
    ScrollBoxSajda2_1P2S: TScrollBox;
    ScrollBoxSajda2_1A4F: TScrollBox;
    ScrollBoxSajda2_1P4S: TScrollBox;
    ScrollBoxSajda2_1P4F: TScrollBox;
    ScrollBoxSajda2_2X4F: TScrollBox;
    ScrollBoxSajda2_2V3V: TScrollBox;
    ScrollBoxSajda2_2X2S: TScrollBox;
    ScrollBoxSajda2_2Sh2S: TScrollBox;
    ScrollBoxSajda2_2Sh3F: TScrollBox;
    ScrollBoxSajda2_2P2S: TScrollBox;
    ScrollBoxSajda2_2P4F: TScrollBox;
    ScrollBoxSajda2_2A4F: TScrollBox;
    ScrollBoxSajda3_1A4F: TScrollBox;
    ScrollBoxSajda3_1X4F: TScrollBox;
    ScrollBoxSajda3_1V3V: TScrollBox;
    ScrollBoxSajda3_1Sh3F: TScrollBox;
    ScrollBoxSajda3_1P4S: TScrollBox;
    ScrollBoxSajda2_2B2F: TScrollBox;
    ScrollBoxSajda2_2P4S: TScrollBox;
    ScrollBoxSajda3_1P4F: TScrollBox;
    ScrollBoxSajda3_2X4F: TScrollBox;
    ScrollBoxSajda3_2V3V: TScrollBox;
    ScrollBoxSajda3_2Sh3F: TScrollBox;
    ScrollBoxSajda3_2P4F: TScrollBox;
    ScrollBoxSajda3_2A4F: TScrollBox;
    ScrollBoxSajda4_1X4F: TScrollBox;
    ScrollBoxSajda4_1P4F: TScrollBox;
    ScrollBoxSajda4_1A4F: TScrollBox;
    ScrollBoxSajda4_2A4F: TScrollBox;
    ScrollBoxSajda4_2X4F: TScrollBox;
    ScrollBoxSajda4_2P4S: TScrollBox;
    ScrollBoxSajda4_1P4S: TScrollBox;
    ScrollBoxSajda3_2P4S: TScrollBox;
    ScrollBoxSajda4_2P4F: TScrollBox;
    ScrollBoxSalomX4F: TScrollBox;
    ScrollBoxSalomV3V: TScrollBox;
    ScrollBoxSalomX2S: TScrollBox;
    ScrollBoxSalomSh2S: TScrollBox;
    ScrollBoxSalomSh3F: TScrollBox;
    ScrollBoxSalomB2S: TScrollBox;
    ScrollBoxKirishB2S: TScrollBox;
    ScrollBoxBomdod: TScrollBox;
    ScrollBoxQiyom1B2S: TScrollBox;
    ScrollBoxPeshin: TScrollBox;
    ScrollBoxAsr: TScrollBox;
    ScrollBoxQiyom2B2S: TScrollBox;
    ScrollBoxQadaB2S: TScrollBox;
    ScrollBoxQovma2B2S: TScrollBox;
    ScrollBoxRuku2B2S: TScrollBox;
    ScrollBoxSajda1_1B2S: TScrollBox;
    ScrollBoxRuku1B2S: TScrollBox;
    ScrollBoxQovma1B2S: TScrollBox;
    ScrollBoxJalsa1B2S: TScrollBox;
    ScrollBoxSajda1_2B2S: TScrollBox;
    ScrollBoxSajda2_1B2S: TScrollBox;
    ScrollBoxSajda2_2B2S: TScrollBox;
    ScrollBoxSalomB2F: TScrollBox;
    ScrollBoxSalomP2S: TScrollBox;
    ScrollBoxSalomA4F: TScrollBox;
    ScrollBoxSalomP4S: TScrollBox;
    ScrollBoxSalomP4F: TScrollBox;
    ScrollBoxShom: TScrollBox;
    ScrollBoxXufton: TScrollBox;
    ButtonAzonB2S: TSpeedButton;
    ButtonPrevious: TSpeedButton;
    ButtonNext: TSpeedButton;
    ButtonImage: TSpeedButton;
    SplitterBomdod: TSplitter;
    SplitterPeshin: TSplitter;
    SplitterAsr: TSplitter;
    SplitterShom: TSplitter;
    SplitterXufton: TSplitter;
    TabSheetDuoX4F: TTabSheet;
    TabSheetDuoV3V: TTabSheet;
    TabSheetDuoSh2S: TTabSheet;
    TabSheetDuoSh3F: TTabSheet;
    TabSheetDuoP2S: TTabSheet;
    TabSheetDuoP4F: TTabSheet;
    TabSheetDuoA4F: TTabSheet;
    TabSheetJalsa1X4F: TTabSheet;
    TabSheetJalsa1V3V: TTabSheet;
    TabSheetJalsa1X2S: TTabSheet;
    TabSheetJalsa1Sh2S: TTabSheet;
    TabSheetJalsa1Sh3F: TTabSheet;
    TabSheetJalsa1P2S: TTabSheet;
    TabSheetJalsa1P4F: TTabSheet;
    TabSheetJalsa1A4F: TTabSheet;
    TabSheetJalsa2X4F: TTabSheet;
    TabSheetJalsa2V3V: TTabSheet;
    TabSheetJalsa2X2S: TTabSheet;
    TabSheetJalsa2Sh2S: TTabSheet;
    TabSheetJalsa2Sh3F: TTabSheet;
    TabSheetJalsa2P2S: TTabSheet;
    TabSheetJalsa2P4F: TTabSheet;
    TabSheetJalsa2A4F: TTabSheet;
    TabSheetJalsa3X4F: TTabSheet;
    TabSheetJalsa3V3V: TTabSheet;
    TabSheetJalsa3Sh3F: TTabSheet;
    TabSheetJalsa3P4F: TTabSheet;
    TabSheetJalsa3A4F: TTabSheet;
    TabSheetJalsa4X4F: TTabSheet;
    TabSheetJalsa4P4F: TTabSheet;
    TabSheetJalsa4A4F: TTabSheet;
    TabSheetKirishX4F: TTabSheet;
    TabSheetKirishV3V: TTabSheet;
    TabSheetKirishX2S: TTabSheet;
    TabSheetKirishSh2S: TTabSheet;
    TabSheetKirishSh3F: TTabSheet;
    TabSheetKirishP2S: TTabSheet;
    TabSheetKirishP4F: TTabSheet;
    TabSheetKirishA4F: TTabSheet;
    TabSheetQada1X4F: TTabSheet;
    TabSheetQada1V3V: TTabSheet;
    TabSheetQada1Sh3F: TTabSheet;
    TabSheetQada1P4F: TTabSheet;
    TabSheetQada1A4F: TTabSheet;
    TabSheetQada2A4F: TTabSheet;
    TabSheetQada2X4F: TTabSheet;
    TabSheetQada2V3V: TTabSheet;
    TabSheetQada2Sh3F: TTabSheet;
    TabSheetQada2P4S: TTabSheet;
    TabSheetQada2P4F: TTabSheet;
    TabSheetQadaX2S: TTabSheet;
    TabSheetQadaP2S: TTabSheet;
    TabSheetQadaSh2S: TTabSheet;
    TabSheetQiyom1X4F: TTabSheet;
    TabSheetQiyom1V3V: TTabSheet;
    TabSheetQiyom1X2S: TTabSheet;
    TabSheetQiyom1Sh2S: TTabSheet;
    TabSheetQiyom1Sh3F: TTabSheet;
    TabSheetQiyom1P2S: TTabSheet;
    TabSheetQiyom1P4F: TTabSheet;
    TabSheetQiyom1A4F: TTabSheet;
    TabSheetQiyom2X4F: TTabSheet;
    TabSheetQiyom2V3V: TTabSheet;
    TabSheetQiyom2X2S: TTabSheet;
    TabSheetQiyom2Sh2S: TTabSheet;
    TabSheetQiyom2Sh3F: TTabSheet;
    TabSheetQiyom2P2S: TTabSheet;
    TabSheetQiyom2P4F: TTabSheet;
    TabSheetQiyom2A4F: TTabSheet;
    TabSheetQiyom3X4F: TTabSheet;
    TabSheetQiyom3V3V: TTabSheet;
    TabSheetQiyom3Sh3F: TTabSheet;
    TabSheetQiyom3P4F: TTabSheet;
    TabSheetQiyom3A4F: TTabSheet;
    TabSheetQiyom4X4F: TTabSheet;
    TabSheetQiyom4P4F: TTabSheet;
    TabSheetQiyom4A4F: TTabSheet;
    TabSheetQovma1X4F: TTabSheet;
    TabSheetQovma1V3V: TTabSheet;
    TabSheetQovma1X2S: TTabSheet;
    TabSheetQovma1Sh2S: TTabSheet;
    TabSheetQovma1Sh3F: TTabSheet;
    TabSheetQovma1P2S: TTabSheet;
    TabSheetQovma1P4F: TTabSheet;
    TabSheetQovma1A4F: TTabSheet;
    TabSheetQovma2X4F: TTabSheet;
    TabSheetQovma2V3V: TTabSheet;
    TabSheetQovma2X2S: TTabSheet;
    TabSheetQovma2Sh2S: TTabSheet;
    TabSheetQovma2Sh3F: TTabSheet;
    TabSheetQovma2P2S: TTabSheet;
    TabSheetQovma2P4F: TTabSheet;
    TabSheetQovma2A4F: TTabSheet;
    TabSheetQovma3X4F: TTabSheet;
    TabSheetQovma3V3V: TTabSheet;
    TabSheetQovma3Sh3F: TTabSheet;
    TabSheetQovma3P4F: TTabSheet;
    TabSheetQovma3A4F: TTabSheet;
    TabSheetQovma4X4F: TTabSheet;
    TabSheetQovma4P4F: TTabSheet;
    TabSheetQovma4A4F: TTabSheet;
    TabSheetRuku1X4F: TTabSheet;
    TabSheetRuku1V3V: TTabSheet;
    TabSheetRuku1X2S: TTabSheet;
    TabSheetRuku1Sh2S: TTabSheet;
    TabSheetRuku1Sh3F: TTabSheet;
    TabSheetRuku1P2S: TTabSheet;
    TabSheetRuku1P4F: TTabSheet;
    TabSheetRuku1A4F: TTabSheet;
    TabSheetRuku2X4F: TTabSheet;
    TabSheetRuku2V3V: TTabSheet;
    TabSheetRuku2X2S: TTabSheet;
    TabSheetRuku2Sh2S: TTabSheet;
    TabSheetRuku2Sh3F: TTabSheet;
    TabSheetRuku2P2S: TTabSheet;
    TabSheetRuku2P4F: TTabSheet;
    TabSheetRuku2A4F: TTabSheet;
    TabSheetRuku3X4F: TTabSheet;
    TabSheetRuku3V3V: TTabSheet;
    TabSheetRuku3Sh3F: TTabSheet;
    TabSheetRuku3P4F: TTabSheet;
    TabSheetRuku3A4F: TTabSheet;
    TabSheetRuku4X4F: TTabSheet;
    TabSheetRuku4P4F: TTabSheet;
    TabSheetRuku4A4F: TTabSheet;
    TabSheetSajda1_1X4F: TTabSheet;
    TabSheetSajda1_1V3V: TTabSheet;
    TabSheetSajda1_1X2S: TTabSheet;
    TabSheetSajda1_1Sh2S: TTabSheet;
    TabSheetSajda1_1Sh3F: TTabSheet;
    TabSheetSajda1_1P2S: TTabSheet;
    TabSheetSajda1_1P4F: TTabSheet;
    TabSheetSajda1_1A4F: TTabSheet;
    TabSheetSajda1_2X4F: TTabSheet;
    TabSheetSajda1_2V3V: TTabSheet;
    TabSheetSajda1_2X2S: TTabSheet;
    TabSheetSajda1_2Sh2S: TTabSheet;
    TabSheetSajda1_2Sh3F: TTabSheet;
    TabSheetSajda1_2P2S: TTabSheet;
    TabSheetSajda1_2P4F: TTabSheet;
    TabSheetSajda1_2A4F: TTabSheet;
    TabSheetSajda2_1X4F: TTabSheet;
    TabSheetSajda2_1V3V: TTabSheet;
    TabSheetSajda2_1X2S: TTabSheet;
    TabSheetSajda2_1Sh2S: TTabSheet;
    TabSheetSajda2_1Sh3F: TTabSheet;
    TabSheetSajda2_1P2S: TTabSheet;
    TabSheetSajda2_1P4F: TTabSheet;
    TabSheetSajda2_1A4F: TTabSheet;
    TabSheetSajda2_2X4F: TTabSheet;
    TabSheetSajda2_2V3V: TTabSheet;
    TabSheetSajda2_2X2S: TTabSheet;
    TabSheetSajda2_2Sh2S: TTabSheet;
    TabSheetSajda2_2Sh3F: TTabSheet;
    TabSheetSajda2_2P2S: TTabSheet;
    TabSheetSajda2_2P4F: TTabSheet;
    TabSheetSajda2_2A4F: TTabSheet;
    TabSheetSajda3_1X4F: TTabSheet;
    TabSheetSajda3_1V3V: TTabSheet;
    TabSheetSajda3_1Sh3F: TTabSheet;
    TabSheetSajda3_1P4F: TTabSheet;
    TabSheetSajda3_1A4F: TTabSheet;
    TabSheetSajda3_2X4F: TTabSheet;
    TabSheetSajda3_2V3V: TTabSheet;
    TabSheetSajda3_2Sh3F: TTabSheet;
    TabSheetSajda3_2P4F: TTabSheet;
    TabSheetSajda3_2A4F: TTabSheet;
    TabSheetSajda4_1X4F: TTabSheet;
    TabSheetSajda4_1P4F: TTabSheet;
    TabSheetSajda4_1A4F: TTabSheet;
    TabSheetSajda4_2A4F: TTabSheet;
    TabSheetSajda4_2X4F: TTabSheet;
    TabSheetSajda4_2P4S: TTabSheet;
    TabSheetJalsa4P4S: TTabSheet;
    TabSheetSajda4_1P4S: TTabSheet;
    TabSheetQovma4P4S: TTabSheet;
    TabSheetRuku4P4S: TTabSheet;
    TabSheetQiyom4P4S: TTabSheet;
    TabSheetSajda3_2P4S: TTabSheet;
    TabSheetJalsa3P4S: TTabSheet;
    TabSheetSajda3_1P4S: TTabSheet;
    TabSheetQovma3P4S: TTabSheet;
    TabSheetRuku3P4S: TTabSheet;
    TabSheetQiyom3P4S: TTabSheet;
    TabSheetDuoB2F: TTabSheet;
    TabSheetJalsa1B2F: TTabSheet;
    TabSheetJalsa1P4S: TTabSheet;
    TabSheetJalsa2B2F: TTabSheet;
    TabSheetJalsa2P4S: TTabSheet;
    TabSheetKirishB2F: TTabSheet;
    TabSheetKirishP4S: TTabSheet;
    TabSheetQadaB2F: TTabSheet;
    TabSheetQada1P4S: TTabSheet;
    TabSheetQiyom1B2F: TTabSheet;
    TabSheetQiyom1P4S: TTabSheet;
    TabSheetQiyom2B2F: TTabSheet;
    TabSheetQiyom2P4S: TTabSheet;
    TabSheetQovma1B2F: TTabSheet;
    TabSheetQovma1P4S: TTabSheet;
    TabSheetQovma2B2F: TTabSheet;
    TabSheetQovma2P4S: TTabSheet;
    TabSheetRuku1B2F: TTabSheet;
    TabSheetRuku1P4S: TTabSheet;
    TabSheetRuku2B2F: TTabSheet;
    TabSheetRuku2P4S: TTabSheet;
    TabSheetSajda1_1B2F: TTabSheet;
    TabSheetSajda1_1P4S: TTabSheet;
    TabSheetSajda1_2B2F: TTabSheet;
    TabSheetSajda1_2P4S: TTabSheet;
    TabSheetSajda2_1B2F: TTabSheet;
    TabSheetSajda2_1P4S: TTabSheet;
    TabSheetSajda2_2B2F: TTabSheet;
    TabSheetSajda2_2P4S: TTabSheet;
    TabSheetSajda4_2P4F: TTabSheet;
    TabSheetSalomX4F: TTabSheet;
    TabSheetSalomV3V: TTabSheet;
    TabSheetSalomX2S: TTabSheet;
    TabSheetSalomSh2S: TTabSheet;
    TabSheetSalomSh3F: TTabSheet;
    TabSheetSalomB2S: TTabSheet;
    TabSheetQadaB2S: TTabSheet;
    TabSheetSajda2_2B2S: TTabSheet;
    TabSheetJalsa2B2S: TTabSheet;
    TabSheetSajda2_1B2S: TTabSheet;
    TabSheetQovma2B2S: TTabSheet;
    TabSheetRuku2B2S: TTabSheet;
    TabSheetQiyom2B2S: TTabSheet;
    TabSheetSajda1_2B2S: TTabSheet;
    TabSheetJalsa1B2S: TTabSheet;
    TabSheetSajda1_1B2S: TTabSheet;
    TabSheetQovma1B2S: TTabSheet;
    TabSheetRuku1B2S: TTabSheet;
    TabSheetQiyom1B2S: TTabSheet;
    TabSheetKirishB2S: TTabSheet;
    TabSheetSalomB2F: TTabSheet;
    TabSheetSalomP2S: TTabSheet;
    TabSheetSalomA4F: TTabSheet;
    TabSheetSalomP4S: TTabSheet;
    TabSheetSalomP4F: TTabSheet;
    TabSheetX4F: TTabSheet;
    TabSheetX2S: TTabSheet;
    TabSheetV3V: TTabSheet;
    TabSheetSh3F: TTabSheet;
    TabSheetSh2S: TTabSheet;
    TabSheetA4F: TTabSheet;
    TabSheetP4S: TTabSheet;
    TabSheetP4F: TTabSheet;
    TabSheetP2S: TTabSheet;
    TabSheetB2S: TTabSheet;
    TabSheetB2F: TTabSheet;
    TabSheetBomdod: TTabSheet;
    TabSheetPeshin: TTabSheet;
    TabSheetAsr: TTabSheet;
    TabSheetShom: TTabSheet;
    TabSheetXufton: TTabSheet;
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItemExitClick(Sender: TObject);
    procedure MenuItemImageClick(Sender: TObject);
    procedure MenuItemNextClick(Sender: TObject);
    procedure MenuItemPreviousClick(Sender: TObject);
    procedure ProcDuo(Sender: TObject);
    procedure MenuItemAboutClick(Sender: TObject);
    procedure MenuItemSettingsClick(Sender: TObject);
    procedure ProcDuoF(Sender: TObject);
    procedure ProcQunut(Sender: TObject);
    procedure ProcAzon(Sender: TObject);
    procedure ProcKursi(Sender: TObject);
    procedure ProcTasbehot(Sender: TObject);
    procedure ProcNas(Sender: TObject);
    procedure ProcFalaq(Sender: TObject);
    procedure ProcIqomat(Sender: TObject);
    procedure ProcAla(Sender: TObject);
    procedure ProcAziym(Sender: TObject);
    procedure ProcAzonBomdod(Sender: TObject);
    procedure ProcAzonDuo(Sender: TObject);
    procedure ProcBasmala(Sender: TObject);
    procedure ProcFotiha(Sender: TObject);
    procedure ProcHamd(Sender: TObject);
    procedure ProcIxlos(Sender: TObject);
    procedure ProcKavsar(Sender: TObject);
    procedure ProcRobbana(Sender: TObject);
    procedure ProcSalavot(Sender: TObject);
    procedure ProcSalom(Sender: TObject);
    procedure ProcTasme(Sender: TObject);
    procedure ProcSano(Sender: TObject);
    procedure ProcTaavvuz(Sender: TObject);
    procedure ProcTakbir(Sender: TObject);
    procedure ProcTashahhud(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ProcImagesLoad(Sender: TObject);
    procedure ProcImageKirish;
    procedure ProcImageQiyom;
    procedure ProcImageRuku;
    procedure ProcImageQovma;
    procedure ProcImageSajda;
    procedure ProcImageJalsa;
    procedure ProcImageSalom;
    procedure ProcImageDuo;
  private

  public

  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

{ TFormMain }

procedure TFormMain.ProcRobbana(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSalavot(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSalom(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTasme(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetTasme;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSano(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTaavvuz(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTakbir(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTashahhud(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  FormMain.ProcImagesLoad(self);
  FormSettings.ComboBoxLanguageChange(self);
end;

procedure TFormMain.FormClose(Sender: TObject);
begin
  if FormSettings.RadioButtonStart.Checked = true then
    begin
      PageControlA4F.TabIndex:=0;
      PageControlAsr.TabIndex:=0;
      PageControlB2F.TabIndex:=0;
      PageControlB2S.TabIndex:=0;
      PageControlBomdod.TabIndex:=0;
      PageControlMain.TabIndex:=0;
      PageControlP2S.TabIndex:=0;
      PageControlP4F.TabIndex:=0;
      PageControlP4S.TabIndex:=0;
      PageControlPeshin.TabIndex:=0;
      PageControlSh2S.TabIndex:=0;
      PageControlSh3F.TabIndex:=0;
      PageControlShom.TabIndex:=0;
      PageControlV3V.TabIndex:=0;
      PageControlX2S.TabIndex:=0;
      PageControlX4F.TabIndex:=0;
      PageControlXufton.TabIndex:=0;
    end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  IniPropStorage.IniFileName:=GetAppConfigDir(false)+'abid.ini';
end;

procedure TFormMain.MenuItemExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.MenuItemImageClick(Sender: TObject);
begin
   if PanelImage.Visible=true then
    begin
      PanelImage.Hide;
      MenuItemImage.Caption:=ImageShow;
      ButtonImage.Caption:=ImageShow;
    end
  else
    begin
      PanelImage.Show;
      MenuItemImage.Caption:=ImageHide;
      ButtonImage.Caption:=ImageHide;
    end
end;

procedure TFormMain.MenuItemNextClick(Sender: TObject);
begin
  case PageControlMain.ActivePageIndex of
  0: case PageControlBomdod.ActivePageIndex of
     0: case PageControlB2S.ActivePageIndex of
        0: PageControlB2S.ActivePageIndex:=1;
        1: PageControlB2S.ActivePageIndex:=2;
        2: PageControlB2S.ActivePageIndex:=3;
        3: PageControlB2S.ActivePageIndex:=4;
        4: PageControlB2S.ActivePageIndex:=5;
        5: PageControlB2S.ActivePageIndex:=6;
        6: PageControlB2S.ActivePageIndex:=7;
        7: PageControlB2S.ActivePageIndex:=8;
        8: PageControlB2S.ActivePageIndex:=9;
        9: PageControlB2S.ActivePageIndex:=10;
        10: PageControlB2S.ActivePageIndex:=11;
        11: PageControlB2S.ActivePageIndex:=12;
        12: PageControlB2S.ActivePageIndex:=13;
        13: PageControlB2S.ActivePageIndex:=14;
        end;
     1: case PageControlB2F.ActivePageIndex of
        0: PageControlB2F.ActivePageIndex:=1;
        1: PageControlB2F.ActivePageIndex:=2;
        2: PageControlB2F.ActivePageIndex:=3;
        3: PageControlB2F.ActivePageIndex:=4;
        4: PageControlB2F.ActivePageIndex:=5;
        5: PageControlB2F.ActivePageIndex:=6;
        6: PageControlB2F.ActivePageIndex:=7;
        7: PageControlB2F.ActivePageIndex:=8;
        8: PageControlB2F.ActivePageIndex:=9;
        9: PageControlB2F.ActivePageIndex:=10;
        10: PageControlB2F.ActivePageIndex:=11;
        11: PageControlB2F.ActivePageIndex:=12;
        12: PageControlB2F.ActivePageIndex:=13;
        13: PageControlB2F.ActivePageIndex:=14;
        14: PageControlB2F.ActivePageIndex:=15;
        end;
     end;
  1: case PageControlPeshin.ActivePageIndex of
     0: case PageControlP4S.ActivePageIndex of
        0: PageControlP4S.ActivePageIndex:=1;
        1: PageControlP4S.ActivePageIndex:=2;
        2: PageControlP4S.ActivePageIndex:=3;
        3: PageControlP4S.ActivePageIndex:=4;
        4: PageControlP4S.ActivePageIndex:=5;
        5: PageControlP4S.ActivePageIndex:=6;
        6: PageControlP4S.ActivePageIndex:=7;
        7: PageControlP4S.ActivePageIndex:=8;
        8: PageControlP4S.ActivePageIndex:=9;
        9: PageControlP4S.ActivePageIndex:=10;
        10: PageControlP4S.ActivePageIndex:=11;
        11: PageControlP4S.ActivePageIndex:=12;
        12: PageControlP4S.ActivePageIndex:=13;
        13: PageControlP4S.ActivePageIndex:=14;
        14: PageControlP4S.ActivePageIndex:=15;
        15: PageControlP4S.ActivePageIndex:=16;
        16: PageControlP4S.ActivePageIndex:=17;
        17: PageControlP4S.ActivePageIndex:=18;
        18: PageControlP4S.ActivePageIndex:=19;
        19: PageControlP4S.ActivePageIndex:=20;
        20: PageControlP4S.ActivePageIndex:=21;
        21: PageControlP4S.ActivePageIndex:=22;
        22: PageControlP4S.ActivePageIndex:=23;
        23: PageControlP4S.ActivePageIndex:=24;
        24: PageControlP4S.ActivePageIndex:=25;
        25: PageControlP4S.ActivePageIndex:=26;
        26: PageControlP4S.ActivePageIndex:=27;
        end;
     1: case PageControlP4F.ActivePageIndex of
        0: PageControlP4F.ActivePageIndex:=1;
        1: PageControlP4F.ActivePageIndex:=2;
        2: PageControlP4F.ActivePageIndex:=3;
        3: PageControlP4F.ActivePageIndex:=4;
        4: PageControlP4F.ActivePageIndex:=5;
        5: PageControlP4F.ActivePageIndex:=6;
        6: PageControlP4F.ActivePageIndex:=7;
        7: PageControlP4F.ActivePageIndex:=8;
        8: PageControlP4F.ActivePageIndex:=9;
        9: PageControlP4F.ActivePageIndex:=10;
        10: PageControlP4F.ActivePageIndex:=11;
        11: PageControlP4F.ActivePageIndex:=12;
        12: PageControlP4F.ActivePageIndex:=13;
        13: PageControlP4F.ActivePageIndex:=14;
        14: PageControlP4F.ActivePageIndex:=15;
        15: PageControlP4F.ActivePageIndex:=16;
        16: PageControlP4F.ActivePageIndex:=17;
        17: PageControlP4F.ActivePageIndex:=18;
        18: PageControlP4F.ActivePageIndex:=19;
        19: PageControlP4F.ActivePageIndex:=20;
        20: PageControlP4F.ActivePageIndex:=21;
        21: PageControlP4F.ActivePageIndex:=22;
        22: PageControlP4F.ActivePageIndex:=23;
        23: PageControlP4F.ActivePageIndex:=24;
        24: PageControlP4F.ActivePageIndex:=25;
        25: PageControlP4F.ActivePageIndex:=26;
        26: PageControlP4F.ActivePageIndex:=27;
        27: PageControlP4F.ActivePageIndex:=28;
        end;
     2: case PageControlP2S.ActivePageIndex of
        0: PageControlP2S.ActivePageIndex:=1;
        1: PageControlP2S.ActivePageIndex:=2;
        2: PageControlP2S.ActivePageIndex:=3;
        3: PageControlP2S.ActivePageIndex:=4;
        4: PageControlP2S.ActivePageIndex:=5;
        5: PageControlP2S.ActivePageIndex:=6;
        6: PageControlP2S.ActivePageIndex:=7;
        7: PageControlP2S.ActivePageIndex:=8;
        8: PageControlP2S.ActivePageIndex:=9;
        9: PageControlP2S.ActivePageIndex:=10;
        10: PageControlP2S.ActivePageIndex:=11;
        11: PageControlP2S.ActivePageIndex:=12;
        12: PageControlP2S.ActivePageIndex:=13;
        13: PageControlP2S.ActivePageIndex:=14;
        14: PageControlP2S.ActivePageIndex:=15;
        end;
     end;
  2: case PageControlA4F.ActivePageIndex of
        0: PageControlA4F.ActivePageIndex:=1;
        1: PageControlA4F.ActivePageIndex:=2;
        2: PageControlA4F.ActivePageIndex:=3;
        3: PageControlA4F.ActivePageIndex:=4;
        4: PageControlA4F.ActivePageIndex:=5;
        5: PageControlA4F.ActivePageIndex:=6;
        6: PageControlA4F.ActivePageIndex:=7;
        7: PageControlA4F.ActivePageIndex:=8;
        8: PageControlA4F.ActivePageIndex:=9;
        9: PageControlA4F.ActivePageIndex:=10;
        10: PageControlA4F.ActivePageIndex:=11;
        11: PageControlA4F.ActivePageIndex:=12;
        12: PageControlA4F.ActivePageIndex:=13;
        13: PageControlA4F.ActivePageIndex:=14;
        14: PageControlA4F.ActivePageIndex:=15;
        15: PageControlA4F.ActivePageIndex:=16;
        16: PageControlA4F.ActivePageIndex:=17;
        17: PageControlA4F.ActivePageIndex:=18;
        18: PageControlA4F.ActivePageIndex:=19;
        19: PageControlA4F.ActivePageIndex:=20;
        20: PageControlA4F.ActivePageIndex:=21;
        21: PageControlA4F.ActivePageIndex:=22;
        22: PageControlA4F.ActivePageIndex:=23;
        23: PageControlA4F.ActivePageIndex:=24;
        24: PageControlA4F.ActivePageIndex:=25;
        25: PageControlA4F.ActivePageIndex:=26;
        26: PageControlA4F.ActivePageIndex:=27;
        27: PageControlA4F.ActivePageIndex:=28;
        end;
  3: case PageControlShom.ActivePageIndex of
     0: case PageControlSh3F.ActivePageIndex of
        0: PageControlSh3F.ActivePageIndex:=1;
        1: PageControlSh3F.ActivePageIndex:=2;
        2: PageControlSh3F.ActivePageIndex:=3;
        3: PageControlSh3F.ActivePageIndex:=4;
        4: PageControlSh3F.ActivePageIndex:=5;
        5: PageControlSh3F.ActivePageIndex:=6;
        6: PageControlSh3F.ActivePageIndex:=7;
        7: PageControlSh3F.ActivePageIndex:=8;
        8: PageControlSh3F.ActivePageIndex:=9;
        9: PageControlSh3F.ActivePageIndex:=10;
        10: PageControlSh3F.ActivePageIndex:=11;
        11: PageControlSh3F.ActivePageIndex:=12;
        12: PageControlSh3F.ActivePageIndex:=13;
        13: PageControlSh3F.ActivePageIndex:=14;
        14: PageControlSh3F.ActivePageIndex:=15;
        15: PageControlSh3F.ActivePageIndex:=16;
        16: PageControlSh3F.ActivePageIndex:=17;
        17: PageControlSh3F.ActivePageIndex:=18;
        18: PageControlSh3F.ActivePageIndex:=19;
        19: PageControlSh3F.ActivePageIndex:=20;
        20: PageControlSh3F.ActivePageIndex:=21;
        21: PageControlSh3F.ActivePageIndex:=22;
        end;
     1: case PageControlSh2S.ActivePageIndex of
        0: PageControlSh2S.ActivePageIndex:=1;
        1: PageControlSh2S.ActivePageIndex:=2;
        2: PageControlSh2S.ActivePageIndex:=3;
        3: PageControlSh2S.ActivePageIndex:=4;
        4: PageControlSh2S.ActivePageIndex:=5;
        5: PageControlSh2S.ActivePageIndex:=6;
        6: PageControlSh2S.ActivePageIndex:=7;
        7: PageControlSh2S.ActivePageIndex:=8;
        8: PageControlSh2S.ActivePageIndex:=9;
        9: PageControlSh2S.ActivePageIndex:=10;
        10: PageControlSh2S.ActivePageIndex:=11;
        11: PageControlSh2S.ActivePageIndex:=12;
        12: PageControlSh2S.ActivePageIndex:=13;
        13: PageControlSh2S.ActivePageIndex:=14;
        14: PageControlSh2S.ActivePageIndex:=15;
        end;
     end;
  4: case PageControlXufton.ActivePageIndex of
     0: case PageControlX4F.ActivePageIndex of
        0: PageControlX4F.ActivePageIndex:=1;
        1: PageControlX4F.ActivePageIndex:=2;
        2: PageControlX4F.ActivePageIndex:=3;
        3: PageControlX4F.ActivePageIndex:=4;
        4: PageControlX4F.ActivePageIndex:=5;
        5: PageControlX4F.ActivePageIndex:=6;
        6: PageControlX4F.ActivePageIndex:=7;
        7: PageControlX4F.ActivePageIndex:=8;
        8: PageControlX4F.ActivePageIndex:=9;
        9: PageControlX4F.ActivePageIndex:=10;
        10: PageControlX4F.ActivePageIndex:=11;
        11: PageControlX4F.ActivePageIndex:=12;
        12: PageControlX4F.ActivePageIndex:=13;
        13: PageControlX4F.ActivePageIndex:=14;
        14: PageControlX4F.ActivePageIndex:=15;
        15: PageControlX4F.ActivePageIndex:=16;
        16: PageControlX4F.ActivePageIndex:=17;
        17: PageControlX4F.ActivePageIndex:=18;
        18: PageControlX4F.ActivePageIndex:=19;
        19: PageControlX4F.ActivePageIndex:=20;
        20: PageControlX4F.ActivePageIndex:=21;
        21: PageControlX4F.ActivePageIndex:=22;
        22: PageControlX4F.ActivePageIndex:=23;
        23: PageControlX4F.ActivePageIndex:=24;
        24: PageControlX4F.ActivePageIndex:=25;
        25: PageControlX4F.ActivePageIndex:=26;
        26: PageControlX4F.ActivePageIndex:=27;
        27: PageControlX4F.ActivePageIndex:=28;
        end;
     1: case PageControlX2S.ActivePageIndex of
        0: PageControlX2S.ActivePageIndex:=1;
        1: PageControlX2S.ActivePageIndex:=2;
        2: PageControlX2S.ActivePageIndex:=3;
        3: PageControlX2S.ActivePageIndex:=4;
        4: PageControlX2S.ActivePageIndex:=5;
        5: PageControlX2S.ActivePageIndex:=6;
        6: PageControlX2S.ActivePageIndex:=7;
        7: PageControlX2S.ActivePageIndex:=8;
        8: PageControlX2S.ActivePageIndex:=9;
        9: PageControlX2S.ActivePageIndex:=10;
        10: PageControlX2S.ActivePageIndex:=11;
        11: PageControlX2S.ActivePageIndex:=12;
        12: PageControlX2S.ActivePageIndex:=13;
        13: PageControlX2S.ActivePageIndex:=14;
        end;
     2: case PageControlV3V.ActivePageIndex of
        0: PageControlV3V.ActivePageIndex:=1;
        1: PageControlV3V.ActivePageIndex:=2;
        2: PageControlV3V.ActivePageIndex:=3;
        3: PageControlV3V.ActivePageIndex:=4;
        4: PageControlV3V.ActivePageIndex:=5;
        5: PageControlV3V.ActivePageIndex:=6;
        6: PageControlV3V.ActivePageIndex:=7;
        7: PageControlV3V.ActivePageIndex:=8;
        8: PageControlV3V.ActivePageIndex:=9;
        9: PageControlV3V.ActivePageIndex:=10;
        10: PageControlV3V.ActivePageIndex:=11;
        11: PageControlV3V.ActivePageIndex:=12;
        12: PageControlV3V.ActivePageIndex:=13;
        13: PageControlV3V.ActivePageIndex:=14;
        14: PageControlV3V.ActivePageIndex:=15;
        15: PageControlV3V.ActivePageIndex:=16;
        16: PageControlV3V.ActivePageIndex:=17;
        17: PageControlV3V.ActivePageIndex:=18;
        18: PageControlV3V.ActivePageIndex:=19;
        19: PageControlV3V.ActivePageIndex:=20;
        20: PageControlV3V.ActivePageIndex:=21;
        21: PageControlV3V.ActivePageIndex:=22;
        end;
     end;
  end;
  ProcImagesLoad(self);
end;

procedure TFormMain.MenuItemPreviousClick(Sender: TObject);
begin
   case PageControlMain.ActivePageIndex of
  0: case PageControlBomdod.ActivePageIndex of
     0: case PageControlB2S.ActivePageIndex of
        1: PageControlB2S.ActivePageIndex:=0;
        2: PageControlB2S.ActivePageIndex:=1;
        3: PageControlB2S.ActivePageIndex:=2;
        4: PageControlB2S.ActivePageIndex:=3;
        5: PageControlB2S.ActivePageIndex:=4;
        6: PageControlB2S.ActivePageIndex:=5;
        7: PageControlB2S.ActivePageIndex:=6;
        8: PageControlB2S.ActivePageIndex:=7;
        9: PageControlB2S.ActivePageIndex:=8;
        10: PageControlB2S.ActivePageIndex:=9;
        11: PageControlB2S.ActivePageIndex:=10;
        12: PageControlB2S.ActivePageIndex:=11;
        13: PageControlB2S.ActivePageIndex:=12;
        14: PageControlB2S.ActivePageIndex:=13;
        end;
     1: case PageControlB2F.ActivePageIndex of
        1: PageControlB2F.ActivePageIndex:=0;
        2: PageControlB2F.ActivePageIndex:=1;
        3: PageControlB2F.ActivePageIndex:=2;
        4: PageControlB2F.ActivePageIndex:=3;
        5: PageControlB2F.ActivePageIndex:=4;
        6: PageControlB2F.ActivePageIndex:=5;
        7: PageControlB2F.ActivePageIndex:=6;
        8: PageControlB2F.ActivePageIndex:=7;
        9: PageControlB2F.ActivePageIndex:=8;
        10: PageControlB2F.ActivePageIndex:=9;
        11: PageControlB2F.ActivePageIndex:=10;
        12: PageControlB2F.ActivePageIndex:=11;
        13: PageControlB2F.ActivePageIndex:=12;
        14: PageControlB2F.ActivePageIndex:=13;
        15: PageControlB2F.ActivePageIndex:=14;
        end;
     end;
  1: case PageControlPeshin.ActivePageIndex of
     0: case PageControlP4S.ActivePageIndex of
        1: PageControlP4S.ActivePageIndex:=0;
        2: PageControlP4S.ActivePageIndex:=1;
        3: PageControlP4S.ActivePageIndex:=2;
        4: PageControlP4S.ActivePageIndex:=3;
        5: PageControlP4S.ActivePageIndex:=4;
        6: PageControlP4S.ActivePageIndex:=5;
        7: PageControlP4S.ActivePageIndex:=6;
        8: PageControlP4S.ActivePageIndex:=7;
        9: PageControlP4S.ActivePageIndex:=8;
        10: PageControlP4S.ActivePageIndex:=9;
        11: PageControlP4S.ActivePageIndex:=10;
        12: PageControlP4S.ActivePageIndex:=11;
        13: PageControlP4S.ActivePageIndex:=12;
        14: PageControlP4S.ActivePageIndex:=13;
        15: PageControlP4S.ActivePageIndex:=14;
        16: PageControlP4S.ActivePageIndex:=15;
        17: PageControlP4S.ActivePageIndex:=16;
        18: PageControlP4S.ActivePageIndex:=17;
        19: PageControlP4S.ActivePageIndex:=18;
        20: PageControlP4S.ActivePageIndex:=19;
        21: PageControlP4S.ActivePageIndex:=20;
        22: PageControlP4S.ActivePageIndex:=21;
        23: PageControlP4S.ActivePageIndex:=22;
        24: PageControlP4S.ActivePageIndex:=23;
        25: PageControlP4S.ActivePageIndex:=24;
        26: PageControlP4S.ActivePageIndex:=25;
        27: PageControlP4S.ActivePageIndex:=26;
        end;
     1: case PageControlP4F.ActivePageIndex of
        1: PageControlP4F.ActivePageIndex:=0;
        2: PageControlP4F.ActivePageIndex:=1;
        3: PageControlP4F.ActivePageIndex:=2;
        4: PageControlP4F.ActivePageIndex:=3;
        5: PageControlP4F.ActivePageIndex:=4;
        6: PageControlP4F.ActivePageIndex:=5;
        7: PageControlP4F.ActivePageIndex:=6;
        8: PageControlP4F.ActivePageIndex:=7;
        9: PageControlP4F.ActivePageIndex:=8;
        10: PageControlP4F.ActivePageIndex:=9;
        11: PageControlP4F.ActivePageIndex:=10;
        12: PageControlP4F.ActivePageIndex:=11;
        13: PageControlP4F.ActivePageIndex:=12;
        14: PageControlP4F.ActivePageIndex:=13;
        15: PageControlP4F.ActivePageIndex:=14;
        16: PageControlP4F.ActivePageIndex:=15;
        17: PageControlP4F.ActivePageIndex:=16;
        18: PageControlP4F.ActivePageIndex:=17;
        19: PageControlP4F.ActivePageIndex:=18;
        20: PageControlP4F.ActivePageIndex:=19;
        21: PageControlP4F.ActivePageIndex:=20;
        22: PageControlP4F.ActivePageIndex:=21;
        23: PageControlP4F.ActivePageIndex:=22;
        24: PageControlP4F.ActivePageIndex:=23;
        25: PageControlP4F.ActivePageIndex:=24;
        26: PageControlP4F.ActivePageIndex:=25;
        27: PageControlP4F.ActivePageIndex:=26;
        28: PageControlP4F.ActivePageIndex:=27;
        end;
     2: case PageControlP2S.ActivePageIndex of
        1: PageControlP2S.ActivePageIndex:=0;
        2: PageControlP2S.ActivePageIndex:=1;
        3: PageControlP2S.ActivePageIndex:=2;
        4: PageControlP2S.ActivePageIndex:=3;
        5: PageControlP2S.ActivePageIndex:=4;
        6: PageControlP2S.ActivePageIndex:=5;
        7: PageControlP2S.ActivePageIndex:=6;
        8: PageControlP2S.ActivePageIndex:=7;
        9: PageControlP2S.ActivePageIndex:=8;
        10: PageControlP2S.ActivePageIndex:=9;
        11: PageControlP2S.ActivePageIndex:=10;
        12: PageControlP2S.ActivePageIndex:=11;
        13: PageControlP2S.ActivePageIndex:=12;
        14: PageControlP2S.ActivePageIndex:=13;
        15: PageControlP2S.ActivePageIndex:=14;
        end;
     end;
  2: case PageControlA4F.ActivePageIndex of
        1: PageControlA4F.ActivePageIndex:=0;
        2: PageControlA4F.ActivePageIndex:=1;
        3: PageControlA4F.ActivePageIndex:=2;
        4: PageControlA4F.ActivePageIndex:=3;
        5: PageControlA4F.ActivePageIndex:=4;
        6: PageControlA4F.ActivePageIndex:=5;
        7: PageControlA4F.ActivePageIndex:=6;
        8: PageControlA4F.ActivePageIndex:=7;
        9: PageControlA4F.ActivePageIndex:=8;
        10: PageControlA4F.ActivePageIndex:=9;
        11: PageControlA4F.ActivePageIndex:=10;
        12: PageControlA4F.ActivePageIndex:=11;
        13: PageControlA4F.ActivePageIndex:=12;
        14: PageControlA4F.ActivePageIndex:=13;
        15: PageControlA4F.ActivePageIndex:=14;
        16: PageControlA4F.ActivePageIndex:=15;
        17: PageControlA4F.ActivePageIndex:=16;
        18: PageControlA4F.ActivePageIndex:=17;
        19: PageControlA4F.ActivePageIndex:=18;
        20: PageControlA4F.ActivePageIndex:=19;
        21: PageControlA4F.ActivePageIndex:=20;
        22: PageControlA4F.ActivePageIndex:=21;
        23: PageControlA4F.ActivePageIndex:=22;
        24: PageControlA4F.ActivePageIndex:=23;
        25: PageControlA4F.ActivePageIndex:=24;
        26: PageControlA4F.ActivePageIndex:=25;
        27: PageControlA4F.ActivePageIndex:=26;
        28: PageControlA4F.ActivePageIndex:=27;
        end;
  3: case PageControlShom.ActivePageIndex of
     0: case PageControlSh3F.ActivePageIndex of
        1: PageControlSh3F.ActivePageIndex:=0;
        2: PageControlSh3F.ActivePageIndex:=1;
        3: PageControlSh3F.ActivePageIndex:=2;
        4: PageControlSh3F.ActivePageIndex:=3;
        5: PageControlSh3F.ActivePageIndex:=4;
        6: PageControlSh3F.ActivePageIndex:=5;
        7: PageControlSh3F.ActivePageIndex:=6;
        8: PageControlSh3F.ActivePageIndex:=7;
        9: PageControlSh3F.ActivePageIndex:=8;
        10: PageControlSh3F.ActivePageIndex:=9;
        11: PageControlSh3F.ActivePageIndex:=10;
        12: PageControlSh3F.ActivePageIndex:=11;
        13: PageControlSh3F.ActivePageIndex:=12;
        14: PageControlSh3F.ActivePageIndex:=13;
        15: PageControlSh3F.ActivePageIndex:=14;
        16: PageControlSh3F.ActivePageIndex:=15;
        17: PageControlSh3F.ActivePageIndex:=16;
        18: PageControlSh3F.ActivePageIndex:=17;
        19: PageControlSh3F.ActivePageIndex:=18;
        20: PageControlSh3F.ActivePageIndex:=19;
        21: PageControlSh3F.ActivePageIndex:=20;
        22: PageControlSh3F.ActivePageIndex:=21;
        end;
     1: case PageControlSh2S.ActivePageIndex of
        1: PageControlSh2S.ActivePageIndex:=0;
        2: PageControlSh2S.ActivePageIndex:=1;
        3: PageControlSh2S.ActivePageIndex:=2;
        4: PageControlSh2S.ActivePageIndex:=3;
        5: PageControlSh2S.ActivePageIndex:=4;
        6: PageControlSh2S.ActivePageIndex:=5;
        7: PageControlSh2S.ActivePageIndex:=6;
        8: PageControlSh2S.ActivePageIndex:=7;
        9: PageControlSh2S.ActivePageIndex:=8;
        10: PageControlSh2S.ActivePageIndex:=9;
        11: PageControlSh2S.ActivePageIndex:=10;
        12: PageControlSh2S.ActivePageIndex:=11;
        13: PageControlSh2S.ActivePageIndex:=12;
        14: PageControlSh2S.ActivePageIndex:=13;
        15: PageControlSh2S.ActivePageIndex:=14;
        end;
     end;
  4: case PageControlXufton.ActivePageIndex of
     0: case PageControlX4F.ActivePageIndex of
        1: PageControlX4F.ActivePageIndex:=0;
        2: PageControlX4F.ActivePageIndex:=1;
        3: PageControlX4F.ActivePageIndex:=2;
        4: PageControlX4F.ActivePageIndex:=3;
        5: PageControlX4F.ActivePageIndex:=4;
        6: PageControlX4F.ActivePageIndex:=5;
        7: PageControlX4F.ActivePageIndex:=6;
        8: PageControlX4F.ActivePageIndex:=7;
        9: PageControlX4F.ActivePageIndex:=8;
        10: PageControlX4F.ActivePageIndex:=9;
        11: PageControlX4F.ActivePageIndex:=10;
        12: PageControlX4F.ActivePageIndex:=11;
        13: PageControlX4F.ActivePageIndex:=12;
        14: PageControlX4F.ActivePageIndex:=13;
        15: PageControlX4F.ActivePageIndex:=14;
        16: PageControlX4F.ActivePageIndex:=15;
        17: PageControlX4F.ActivePageIndex:=16;
        18: PageControlX4F.ActivePageIndex:=17;
        19: PageControlX4F.ActivePageIndex:=18;
        20: PageControlX4F.ActivePageIndex:=19;
        21: PageControlX4F.ActivePageIndex:=20;
        22: PageControlX4F.ActivePageIndex:=21;
        23: PageControlX4F.ActivePageIndex:=22;
        24: PageControlX4F.ActivePageIndex:=23;
        25: PageControlX4F.ActivePageIndex:=24;
        26: PageControlX4F.ActivePageIndex:=25;
        27: PageControlX4F.ActivePageIndex:=26;
        28: PageControlX4F.ActivePageIndex:=27;
        end;
     1: case PageControlX2S.ActivePageIndex of
        1: PageControlX2S.ActivePageIndex:=0;
        2: PageControlX2S.ActivePageIndex:=1;
        3: PageControlX2S.ActivePageIndex:=2;
        4: PageControlX2S.ActivePageIndex:=3;
        5: PageControlX2S.ActivePageIndex:=4;
        6: PageControlX2S.ActivePageIndex:=5;
        7: PageControlX2S.ActivePageIndex:=6;
        8: PageControlX2S.ActivePageIndex:=7;
        9: PageControlX2S.ActivePageIndex:=8;
        10: PageControlX2S.ActivePageIndex:=9;
        11: PageControlX2S.ActivePageIndex:=10;
        12: PageControlX2S.ActivePageIndex:=11;
        13: PageControlX2S.ActivePageIndex:=12;
        14: PageControlX2S.ActivePageIndex:=13;
        end;
     2: case PageControlV3V.ActivePageIndex of
        1: PageControlV3V.ActivePageIndex:=0;
        2: PageControlV3V.ActivePageIndex:=1;
        3: PageControlV3V.ActivePageIndex:=2;
        4: PageControlV3V.ActivePageIndex:=3;
        5: PageControlV3V.ActivePageIndex:=4;
        6: PageControlV3V.ActivePageIndex:=5;
        7: PageControlV3V.ActivePageIndex:=6;
        8: PageControlV3V.ActivePageIndex:=7;
        9: PageControlV3V.ActivePageIndex:=8;
        10: PageControlV3V.ActivePageIndex:=9;
        11: PageControlV3V.ActivePageIndex:=10;
        12: PageControlV3V.ActivePageIndex:=11;
        13: PageControlV3V.ActivePageIndex:=12;
        14: PageControlV3V.ActivePageIndex:=13;
        15: PageControlV3V.ActivePageIndex:=14;
        16: PageControlV3V.ActivePageIndex:=15;
        17: PageControlV3V.ActivePageIndex:=16;
        18: PageControlV3V.ActivePageIndex:=17;
        19: PageControlV3V.ActivePageIndex:=18;
        20: PageControlV3V.ActivePageIndex:=19;
        21: PageControlV3V.ActivePageIndex:=20;
        22: PageControlV3V.ActivePageIndex:=21;
        end;
     end;
  end;
  ProcImagesLoad(self);
end;

procedure TFormMain.ProcDuo(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.MenuItemAboutClick(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TFormMain.MenuItemSettingsClick(Sender: TObject);
begin
  FormSettings.ShowModal;
end;

procedure TFormMain.ProcDuoF(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetDuoF;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcQunut(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetQunut;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzon(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetAzon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcKursi(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetKursi;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTasbehot(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetTasbehot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcNas(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcFalaq(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcIqomat(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetIqomat;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAla(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAziym(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzonBomdod(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetAzonBomdod;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzonDuo(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetAzonDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcBasmala(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcFotiha(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcHamd(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcIxlos(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcKavsar(Sender: TObject);
begin
  FormDetails.PageControlMain.ActivePage:=FormDetails.TabSheetKavsar;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcImagesLoad(Sender: TObject);
begin
  case PageControlMain.ActivePageIndex of
  0: case PageControlBomdod.ActivePageIndex of
     0: case PageControlB2S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
          begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
          begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
           begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
          begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
          begin
            ProcImageSalom;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     1: case PageControlB2F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
           begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
           begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada': ProcImageJalsa;
        'Salom':
          begin
            ProcImageSalom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     end;
  1: case PageControlPeshin.ActivePageIndex of
     0: case PageControlP4S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
           begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
           begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
           begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
          begin
            ProcImageSalom;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     1: case PageControlP4F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
          begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
          begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
          begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
          begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
          begin
            ProcImageSalom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     2: case PageControlP2S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
           begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
           begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
           begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
           begin
            ProcImageSalom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     end;
  2: case PageControlA4F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
  3: case PageControlShom.ActivePageIndex of
     0: case PageControlSh3F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     1: case PageControlSh2S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            FormMain.ButtonNext.Enabled:=true;
            FormMain.ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     end;
  4: case PageControlXufton.ActivePageIndex of
     0: case PageControlX4F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            FormMain.ButtonNext.Enabled:=true;
            FormMain.ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     1: case PageControlX2S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
          begin
            ProcImageSalom;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     2: case PageControlV3V.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=false;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            MenuItemNext.Enabled:=true;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=true;
            ButtonPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            MenuItemNext.Enabled:=false;
            MenuItemPrevious.Enabled:=true;
            ButtonNext.Enabled:=false;
            ButtonPrevious.Enabled:=true;
          end;
        end;
     end;
  end;
end;

procedure TFormMain.ProcImageKirish;
begin
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/kirish.jpg') then
  ImageMan.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/kirish.jpg')
  else ImageMan.Picture.Clear;
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/kirish.jpg') then
  ImageWoman.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/kirish.jpg')
  else ImageWoman.Picture.Clear;
end;

procedure TFormMain.ProcImageQiyom;
begin
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/qiyom.jpg') then
  ImageMan.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/qiyom.jpg')
  else ImageMan.Picture.Clear;
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/qiyom.jpg') then
  ImageWoman.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/qiyom.jpg')
  else ImageWoman.Picture.Clear;
end;

procedure TFormMain.ProcImageRuku;
begin
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/ruku.jpg') then
  ImageMan.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/ruku.jpg')
  else ImageMan.Picture.Clear;
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/ruku.jpg') then
  ImageWoman.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/ruku.jpg')
  else ImageWoman.Picture.Clear;
end;

procedure TFormMain.ProcImageQovma;
begin
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/qovma.jpg') then
  ImageMan.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/qovma.jpg')
  else ImageMan.Picture.Clear;
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/qovma.jpg') then
  ImageWoman.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/qovma.jpg')
  else ImageWoman.Picture.Clear;
end;

procedure TFormMain.ProcImageSajda;
begin
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/sajda.jpg') then
  ImageMan.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/sajda.jpg')
  else ImageMan.Picture.Clear;
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/sajda.jpg') then
  ImageWoman.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/sajda.jpg')
  else ImageWoman.Picture.Clear;
end;

procedure TFormMain.ProcImageJalsa;
begin
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/jalsa.jpg') then
  ImageMan.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/jalsa.jpg')
  else ImageMan.Picture.Clear;
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/jalsa.jpg') then
  ImageWoman.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/jalsa.jpg')
  else ImageWoman.Picture.Clear;
end;

procedure TFormMain.ProcImageSalom;
begin
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/salom.jpg') then
  ImageMan.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/salom.jpg')
  else ImageMan.Picture.Clear;
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/salom.jpg') then
  ImageWoman.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/salom.jpg')
  else ImageWoman.Picture.Clear;
end;

procedure TFormMain.ProcImageDuo;
begin
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/duo.jpg') then
  ImageMan.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/man/duo.jpg')
  else ImageMan.Picture.Clear;
  if FileExists ({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/duo.jpg') then
  ImageWoman.Picture.LoadFromFile({$IFDEF UNIX}ExtractFilePath(Paramstr(0))+{$ENDIF}'images/woman/duo.jpg')
  else ImageWoman.Picture.Clear;
end;

end.

