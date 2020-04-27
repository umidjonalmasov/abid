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
  ImageShow = 'Tasvirlarni koʼrsatish';
  ImageHide = 'Tasvirlarni yashirish';

type

  { TFormMain }

  TFormMain = class(TForm)
    bAla1_1X4F: TSpeedButton;
    bAla1_1V3V: TSpeedButton;
    bAla1_1X2S: TSpeedButton;
    bAla1_1Sh2S: TSpeedButton;
    bAla1_1Sh3F: TSpeedButton;
    bAla1_1B2F: TSpeedButton;
    bAla1_1P2S: TSpeedButton;
    bAla1_1A4F: TSpeedButton;
    bAla1_1P4S: TSpeedButton;
    bAla1_1P4F: TSpeedButton;
    bAla1_2X4F: TSpeedButton;
    bAla1_2V3V: TSpeedButton;
    bAla1_2X2S: TSpeedButton;
    bAla1_2Sh2S: TSpeedButton;
    bAla1_2Sh3F: TSpeedButton;
    bAla1_2B2S: TSpeedButton;
    bAla1_2B2F: TSpeedButton;
    bAla1_2P2S: TSpeedButton;
    bAla1_2A4F: TSpeedButton;
    bAla1_2P4S: TSpeedButton;
    bAla1_2P4F: TSpeedButton;
    bAla2_1X4F: TSpeedButton;
    bAla2_1V3V: TSpeedButton;
    bAla2_1X2S: TSpeedButton;
    bAla2_1Sh2S: TSpeedButton;
    bAla2_1Sh3F: TSpeedButton;
    bAla2_1B2S: TSpeedButton;
    bAla2_1B2F: TSpeedButton;
    bAla2_1P2S: TSpeedButton;
    bAla2_1A4F: TSpeedButton;
    bAla2_1P4S: TSpeedButton;
    bAla2_1P4F: TSpeedButton;
    bAla2_2X4F: TSpeedButton;
    bAla2_2V3V: TSpeedButton;
    bAla2_2X2S: TSpeedButton;
    bAla2_2Sh2S: TSpeedButton;
    bAla2_2Sh3F: TSpeedButton;
    bAla2_2P2S: TSpeedButton;
    bAla2_2P4F: TSpeedButton;
    bAla2_2A4F: TSpeedButton;
    bAla3_1A4F: TSpeedButton;
    bAla3_1X4F: TSpeedButton;
    bAla3_1V3V: TSpeedButton;
    bAla3_1Sh3F: TSpeedButton;
    bAla3_1P4S: TSpeedButton;
    bAla2_2B2S: TSpeedButton;
    bAla2_2B2F: TSpeedButton;
    bAla2_2P4S: TSpeedButton;
    bAla3_1P4F: TSpeedButton;
    bAla3_2X4F: TSpeedButton;
    bAla3_2V3V: TSpeedButton;
    bAla3_2Sh3F: TSpeedButton;
    bAla3_2P4F: TSpeedButton;
    bAla3_2A4F: TSpeedButton;
    bAla4_1X4F: TSpeedButton;
    bAla4_1P4F: TSpeedButton;
    bAla4_1A4F: TSpeedButton;
    bAla4_2A4F: TSpeedButton;
    bAla4_2X4F: TSpeedButton;
    bAla4_2P4S: TSpeedButton;
    bAla4_1P4S: TSpeedButton;
    bAla3_2P4S: TSpeedButton;
    bAla4_2P4F: TSpeedButton;
    bAziym1X4F: TSpeedButton;
    bAziym1V3V: TSpeedButton;
    bAziym1X2S: TSpeedButton;
    bAziym1Sh2S: TSpeedButton;
    bAziym1Sh3F: TSpeedButton;
    bAziym1B2F: TSpeedButton;
    bAziym1P2S: TSpeedButton;
    bAziym1A4F: TSpeedButton;
    bAziym1P4S: TSpeedButton;
    bAziym1P4F: TSpeedButton;
    bAziym2X4F: TSpeedButton;
    bAziym2V3V: TSpeedButton;
    bAziym2X2S: TSpeedButton;
    bAziym2Sh2S: TSpeedButton;
    bAziym2Sh3F: TSpeedButton;
    bAziym2B2S: TSpeedButton;
    bAziym2B2F: TSpeedButton;
    bAziym2P2S: TSpeedButton;
    bAziym2A4F: TSpeedButton;
    bAziym2P4S: TSpeedButton;
    bAziym2P4F: TSpeedButton;
    bAziym3A4F: TSpeedButton;
    bAziym3X4F: TSpeedButton;
    bAziym3V3V: TSpeedButton;
    bAziym3Sh3F: TSpeedButton;
    bAziym3P4S: TSpeedButton;
    bAziym3P4F: TSpeedButton;
    bAziym4A4F: TSpeedButton;
    bAziym4X4F: TSpeedButton;
    bAziym4P4S: TSpeedButton;
    bAziym4P4F: TSpeedButton;
    bAzonX4F: TSpeedButton;
    bAzonDuoX4F: TSpeedButton;
    bAzonSh3F: TSpeedButton;
    bAzonDuoA4F: TSpeedButton;
    bAzonDuoSh3F: TSpeedButton;
    bAzonP4S: TSpeedButton;
    bAzonDuoP4S: TSpeedButton;
    bAzonA4F: TSpeedButton;
    bBasmala1X4F: TSpeedButton;
    bBasmala1V3V: TSpeedButton;
    bBasmala1X2S: TSpeedButton;
    bBasmala1Sh2S: TSpeedButton;
    bBasmala1Sh3F: TSpeedButton;
    bBasmala1P2S: TSpeedButton;
    bBasmala1A4F: TSpeedButton;
    bBasmala2X4F: TSpeedButton;
    bBasmala2V3V: TSpeedButton;
    bBasmala2X2S: TSpeedButton;
    bBasmala2Sh2S: TSpeedButton;
    bBasmala2Sh3F: TSpeedButton;
    bBasmala2P2S: TSpeedButton;
    bBasmala2A4F: TSpeedButton;
    bBasmala3A4F: TSpeedButton;
    bBasmala3X4F: TSpeedButton;
    bBasmala3V3V: TSpeedButton;
    bBasmala3Sh3F: TSpeedButton;
    bBasmala4A4F: TSpeedButton;
    bBasmala4X4F: TSpeedButton;
    bDuoP4F: TScrollBox;
    bDuoV3V: TSpeedButton;
    bDuoSh2S: TSpeedButton;
    bDuoFA4F: TSpeedButton;
    bDuoB2F: TSpeedButton;
    bDuoA4F: TSpeedButton;
    bDuoP2S: TSpeedButton;
    bDuoFX4F: TSpeedButton;
    bDuoFSh3F: TSpeedButton;
    bDuoFP4F: TSpeedButton;
    bFalaqSh2S: TSpeedButton;
    bFotiha1X4F: TSpeedButton;
    bFotiha1V3V: TSpeedButton;
    bFotiha1X2S: TSpeedButton;
    bFotiha1Sh2S: TSpeedButton;
    bFotiha1Sh3F: TSpeedButton;
    bFotiha1P2S: TSpeedButton;
    bFotiha1A4F: TSpeedButton;
    bFotiha2X4F: TSpeedButton;
    bFotiha2V3V: TSpeedButton;
    bFotiha2X2S: TSpeedButton;
    bFotiha2Sh2S: TSpeedButton;
    bFotiha2Sh3F: TSpeedButton;
    bFotiha2P2S: TSpeedButton;
    bFotiha2A4F: TSpeedButton;
    bFotiha3A4F: TSpeedButton;
    bQunut: TSpeedButton;
    bTakbirQunut: TSpeedButton;
    bNasV3V: TSpeedButton;
    bFotiha3X4F: TSpeedButton;
    bFotiha3V3V: TSpeedButton;
    bFotiha3Sh3F: TSpeedButton;
    bFotiha4A4F: TSpeedButton;
    bFotiha4X4F: TSpeedButton;
    bHamd1X4F: TSpeedButton;
    bHamd1V3V: TSpeedButton;
    bHamd1X2S: TSpeedButton;
    bHamd1Sh2S: TSpeedButton;
    bHamd1Sh3F: TSpeedButton;
    bHamd1P2S: TSpeedButton;
    bHamd1A4F: TSpeedButton;
    bHamd2X4F: TSpeedButton;
    bHamd2V3V: TSpeedButton;
    bHamd2X2S: TSpeedButton;
    bHamd2Sh2S: TSpeedButton;
    bHamd2Sh3F: TSpeedButton;
    bHamd2P2S: TSpeedButton;
    bHamd2A4F: TSpeedButton;
    bHamd3A4F: TSpeedButton;
    bHamd3X4F: TSpeedButton;
    bHamd3V3V: TSpeedButton;
    bHamd3Sh3F: TSpeedButton;
    bHamd4A4F: TSpeedButton;
    bHamd4X4F: TSpeedButton;
    bIqomatX4F: TSpeedButton;
    bIqomatSh3F: TSpeedButton;
    bIqomatP4F: TSpeedButton;
    bBasmala1P4S: TSpeedButton;
    bBasmala1P4F: TSpeedButton;
    bBasmala2P4S: TSpeedButton;
    bBasmala2P4F: TSpeedButton;
    bBasmala3P4S: TSpeedButton;
    bBasmala3P4F: TSpeedButton;
    bBasmala4P4S: TSpeedButton;
    bBasmala4P4F: TSpeedButton;
    bFotiha1P4F: TSpeedButton;
    bFotiha2P4F: TSpeedButton;
    bFotiha3P4F: TSpeedButton;
    bFotiha4P4F: TSpeedButton;
    bHamd1P4F: TSpeedButton;
    bHamd2P4F: TSpeedButton;
    bHamd3P4F: TSpeedButton;
    bHamd4P4S: TSpeedButton;
    bHamd4P4F: TSpeedButton;
    bIqomatA4F: TSpeedButton;
    bIxlosA4F: TSpeedButton;
    bIxlosX4F: TSpeedButton;
    bFalaqV3V: TSpeedButton;
    bNasX2S: TSpeedButton;
    bIxlosSh3F: TSpeedButton;
    bKavsarA4F: TSpeedButton;
    bKavsarX4F: TSpeedButton;
    bIxlosV3V: TSpeedButton;
    bFalaqX2S: TSpeedButton;
    bKavsarSh3F: TSpeedButton;
    bKursiA4F: TSpeedButton;
    bKursiV3V: TSpeedButton;
    bKursiP2S: TSpeedButton;
    bKursiSh2S: TSpeedButton;
    bNasP2S: TSpeedButton;
    bIxlosP4F: TSpeedButton;
    bFalaqP2S: TSpeedButton;
    bKavsarP4F: TSpeedButton;
    bNasSh2S: TSpeedButton;
    bNasP4S: TSpeedButton;
    bFotiha1P4S: TSpeedButton;
    bFotiha2P4S: TSpeedButton;
    bFotiha3P4S: TSpeedButton;
    bFotiha4P4S: TSpeedButton;
    bHamd1P4S: TSpeedButton;
    bHamd2P4S: TSpeedButton;
    bHamd3P4S: TSpeedButton;
    bIqomatB2F: TSpeedButton;
    bBasmala1B2F: TSpeedButton;
    bBasmala2B2S: TSpeedButton;
    bBasmala2B2F: TSpeedButton;
    bFotiha1B2F: TSpeedButton;
    bFotiha2B2F: TSpeedButton;
    bHamd1B2F: TSpeedButton;
    bHamd2B2F: TSpeedButton;
    bIxlosP4S: TSpeedButton;
    bFalaqP4S: TSpeedButton;
    bKavsarP4S: TSpeedButton;
    bNasB2F: TSpeedButton;
    bFalaqB2F: TSpeedButton;
    bRobbanaX4F: TSpeedButton;
    bRobbanaV3V: TSpeedButton;
    bRobbanaX2S: TSpeedButton;
    bRobbanaSh2S: TSpeedButton;
    bRobbanaSh3F: TSpeedButton;
    bRobbanaB2F: TSpeedButton;
    bRobbanaP2S: TSpeedButton;
    bRobbanaA4F: TSpeedButton;
    bRobbanaP4S: TSpeedButton;
    bRobbanaP4F: TSpeedButton;
    bSalavotX4F: TSpeedButton;
    bSalavotV3V: TSpeedButton;
    bSalavotX2S: TSpeedButton;
    bSalavotSh2S: TSpeedButton;
    bSalavotSh3F: TSpeedButton;
    bSalavotB2F: TSpeedButton;
    bKursiB2F: TSpeedButton;
    bSalavotP2S: TSpeedButton;
    bSalavotA4F: TSpeedButton;
    bSalavotP4S: TSpeedButton;
    bSalavotP4F: TSpeedButton;
    bSalomX4F: TSpeedButton;
    bSalomV3V: TSpeedButton;
    bSalomX2S: TSpeedButton;
    bSalomSh2S: TSpeedButton;
    bSalomSh3F: TSpeedButton;
    bSalomB2S: TSpeedButton;
    bSalomB2F: TSpeedButton;
    bSalomP2S: TSpeedButton;
    bSalomA4F: TSpeedButton;
    bSalomP4S: TSpeedButton;
    bSalomP4F: TSpeedButton;
    bTasme1X4F: TSpeedButton;
    bTasme1V3V: TSpeedButton;
    bTasme1X2S: TSpeedButton;
    bTasme1Sh2S: TSpeedButton;
    bTasme1Sh3F: TSpeedButton;
    bTasme1B2F: TSpeedButton;
    bTasme1P2S: TSpeedButton;
    bTasme1A4F: TSpeedButton;
    bTasme1P4S: TSpeedButton;
    bTasme1P4F: TSpeedButton;
    bTasme2X4F: TSpeedButton;
    bTasme2V3V: TSpeedButton;
    bTasme2X2S: TSpeedButton;
    bTasme2Sh2S: TSpeedButton;
    bTasme2Sh3F: TSpeedButton;
    bTasme2B2F: TSpeedButton;
    bTasme2P2S: TSpeedButton;
    bTasme2A4F: TSpeedButton;
    bTasme2P4S: TSpeedButton;
    bTasme2P4F: TSpeedButton;
    bTasme3A4F: TSpeedButton;
    bTasme3X4F: TSpeedButton;
    bTasme3V3V: TSpeedButton;
    bTasme3Sh3F: TSpeedButton;
    bTasme3P4S: TSpeedButton;
    bTasme3P4F: TSpeedButton;
    bTasme4A4F: TSpeedButton;
    bTasme4X4F: TSpeedButton;
    bTasme4P4S: TSpeedButton;
    bTasme4P4F: TSpeedButton;
    bSanoX4F: TSpeedButton;
    bSanoV3V: TSpeedButton;
    bSanoX2S: TSpeedButton;
    bSanoSh2S: TSpeedButton;
    bSanoSh3F: TSpeedButton;
    bSanoB2F: TSpeedButton;
    bSanoP2S: TSpeedButton;
    bSanoA4F: TSpeedButton;
    bSanoP4S: TSpeedButton;
    bSanoP4F: TSpeedButton;
    bTaavvuzX4F: TSpeedButton;
    bTaavvuzV3V: TSpeedButton;
    bTaavvuzX2S: TSpeedButton;
    bTaavvuzSh2S: TSpeedButton;
    bTaavvuzSh3F: TSpeedButton;
    bTaavvuzB2F: TSpeedButton;
    bTaavvuzP2S: TSpeedButton;
    bTaavvuzA4F: TSpeedButton;
    bTaavvuzP4S: TSpeedButton;
    bTaavvuzP4F: TSpeedButton;
    bTakbirJalsa1X4F: TSpeedButton;
    bTakbirJalsa1V3V: TSpeedButton;
    bTakbirJalsa1X2S: TSpeedButton;
    bTakbirJalsa1Sh2S: TSpeedButton;
    bTakbirJalsa1Sh3F: TSpeedButton;
    bTakbirJalsa1B2F: TSpeedButton;
    bTakbirJalsa1P2S: TSpeedButton;
    bTakbirJalsa1A4F: TSpeedButton;
    bTakbirJalsa1P4S: TSpeedButton;
    bTakbirJalsa1P4F: TSpeedButton;
    bTakbirJalsa2X4F: TSpeedButton;
    bTakbirJalsa2V3V: TSpeedButton;
    bTakbirJalsa2X2S: TSpeedButton;
    bTakbirJalsa2Sh2S: TSpeedButton;
    bTakbirJalsa2Sh3F: TSpeedButton;
    bTakbirJalsa2B2F: TSpeedButton;
    bTakbirJalsa2P2S: TSpeedButton;
    bTakbirJalsa2A4F: TSpeedButton;
    bTakbirJalsa2P4S: TSpeedButton;
    bTakbirJalsa2P4F: TSpeedButton;
    bTakbirJalsa3A4F: TSpeedButton;
    bTakbirJalsa3X4F: TSpeedButton;
    bTakbirJalsa3V3V: TSpeedButton;
    bTakbirJalsa3Sh3F: TSpeedButton;
    bTakbirJalsa3P4S: TSpeedButton;
    bTakbirJalsa3P4F: TSpeedButton;
    bTakbirJalsa4A4F: TSpeedButton;
    bTakbirJalsa4X4F: TSpeedButton;
    bTakbirJalsa4P4S: TSpeedButton;
    bTakbirJalsa4P4F: TSpeedButton;
    bTakbirKirishX4F: TSpeedButton;
    bTakbirKirishV3V: TSpeedButton;
    bTakbirKirishX2S: TSpeedButton;
    bTakbirKirishSh2S: TSpeedButton;
    bTakbirKirishSh3F: TSpeedButton;
    bTakbirKirishB2F: TSpeedButton;
    bTakbirKirishP2S: TSpeedButton;
    bTakbirKirishP4S: TSpeedButton;
    bTakbirKirishP4F: TSpeedButton;
    bTakbirKirishA4F: TSpeedButton;
    bTakbirQada1X4F: TSpeedButton;
    bTakbirQada1V3V: TSpeedButton;
    bTakbirQada1Sh3F: TSpeedButton;
    bTakbirQada1P4F: TSpeedButton;
    bTakbirQada1A4F: TSpeedButton;
    bTakbirQada2X4F: TSpeedButton;
    bTakbirQada2V3V: TSpeedButton;
    bTakbirQada2Sh3F: TSpeedButton;
    bTakbirQada2P4F: TSpeedButton;
    bTakbirQada2A4F: TSpeedButton;
    bTakbirQadaB2F: TSpeedButton;
    bDuoFB2F: TSpeedButton;
    bTakbirQada1P4S: TSpeedButton;
    bTakbirQada2P4S: TSpeedButton;
    bTakbirQadaX2S: TSpeedButton;
    bTakbirQadaP2S: TSpeedButton;
    bTakbirQadaSh2S: TSpeedButton;
    bTakbirQiyom2X4F: TSpeedButton;
    bTakbirQiyom2V3V: TSpeedButton;
    bTakbirQiyom2X2S: TSpeedButton;
    bTakbirQiyom2Sh2S: TSpeedButton;
    bTakbirQiyom2Sh3F: TSpeedButton;
    bTakbirQiyom2B2F: TSpeedButton;
    bTakbirQiyom2P2S: TSpeedButton;
    bTakbirQiyom2A4F: TSpeedButton;
    bTakbirQiyom2P4S: TSpeedButton;
    bTakbirQiyom2P4F: TSpeedButton;
    bTakbirQiyom3A4F: TSpeedButton;
    bTakbirQiyom3X4F: TSpeedButton;
    bTakbirQiyom3V3V: TSpeedButton;
    bTakbirQiyom3Sh3F: TSpeedButton;
    bTakbirQiyom3P4S: TSpeedButton;
    bTakbirQiyom3P4F: TSpeedButton;
    bTakbirQiyom4A4F: TSpeedButton;
    bTakbirQiyom4X4F: TSpeedButton;
    bTakbirQiyom4P4S: TSpeedButton;
    bTakbirQiyom4P4F: TSpeedButton;
    bTakbirRuku1X4F: TSpeedButton;
    bTakbirRuku1V3V: TSpeedButton;
    bTakbirRuku1X2S: TSpeedButton;
    bTakbirRuku1Sh2S: TSpeedButton;
    bTakbirRuku1Sh3F: TSpeedButton;
    bTakbirRuku1B2F: TSpeedButton;
    bTakbirRuku1P2S: TSpeedButton;
    bTakbirRuku1A4F: TSpeedButton;
    bTakbirRuku1P4S: TSpeedButton;
    bTakbirRuku1P4F: TSpeedButton;
    bTakbirRuku2X4F: TSpeedButton;
    bTakbirRuku2V3V: TSpeedButton;
    bTakbirRuku2X2S: TSpeedButton;
    bTakbirRuku2Sh2S: TSpeedButton;
    bTakbirRuku2Sh3F: TSpeedButton;
    bTakbirRuku2B2F: TSpeedButton;
    bTakbirRuku2P2S: TSpeedButton;
    bTakbirRuku2A4F: TSpeedButton;
    bTakbirRuku2P4S: TSpeedButton;
    bTakbirRuku2P4F: TSpeedButton;
    bTakbirRuku3A4F: TSpeedButton;
    bTakbirRuku3X4F: TSpeedButton;
    bTakbirRuku3V3V: TSpeedButton;
    bTakbirRuku3Sh3F: TSpeedButton;
    bTakbirRuku3P4S: TSpeedButton;
    bTakbirRuku3P4F: TSpeedButton;
    bTakbirRuku4A4F: TSpeedButton;
    bTakbirRuku4X4F: TSpeedButton;
    bTakbirRuku4P4S: TSpeedButton;
    bTakbirRuku4P4F: TSpeedButton;
    bTakbirSajda1_1X4F: TSpeedButton;
    bTakbirSajda1_1V3V: TSpeedButton;
    bTakbirSajda1_1X2S: TSpeedButton;
    bTakbirSajda1_1Sh2S: TSpeedButton;
    bTakbirSajda1_1Sh3F: TSpeedButton;
    bTakbirSajda1_1B2F: TSpeedButton;
    bTakbirSajda1_1P2S: TSpeedButton;
    bTakbirSajda1_1A4F: TSpeedButton;
    bTakbirSajda1_1P4S: TSpeedButton;
    bTakbirSajda1_1P4F: TSpeedButton;
    bTakbirSajda1_2X4F: TSpeedButton;
    bTakbirSajda1_2V3V: TSpeedButton;
    bTakbirSajda1_2X2S: TSpeedButton;
    bTakbirSajda1_2Sh2S: TSpeedButton;
    bTakbirSajda1_2Sh3F: TSpeedButton;
    bTakbirSajda1_2B2F: TSpeedButton;
    bTakbirSajda1_2P2S: TSpeedButton;
    bTakbirSajda1_2A4F: TSpeedButton;
    bTakbirSajda1_2P4S: TSpeedButton;
    bTakbirSajda1_2P4F: TSpeedButton;
    bTakbirSajda2_1X4F: TSpeedButton;
    bTakbirSajda2_1V3V: TSpeedButton;
    bTakbirSajda2_1X2S: TSpeedButton;
    bTakbirSajda2_1Sh2S: TSpeedButton;
    bTakbirSajda2_1Sh3F: TSpeedButton;
    bTakbirSajda2_1B2F: TSpeedButton;
    bTakbirSajda2_1P2S: TSpeedButton;
    bTakbirSajda2_1A4F: TSpeedButton;
    bTakbirSajda2_1P4S: TSpeedButton;
    bTakbirSajda2_1P4F: TSpeedButton;
    bTakbirSajda2_2X4F: TSpeedButton;
    bTakbirSajda2_2V3V: TSpeedButton;
    bTakbirSajda2_2X2S: TSpeedButton;
    bTakbirSajda2_2Sh2S: TSpeedButton;
    bTakbirSajda2_2Sh3F: TSpeedButton;
    bTakbirSajda2_2P2S: TSpeedButton;
    bTakbirSajda2_2P4F: TSpeedButton;
    bTakbirSajda2_2A4F: TSpeedButton;
    bTakbirSajda3_1A4F: TSpeedButton;
    bTakbirSajda3_1X4F: TSpeedButton;
    bTakbirSajda3_1V3V: TSpeedButton;
    bTakbirSajda3_1Sh3F: TSpeedButton;
    bTakbirSajda3_1P4S: TSpeedButton;
    bTakbirSajda2_2B2F: TSpeedButton;
    bTakbirSajda2_2P4S: TSpeedButton;
    bTakbirSajda3_1P4F: TSpeedButton;
    bTakbirSajda3_2X4F: TSpeedButton;
    bTakbirSajda3_2V3V: TSpeedButton;
    bTakbirSajda3_2Sh3F: TSpeedButton;
    bTakbirSajda3_2P4F: TSpeedButton;
    bTakbirSajda3_2A4F: TSpeedButton;
    bTakbirSajda4_1X4F: TSpeedButton;
    bTakbirSajda4_1P4F: TSpeedButton;
    bTakbirSajda4_1A4F: TSpeedButton;
    bTakbirSajda4_2A4F: TSpeedButton;
    bTakbirSajda4_2X4F: TSpeedButton;
    bTakbirSajda4_2P4S: TSpeedButton;
    bTakbirSajda4_1P4S: TSpeedButton;
    bTakbirSajda3_2P4S: TSpeedButton;
    bTakbirSajda4_2P4F: TSpeedButton;
    bTasbehotV3V: TSpeedButton;
    bTasbehotB2F: TSpeedButton;
    bTasbehotA4F: TSpeedButton;
    bTasbehotP2S: TSpeedButton;
    bTasbehotSh2S: TSpeedButton;
    bTashahhud1X4F: TSpeedButton;
    bTashahhud1V3V: TSpeedButton;
    bTashahhud1Sh3F: TSpeedButton;
    bTashahhud1P4F: TSpeedButton;
    bTashahhud1A4F: TSpeedButton;
    bTashahhud2X4F: TSpeedButton;
    bTashahhud2V3V: TSpeedButton;
    bTashahhud2Sh3F: TSpeedButton;
    bTashahhud2P4F: TSpeedButton;
    bTashahhud2A4F: TSpeedButton;
    bTashahhudB2S: TSpeedButton;
    bFotiha2B2S: TSpeedButton;
    bSalavotB2S: TSpeedButton;
    bHamd1B2S: TSpeedButton;
    bAla1_1B2S: TSpeedButton;
    bHamd2B2S: TSpeedButton;
    bRobbanaB2S: TSpeedButton;
    bKavsarB2S: TSpeedButton;
    bFotiha1B2S: TSpeedButton;
    bIxlosB2S: TSpeedButton;
    bTasme2B2S: TSpeedButton;
    bTakbirJalsa2B2S: TSpeedButton;
    bTakbirQiyom2B2S: TSpeedButton;
    bTakbirQadaB2S: TSpeedButton;
    bTakbirRuku2B2S: TSpeedButton;
    bTakbirSajda1_1B2S: TSpeedButton;
    bSanoB2S: TSpeedButton;
    bAzonDuoB2S: TSpeedButton;
    bTakbirRuku1B2S: TSpeedButton;
    bTaavvuzB2S: TSpeedButton;
    bAziym1B2S: TSpeedButton;
    bTakbirKirishB2S: TSpeedButton;
    bBasmala1B2S: TSpeedButton;
    bTasme1B2S: TSpeedButton;
    bTakbirJalsa1B2S: TSpeedButton;
    bTakbirSajda1_2B2S: TSpeedButton;
    bTakbirSajda2_1B2S: TSpeedButton;
    bTakbirSajda2_2B2S: TSpeedButton;
    bTashahhudB2F: TSpeedButton;
    bTashahhud1P4S: TSpeedButton;
    bTashahhud2P4S: TSpeedButton;
    bTashahhudX2S: TSpeedButton;
    bTashahhudP2S: TSpeedButton;
    bTashahhudSh2S: TSpeedButton;
    ImageMan: TImage;
    ImageWoman: TImage;
    IniPropStorage: TIniPropStorage;
    lAla1_1X4F: TLabel;
    lAla1_1V3V: TLabel;
    lAla1_1X2S: TLabel;
    lAla1_1Sh2S: TLabel;
    lAla1_1Sh3F: TLabel;
    lAla1_1B2F: TLabel;
    lAla1_1P2S: TLabel;
    lAla1_1A4F: TLabel;
    lAla1_1P4S: TLabel;
    lAla1_1P4F: TLabel;
    lAla1_2X4F: TLabel;
    lAla1_2V3V: TLabel;
    lAla1_2X2S: TLabel;
    lAla1_2Sh2S: TLabel;
    lAla1_2Sh3F: TLabel;
    lAla1_2B2S: TLabel;
    lAla1_2B2F: TLabel;
    lAla1_2P2S: TLabel;
    lAla1_2A4F: TLabel;
    lAla1_2P4S: TLabel;
    lAla1_2P4F: TLabel;
    lAla2_1X4F: TLabel;
    lAla2_1V3V: TLabel;
    lAla2_1X2S: TLabel;
    lAla2_1Sh2S: TLabel;
    lAla2_1Sh3F: TLabel;
    lAla2_1B2S: TLabel;
    lAla2_1B2F: TLabel;
    lAla2_1P2S: TLabel;
    lAla2_1A4F: TLabel;
    lAla2_1P4S: TLabel;
    lAla2_1P4F: TLabel;
    lAla2_2X4F: TLabel;
    lAla2_2V3V: TLabel;
    lAla2_2X2S: TLabel;
    lAla2_2Sh2S: TLabel;
    lAla2_2Sh3F: TLabel;
    lAla2_2P2S: TLabel;
    lAla2_2P4F: TLabel;
    lAla2_2A4F: TLabel;
    lAla3_1A4F: TLabel;
    lAla3_1X4F: TLabel;
    lAla3_1V3V: TLabel;
    lAla3_1Sh3F: TLabel;
    lAla3_1P4S: TLabel;
    lAla2_2B2S: TLabel;
    lAla2_2B2F: TLabel;
    lAla2_2P4S: TLabel;
    lAla3_1P4F: TLabel;
    lAla3_2X4F: TLabel;
    lAla3_2V3V: TLabel;
    lAla3_2Sh3F: TLabel;
    lAla3_2P4F: TLabel;
    lAla3_2A4F: TLabel;
    lAla4_1X4F: TLabel;
    lAla4_1P4F: TLabel;
    lAla4_1A4F: TLabel;
    lAla4_2A4F: TLabel;
    lAla4_2X4F: TLabel;
    lAla4_2P4S: TLabel;
    lAla4_1P4S: TLabel;
    lAla3_2P4S: TLabel;
    lAla4_2P4F: TLabel;
    lAziym1X4F: TLabel;
    lAziym1V3V: TLabel;
    lAziym1X2S: TLabel;
    lAziym1Sh2S: TLabel;
    lAziym1Sh3F: TLabel;
    lAziym1B2F: TLabel;
    lAziym1P2S: TLabel;
    lAziym1A4F: TLabel;
    lAziym1P4S: TLabel;
    lAziym1P4F: TLabel;
    lAziym2X4F: TLabel;
    lAziym2V3V: TLabel;
    lAziym2X2S: TLabel;
    lAziym2Sh2S: TLabel;
    lAziym2Sh3F: TLabel;
    lAziym2B2S: TLabel;
    lAziym2B2F: TLabel;
    lAziym2P2S: TLabel;
    lAziym2A4F: TLabel;
    lAziym2P4S: TLabel;
    lAziym2P4F: TLabel;
    lAziym3A4F: TLabel;
    lAziym3X4F: TLabel;
    lAziym3V3V: TLabel;
    lAziym3Sh3F: TLabel;
    lAziym3P4S: TLabel;
    lAziym3P4F: TLabel;
    lAziym4A4F: TLabel;
    lAziym4X4F: TLabel;
    lAziym4P4S: TLabel;
    lAziym4P4F: TLabel;
    lAzonX4F: TLabel;
    lAzonDuoX4F: TLabel;
    lAzonSh3F: TLabel;
    lAzonDuoA4F: TLabel;
    lAzonDuoSh3F: TLabel;
    lAzonP4S: TLabel;
    lAzonDuoP4S: TLabel;
    lAzonA4F: TLabel;
    lBasmala1X4F: TLabel;
    lBasmala1V3V: TLabel;
    lBasmala1X2S: TLabel;
    lBasmala1Sh2S: TLabel;
    lBasmala1Sh3F: TLabel;
    lBasmala1P2S: TLabel;
    lBasmala1A4F: TLabel;
    lBasmala2X4F: TLabel;
    lBasmala2V3V: TLabel;
    lBasmala2X2S: TLabel;
    lBasmala2Sh2S: TLabel;
    lBasmala2Sh3F: TLabel;
    lBasmala2P2S: TLabel;
    lBasmala2A4F: TLabel;
    lBasmala3A4F: TLabel;
    lBasmala3X4F: TLabel;
    lBasmala3V3V: TLabel;
    lBasmala3Sh3F: TLabel;
    lBasmala4A4F: TLabel;
    lBasmala4X4F: TLabel;
    lDuoV3V: TLabel;
    lDuoSh2S: TLabel;
    lDuoFA4F: TLabel;
    lDuoB2F: TLabel;
    lDuoA4F: TLabel;
    lDuoP2S: TLabel;
    lDuoFX4F: TLabel;
    lDuoFSh3F: TLabel;
    lDuoFP4F: TLabel;
    lFalaqSh2S: TLabel;
    lFotiha1X4F: TLabel;
    lFotiha1V3V: TLabel;
    lFotiha1X2S: TLabel;
    lFotiha1Sh2S: TLabel;
    lFotiha1Sh3F: TLabel;
    lFotiha1P2S: TLabel;
    lFotiha1A4F: TLabel;
    lFotiha2X4F: TLabel;
    lFotiha2V3V: TLabel;
    lFotiha2X2S: TLabel;
    lFotiha2Sh2S: TLabel;
    lFotiha2Sh3F: TLabel;
    lFotiha2P2S: TLabel;
    lFotiha2A4F: TLabel;
    lFotiha3A4F: TLabel;
    lQunut: TLabel;
    lTakbirQunut: TLabel;
    lNasV3V: TLabel;
    lFotiha3X4F: TLabel;
    lFotiha3V3V: TLabel;
    lFotiha3Sh3F: TLabel;
    lFotiha4A4F: TLabel;
    lFotiha4X4F: TLabel;
    lHamd1X4F: TLabel;
    lHamd1V3V: TLabel;
    lHamd1X2S: TLabel;
    lHamd1Sh2S: TLabel;
    lHamd1Sh3F: TLabel;
    lHamd1P2S: TLabel;
    lHamd1A4F: TLabel;
    lHamd2X4F: TLabel;
    lHamd2V3V: TLabel;
    lHamd2X2S: TLabel;
    lHamd2Sh2S: TLabel;
    lHamd2Sh3F: TLabel;
    lHamd2P2S: TLabel;
    lHamd2A4F: TLabel;
    lHamd3A4F: TLabel;
    lHamd3X4F: TLabel;
    lHamd3V3V: TLabel;
    lHamd3Sh3F: TLabel;
    lHamd4A4F: TLabel;
    lHamd4X4F: TLabel;
    lIqomatX4F: TLabel;
    lIqomatSh3F: TLabel;
    lIqomatP4F: TLabel;
    lBasmala1P4S: TLabel;
    lBasmala1P4F: TLabel;
    lBasmala2P4S: TLabel;
    lBasmala2P4F: TLabel;
    lBasmala3P4S: TLabel;
    lBasmala3P4F: TLabel;
    lBasmala4P4S: TLabel;
    lBasmala4P4F: TLabel;
    lFotiha1P4F: TLabel;
    lFotiha2P4F: TLabel;
    lFotiha3P4F: TLabel;
    lFotiha4P4F: TLabel;
    lHamd1P4F: TLabel;
    lHamd2P4F: TLabel;
    lHamd3P4F: TLabel;
    lHamd4P4S: TLabel;
    lHamd4P4F: TLabel;
    lIqomatA4F: TLabel;
    lIxlosA4F: TLabel;
    lIxlosX4F: TLabel;
    lFalaqV3V: TLabel;
    lNasX2S: TLabel;
    lIxlosSh3F: TLabel;
    lKavsarA4F: TLabel;
    lKavsarX4F: TLabel;
    lIxlosV3V: TLabel;
    lFalaqX2S: TLabel;
    lKavsarSh3F: TLabel;
    lKursiA4F: TLabel;
    lKursiV3V: TLabel;
    lKursiP2S: TLabel;
    lKursiSh2S: TLabel;
    lNasP2S: TLabel;
    lIxlosP4F: TLabel;
    lFalaqP2S: TLabel;
    lKavsarP4F: TLabel;
    lNasSh2S: TLabel;
    lNasP4S: TLabel;
    lFotiha1P4S: TLabel;
    lFotiha2P4S: TLabel;
    lFotiha3P4S: TLabel;
    lFotiha4P4S: TLabel;
    lHamd1P4S: TLabel;
    lHamd2P4S: TLabel;
    lHamd3P4S: TLabel;
    lIqomatB2F: TLabel;
    lBasmala1B2F: TLabel;
    lBasmala2B2S: TLabel;
    lBasmala2B2F: TLabel;
    lFotiha1B2F: TLabel;
    lFotiha2B2F: TLabel;
    lHamd1B2F: TLabel;
    lHamd2B2F: TLabel;
    lIxlosP4S: TLabel;
    lFalaqP4S: TLabel;
    lKavsarP4S: TLabel;
    lNasB2F: TLabel;
    lFalaqB2F: TLabel;
    lNiyatX4F: TLabel;
    lNiyatV3V: TLabel;
    lNiyatX2S: TLabel;
    lNiyatSh2S: TLabel;
    lNiyatSh3F: TLabel;
    lNiyatB2F: TLabel;
    lNiyatP2S: TLabel;
    lNiyatP4S: TLabel;
    lNiyatP4F: TLabel;
    lNiyatA4F: TLabel;
    lRobbanaX4F: TLabel;
    lRobbanaV3V: TLabel;
    lRobbanaX2S: TLabel;
    lRobbanaSh2S: TLabel;
    lRobbanaSh3F: TLabel;
    lRobbanaB2F: TLabel;
    lRobbanaP2S: TLabel;
    lRobbanaA4F: TLabel;
    lRobbanaP4S: TLabel;
    lRobbanaP4F: TLabel;
    lSalavotX4F: TLabel;
    lSalavotV3V: TLabel;
    lSalavotX2S: TLabel;
    lSalavotSh2S: TLabel;
    lSalavotSh3F: TLabel;
    lSalavotB2F: TLabel;
    lKursiB2F: TLabel;
    lSalavotP2S: TLabel;
    lSalavotA4F: TLabel;
    lSalavotP4S: TLabel;
    lSalavotP4F: TLabel;
    lSalomX4F: TLabel;
    lSalomV3V: TLabel;
    lSalomX2S: TLabel;
    lSalomSh2S: TLabel;
    lSalomSh3F: TLabel;
    lSalomB2S: TLabel;
    lSalomB2F: TLabel;
    lSalomP2S: TLabel;
    lSalomA4F: TLabel;
    lSalomP4S: TLabel;
    lSalomP4F: TLabel;
    lTasme1X4F: TLabel;
    lTasme1V3V: TLabel;
    lTasme1X2S: TLabel;
    lTasme1Sh2S: TLabel;
    lTasme1Sh3F: TLabel;
    lTasme1B2F: TLabel;
    lTasme1P2S: TLabel;
    lTasme1A4F: TLabel;
    lTasme1P4S: TLabel;
    lTasme1P4F: TLabel;
    lTasme2X4F: TLabel;
    lTasme2V3V: TLabel;
    lTasme2X2S: TLabel;
    lTasme2Sh2S: TLabel;
    lTasme2Sh3F: TLabel;
    lTasme2B2F: TLabel;
    lTasme2P2S: TLabel;
    lTasme2A4F: TLabel;
    lTasme2P4S: TLabel;
    lTasme2P4F: TLabel;
    lTasme3A4F: TLabel;
    lTasme3X4F: TLabel;
    lTasme3V3V: TLabel;
    lTasme3Sh3F: TLabel;
    lTasme3P4S: TLabel;
    lTasme3P4F: TLabel;
    lTasme4A4F: TLabel;
    lTasme4X4F: TLabel;
    lTasme4P4S: TLabel;
    lTasme4P4F: TLabel;
    lSanoX4F: TLabel;
    lSanoV3V: TLabel;
    lSanoX2S: TLabel;
    lSanoSh2S: TLabel;
    lSanoSh3F: TLabel;
    lSanoB2F: TLabel;
    lSanoP2S: TLabel;
    lSanoA4F: TLabel;
    lSanoP4S: TLabel;
    lSanoP4F: TLabel;
    lTaavvuzX4F: TLabel;
    lTaavvuzV3V: TLabel;
    lTaavvuzX2S: TLabel;
    lTaavvuzSh2S: TLabel;
    lTaavvuzSh3F: TLabel;
    lTaavvuzB2F: TLabel;
    lTaavvuzP2S: TLabel;
    lTaavvuzA4F: TLabel;
    lTaavvuzP4S: TLabel;
    lTaavvuzP4F: TLabel;
    lTakbirJalsa1X4F: TLabel;
    lTakbirJalsa1V3V: TLabel;
    lTakbirJalsa1X2S: TLabel;
    lTakbirJalsa1Sh2S: TLabel;
    lTakbirJalsa1Sh3F: TLabel;
    lTakbirJalsa1B2F: TLabel;
    lTakbirJalsa1P2S: TLabel;
    lTakbirJalsa1A4F: TLabel;
    lTakbirJalsa1P4S: TLabel;
    lTakbirJalsa1P4F: TLabel;
    lTakbirJalsa2X4F: TLabel;
    lTakbirJalsa2V3V: TLabel;
    lTakbirJalsa2X2S: TLabel;
    lTakbirJalsa2Sh2S: TLabel;
    lTakbirJalsa2Sh3F: TLabel;
    lTakbirJalsa2B2F: TLabel;
    lTakbirJalsa2P2S: TLabel;
    lTakbirJalsa2A4F: TLabel;
    lTakbirJalsa2P4S: TLabel;
    lTakbirJalsa2P4F: TLabel;
    lTakbirJalsa3A4F: TLabel;
    lTakbirJalsa3X4F: TLabel;
    lTakbirJalsa3V3V: TLabel;
    lTakbirJalsa3Sh3F: TLabel;
    lTakbirJalsa3P4S: TLabel;
    lTakbirJalsa3P4F: TLabel;
    lTakbirJalsa4A4F: TLabel;
    lTakbirJalsa4X4F: TLabel;
    lTakbirJalsa4P4S: TLabel;
    lTakbirJalsa4P4F: TLabel;
    lTakbirKirishX4F: TLabel;
    lTakbirKirishV3V: TLabel;
    lTakbirKirishX2S: TLabel;
    lTakbirKirishSh2S: TLabel;
    lTakbirKirishSh3F: TLabel;
    lTakbirKirishB2F: TLabel;
    lTakbirKirishP2S: TLabel;
    lTakbirKirishP4S: TLabel;
    lTakbirKirishP4F: TLabel;
    lTakbirKirishA4F: TLabel;
    lTakbirQada1X4F: TLabel;
    lTakbirQada1V3V: TLabel;
    lTakbirQada1Sh3F: TLabel;
    lTakbirQada1P4F: TLabel;
    lTakbirQada1A4F: TLabel;
    lTakbirQada2X4F: TLabel;
    lTakbirQada2V3V: TLabel;
    lTakbirQada2Sh3F: TLabel;
    lTakbirQada2P4F: TLabel;
    lTakbirQada2A4F: TLabel;
    lTakbirQadaB2F: TLabel;
    lDuoFB2F: TLabel;
    lTakbirQada1P4S: TLabel;
    lTakbirQada2P4S: TLabel;
    lTakbirQadaX2S: TLabel;
    lTakbirQadaP2S: TLabel;
    lTakbirQadaSh2S: TLabel;
    lTakbirQiyom2X4F: TLabel;
    lTakbirQiyom2V3V: TLabel;
    lTakbirQiyom2X2S: TLabel;
    lTakbirQiyom2Sh2S: TLabel;
    lTakbirQiyom2Sh3F: TLabel;
    lTakbirQiyom2B2F: TLabel;
    lTakbirQiyom2P2S: TLabel;
    lTakbirQiyom2A4F: TLabel;
    lTakbirQiyom2P4S: TLabel;
    lTakbirQiyom2P4F: TLabel;
    lTakbirQiyom3A4F: TLabel;
    lTakbirQiyom3X4F: TLabel;
    lTakbirQiyom3V3V: TLabel;
    lTakbirQiyom3Sh3F: TLabel;
    lTakbirQiyom3P4S: TLabel;
    lTakbirQiyom3P4F: TLabel;
    lTakbirQiyom4A4F: TLabel;
    lTakbirQiyom4X4F: TLabel;
    lTakbirQiyom4P4S: TLabel;
    lTakbirQiyom4P4F: TLabel;
    lTakbirRuku1X4F: TLabel;
    lTakbirRuku1V3V: TLabel;
    lTakbirRuku1X2S: TLabel;
    lTakbirRuku1Sh2S: TLabel;
    lTakbirRuku1Sh3F: TLabel;
    lTakbirRuku1B2F: TLabel;
    lTakbirRuku1P2S: TLabel;
    lTakbirRuku1A4F: TLabel;
    lTakbirRuku1P4S: TLabel;
    lTakbirRuku1P4F: TLabel;
    lTakbirRuku2X4F: TLabel;
    lTakbirRuku2V3V: TLabel;
    lTakbirRuku2X2S: TLabel;
    lTakbirRuku2Sh2S: TLabel;
    lTakbirRuku2Sh3F: TLabel;
    lTakbirRuku2B2F: TLabel;
    lTakbirRuku2P2S: TLabel;
    lTakbirRuku2A4F: TLabel;
    lTakbirRuku2P4S: TLabel;
    lTakbirRuku2P4F: TLabel;
    lTakbirRuku3A4F: TLabel;
    lTakbirRuku3X4F: TLabel;
    lTakbirRuku3V3V: TLabel;
    lTakbirRuku3Sh3F: TLabel;
    lTakbirRuku3P4S: TLabel;
    lTakbirRuku3P4F: TLabel;
    lTakbirRuku4A4F: TLabel;
    lTakbirRuku4X4F: TLabel;
    lTakbirRuku4P4S: TLabel;
    lTakbirRuku4P4F: TLabel;
    lTakbirSajda1_1X4F: TLabel;
    lTakbirSajda1_1V3V: TLabel;
    lTakbirSajda1_1X2S: TLabel;
    lTakbirSajda1_1Sh2S: TLabel;
    lTakbirSajda1_1Sh3F: TLabel;
    lTakbirSajda1_1B2F: TLabel;
    lTakbirSajda1_1P2S: TLabel;
    lTakbirSajda1_1A4F: TLabel;
    lTakbirSajda1_1P4S: TLabel;
    lTakbirSajda1_1P4F: TLabel;
    lTakbirSajda1_2X4F: TLabel;
    lTakbirSajda1_2V3V: TLabel;
    lTakbirSajda1_2X2S: TLabel;
    lTakbirSajda1_2Sh2S: TLabel;
    lTakbirSajda1_2Sh3F: TLabel;
    lTakbirSajda1_2B2F: TLabel;
    lTakbirSajda1_2P2S: TLabel;
    lTakbirSajda1_2A4F: TLabel;
    lTakbirSajda1_2P4S: TLabel;
    lTakbirSajda1_2P4F: TLabel;
    lTakbirSajda2_1X4F: TLabel;
    lTakbirSajda2_1V3V: TLabel;
    lTakbirSajda2_1X2S: TLabel;
    lTakbirSajda2_1Sh2S: TLabel;
    lTakbirSajda2_1Sh3F: TLabel;
    lTakbirSajda2_1B2F: TLabel;
    lTakbirSajda2_1P2S: TLabel;
    lTakbirSajda2_1A4F: TLabel;
    lTakbirSajda2_1P4S: TLabel;
    lTakbirSajda2_1P4F: TLabel;
    lTakbirSajda2_2X4F: TLabel;
    lTakbirSajda2_2V3V: TLabel;
    lTakbirSajda2_2X2S: TLabel;
    lTakbirSajda2_2Sh2S: TLabel;
    lTakbirSajda2_2Sh3F: TLabel;
    lTakbirSajda2_2P2S: TLabel;
    lTakbirSajda2_2P4S1: TLabel;
    lTakbirSajda2_2A4F: TLabel;
    lTakbirSajda3_1A4F: TLabel;
    lTakbirSajda3_1X4F: TLabel;
    lTakbirSajda3_1V3V: TLabel;
    lTakbirSajda3_1Sh3F: TLabel;
    lTakbirSajda3_1P4S: TLabel;
    lTakbirSajda2_2B2F: TLabel;
    lTakbirSajda2_2P4S: TLabel;
    lTakbirSajda3_1P4F: TLabel;
    lTakbirSajda3_2X4F: TLabel;
    lTakbirSajda3_2V3V: TLabel;
    lTakbirSajda3_2Sh3F: TLabel;
    lTakbirSajda3_2P4F: TLabel;
    lTakbirSajda3_2A4F: TLabel;
    lTakbirSajda4_1X4F: TLabel;
    lTakbirSajda4_1P4F: TLabel;
    lTakbirSajda4_1A4F: TLabel;
    lTakbirSajda4_2A4F: TLabel;
    lTakbirSajda4_2X4F: TLabel;
    lTakbirSajda4_2P4S: TLabel;
    lTakbirSajda4_1P4S: TLabel;
    lTakbirSajda3_2P4S: TLabel;
    lTakbirSajda4_2P4F: TLabel;
    lTasbehotV3V: TLabel;
    lTasbehotB2F: TLabel;
    lTasbehotA4F: TLabel;
    lTasbehotP2S: TLabel;
    lTasbehotSh2S: TLabel;
    lTashahhud1X4F: TLabel;
    lTashahhud1V3V: TLabel;
    lTashahhud1Sh3F: TLabel;
    lTashahhud1P4F: TLabel;
    lTashahhud1A4F: TLabel;
    lTashahhud2X4F: TLabel;
    lTashahhud2V3V: TLabel;
    lTashahhud2Sh3F: TLabel;
    lTashahhud2P4F: TLabel;
    lTashahhud2A4F: TLabel;
    lTashahhudB2S: TLabel;
    lFotiha2B2S: TLabel;
    lSalavotB2S: TLabel;
    lHamd1B2S: TLabel;
    lAzonB2S: TLabel;
    lAla1_1B2S: TLabel;
    lHamd2B2S: TLabel;
    lRobbanaB2S: TLabel;
    lKavsarB2S: TLabel;
    lFotiha1B2S: TLabel;
    lIxlosB2S: TLabel;
    lTasme2B2S: TLabel;
    lTakbirJalsa2B2S: TLabel;
    lTakbirQiyom2B2S: TLabel;
    lTakbirQadaB2S: TLabel;
    lTakbirRuku2B2S: TLabel;
    lTakbirSajda1_1B2S: TLabel;
    lSanoB2S: TLabel;
    lAzonDuoB2S: TLabel;
    lTakbirRuku1B2S: TLabel;
    lTaavvuzB2S: TLabel;
    lAziym1B2S: TLabel;
    lTakbirKirishB2S: TLabel;
    lNiyatB2S: TLabel;
    lBomdod: TLabel;
    lPeshin: TLabel;
    lAsr: TLabel;
    lShom: TLabel;
    lBasmala1B2S: TLabel;
    lTasme1B2S: TLabel;
    lTakbirJalsa1B2S: TLabel;
    lTakbirSajda1_2B2S: TLabel;
    lTakbirSajda2_1B2S: TLabel;
    lTakbirSajda2_2B2S: TLabel;
    lTashahhudB2F: TLabel;
    lTashahhud1P4S: TLabel;
    lTashahhud2P4S: TLabel;
    lTashahhudX2S: TLabel;
    lTashahhudP2S: TLabel;
    lTashahhudSh2S: TLabel;
    lXufton: TLabel;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    miPrevious: TMenuItem;
    miNext: TMenuItem;
    miImage: TMenuItem;
    miExit: TMenuItem;
    miSettings: TMenuItem;
    miAbout: TMenuItem;
    miFile: TMenuItem;
    miEdit: TMenuItem;
    miHelp: TMenuItem;
    pcX4F: TPageControl;
    pcV3V: TPageControl;
    pcX2S: TPageControl;
    pcSh2S: TPageControl;
    pcSh3F: TPageControl;
    pcB2S: TPageControl;
    pcB2F: TPageControl;
    pcP2S: TPageControl;
    pcA4F: TPageControl;
    pcP4S: TPageControl;
    pcBomdod: TPageControl;
    pcP4F: TPageControl;
    pcPeshin: TPageControl;
    pcAsr: TPageControl;
    pcShom: TPageControl;
    pcXufton: TPageControl;
    pcMain: TPageControl;
    pAla1_1X4F: TPanel;
    pAla1_1V3V: TPanel;
    pAla1_1X2S: TPanel;
    pAla1_1Sh2S: TPanel;
    pAla1_1Sh3F: TPanel;
    pAla1_1B2F: TPanel;
    pAla1_1P2S: TPanel;
    pAla1_1A4F: TPanel;
    pAla1_1P4S: TPanel;
    pAla1_1P4F: TPanel;
    pAla1_2X4F: TPanel;
    pAla1_2V3V: TPanel;
    pAla1_2X2S: TPanel;
    pAla1_2Sh2S: TPanel;
    pAla1_2Sh3F: TPanel;
    pAla1_2B2S: TPanel;
    pAla1_2B2F: TPanel;
    pAla1_2P2S: TPanel;
    pAla1_2A4F: TPanel;
    pAla1_2P4S: TPanel;
    pAla1_2P4F: TPanel;
    pAla2_1X4F: TPanel;
    pAla2_1V3V: TPanel;
    pAla2_1X2S: TPanel;
    pAla2_1Sh2S: TPanel;
    pAla2_1Sh3F: TPanel;
    pAla2_1B2S: TPanel;
    pAla2_1B2F: TPanel;
    pAla2_1P2S: TPanel;
    pAla2_1A4F: TPanel;
    pAla2_1P4S: TPanel;
    pAla2_1P4F: TPanel;
    pAla2_2X4F: TPanel;
    pAla2_2V3V: TPanel;
    pAla2_2X2S: TPanel;
    pAla2_2Sh2S: TPanel;
    pAla2_2Sh3F: TPanel;
    pAla2_2P2S: TPanel;
    pAla2_2P4F: TPanel;
    pAla2_2A4F: TPanel;
    pAla3_1A4F: TPanel;
    pAla3_1X4F: TPanel;
    pAla3_1V3V: TPanel;
    pAla3_1Sh3F: TPanel;
    pAla3_1P4S: TPanel;
    pAla2_2B2S: TPanel;
    pAla2_2B2F: TPanel;
    pAla2_2P4S: TPanel;
    pAla3_1P4F: TPanel;
    pAla3_2X4F: TPanel;
    pAla3_2V3V: TPanel;
    pAla3_2Sh3F: TPanel;
    pAla3_2P4F: TPanel;
    pAla3_2A4F: TPanel;
    pAla4_1X4F: TPanel;
    pAla4_1P4F: TPanel;
    pAla4_1A4F: TPanel;
    pAla4_2A4F: TPanel;
    pAla4_2X4F: TPanel;
    pAla4_2P4S: TPanel;
    pAla4_1P4S: TPanel;
    pAla3_2P4S: TPanel;
    pAla4_2P4F: TPanel;
    pAziym1X4F: TPanel;
    pAziym1V3V: TPanel;
    pAziym1X2S: TPanel;
    pAziym1Sh2S: TPanel;
    pAziym1Sh3F: TPanel;
    pAziym1B2F: TPanel;
    pAziym1P2S: TPanel;
    pAziym1A4F: TPanel;
    pAziym1P4S: TPanel;
    pAziym1P4F: TPanel;
    pAziym2X4F: TPanel;
    pAziym2V3V: TPanel;
    pAziym2X2S: TPanel;
    pAziym2Sh2S: TPanel;
    pAziym2Sh3F: TPanel;
    pAziym2B2S: TPanel;
    pAziym2B2F: TPanel;
    pAziym2P2S: TPanel;
    pAziym2A4F: TPanel;
    pAziym2P4S: TPanel;
    pAziym2P4F: TPanel;
    pAziym3A4F: TPanel;
    pAziym3X4F: TPanel;
    pAziym3V3V: TPanel;
    pAziym3Sh3F: TPanel;
    pAziym3P4S: TPanel;
    pAziym3P4F: TPanel;
    pAziym4A4F: TPanel;
    pAziym4X4F: TPanel;
    pAziym4P4S: TPanel;
    pAziym4P4F: TPanel;
    pAzonX4F: TPanel;
    pAzonDuoX4F: TPanel;
    pAzonSh3F: TPanel;
    pAzonDuoA4F: TPanel;
    pAzonDuoSh3F: TPanel;
    pAzonP4S: TPanel;
    pAzonDuoP4S: TPanel;
    pAzonA4F: TPanel;
    pBasmala1X4F: TPanel;
    pBasmala1V3V: TPanel;
    pBasmala1X2S: TPanel;
    pBasmala1Sh2S: TPanel;
    pBasmala1Sh3F: TPanel;
    pBasmala1P2S: TPanel;
    pBasmala1A4F: TPanel;
    pBasmala2X4F: TPanel;
    pBasmala2V3V: TPanel;
    pBasmala2X2S: TPanel;
    pBasmala2Sh2S: TPanel;
    pBasmala2Sh3F: TPanel;
    pBasmala2P2S: TPanel;
    pBasmala2A4F: TPanel;
    pBasmala3A4F: TPanel;
    pBasmala3X4F: TPanel;
    pBasmala3V3V: TPanel;
    pBasmala3Sh3F: TPanel;
    pBasmala4A4F: TPanel;
    pBasmala4X4F: TPanel;
    pDuoV3V: TPanel;
    pDuoSh2S: TPanel;
    pDuoFA4F: TPanel;
    pDuoB2F: TPanel;
    pDuoA4F: TPanel;
    pDuoP2S: TPanel;
    pDuoFX4F: TPanel;
    pDuoFSh3F: TPanel;
    pDuoFP4F: TPanel;
    pFalaqSh2S: TPanel;
    pFotiha1X4F: TPanel;
    pFotiha1V3V: TPanel;
    pFotiha1X2S: TPanel;
    pFotiha1Sh2S: TPanel;
    pFotiha1Sh3F: TPanel;
    pFotiha1P2S: TPanel;
    pFotiha1A4F: TPanel;
    pFotiha2X4F: TPanel;
    pFotiha2V3V: TPanel;
    pFotiha2X2S: TPanel;
    pFotiha2Sh2S: TPanel;
    pFotiha2Sh3F: TPanel;
    pFotiha2P2S: TPanel;
    pFotiha2A4F: TPanel;
    pFotiha3A4F: TPanel;
    pQunut: TPanel;
    pTakbirQunut: TPanel;
    pNasV3V: TPanel;
    pFotiha3X4F: TPanel;
    pFotiha3V3V: TPanel;
    pFotiha3Sh3F: TPanel;
    pFotiha4A4F: TPanel;
    pFotiha4X4F: TPanel;
    pHamd1X4F: TPanel;
    pHamd1V3V: TPanel;
    pHamd1X2S: TPanel;
    pHamd1Sh2S: TPanel;
    pHamd1Sh3F: TPanel;
    pHamd1P2S: TPanel;
    pHamd1A4F: TPanel;
    pHamd2X4F: TPanel;
    pHamd2V3V: TPanel;
    pHamd2X2S: TPanel;
    pHamd2Sh2S: TPanel;
    pHamd2Sh3F: TPanel;
    pHamd2P2S: TPanel;
    pHamd2A4F: TPanel;
    pHamd3A4F: TPanel;
    pHamd3X4F: TPanel;
    pHamd3V3V: TPanel;
    pHamd3Sh3F: TPanel;
    pHamd4A4F: TPanel;
    pHamd4X4F: TPanel;
    pIqomatX4F: TPanel;
    pIqomatSh3F: TPanel;
    pIqomatP4F: TPanel;
    pBasmala1P4S: TPanel;
    pBasmala1P4F: TPanel;
    pBasmala2P4S: TPanel;
    pBasmala2P4F: TPanel;
    pBasmala3P4S: TPanel;
    pBasmala3P4F: TPanel;
    pBasmala4P4S: TPanel;
    pBasmala4P4F: TPanel;
    pFotiha1P4F: TPanel;
    pFotiha2P4F: TPanel;
    pFotiha3P4F: TPanel;
    pFotiha4P4F: TPanel;
    pHamd1P4F: TPanel;
    pHamd2P4F: TPanel;
    pHamd3P4F: TPanel;
    pHamd4P4S: TPanel;
    pHamd4P4F: TPanel;
    pIqomatA4F: TPanel;
    pIxlosA4F: TPanel;
    pIxlosX4F: TPanel;
    pFalaqV3V: TPanel;
    pNasX2S: TPanel;
    pIxlosSh3F: TPanel;
    pKavsarA4F: TPanel;
    pKavsarX4F: TPanel;
    pIxlosV3V: TPanel;
    pFalaqX2S: TPanel;
    pKavsarSh3F: TPanel;
    pKursiA4F: TPanel;
    pKursiV3V: TPanel;
    pKursiP2S: TPanel;
    pKursiSh2S: TPanel;
    pNasP2S: TPanel;
    pIxlosP4F: TPanel;
    pFalaqP2S: TPanel;
    pKavsarP4F: TPanel;
    pNasSh2S: TPanel;
    pNasP4S: TPanel;
    pFotiha1P4S: TPanel;
    pFotiha2P4S: TPanel;
    pFotiha3P4S: TPanel;
    pFotiha4P4S: TPanel;
    pHamd1P4S: TPanel;
    pHamd2P4S: TPanel;
    pHamd3P4S: TPanel;
    pIqomatB2F: TPanel;
    pBasmala1B2F: TPanel;
    pBasmala2B2S: TPanel;
    pBasmala2B2F: TPanel;
    pFotiha1B2F: TPanel;
    pFotiha2B2F: TPanel;
    pHamd1B2F: TPanel;
    pHamd2B2F: TPanel;
    pIxlosP4S: TPanel;
    pFalaqP4S: TPanel;
    pKavsarP4S: TPanel;
    pNasB2F: TPanel;
    pFalaqB2F: TPanel;
    pNiyatX4F: TPanel;
    pNiyatV3V: TPanel;
    pNiyatX2S: TPanel;
    pNiyatSh2S: TPanel;
    pNiyatSh3F: TPanel;
    pNiyatB2F: TPanel;
    pNiyatP2S: TPanel;
    pNiyatP4S: TPanel;
    pNiyatP4F: TPanel;
    pNiyatA4F: TPanel;
    pRobbanaX4F: TPanel;
    pRobbanaV3V: TPanel;
    pRobbanaX2S: TPanel;
    pRobbanaSh2S: TPanel;
    pRobbanaSh3F: TPanel;
    pRobbanaB2F: TPanel;
    pRobbanaP2S: TPanel;
    pRobbanaA4F: TPanel;
    pRobbanaP4S: TPanel;
    pRobbanaP4F: TPanel;
    pSalavotX4F: TPanel;
    pSalavotV3V: TPanel;
    pSalavotX2S: TPanel;
    pSalavotSh2S: TPanel;
    pSalavotSh3F: TPanel;
    pSalavotB2F: TPanel;
    pKursiB2F: TPanel;
    pSalavotP2S: TPanel;
    pSalavotA4F: TPanel;
    pSalavotP4S: TPanel;
    pSalavotP4F: TPanel;
    pSalomX4F: TPanel;
    pSalomV3V: TPanel;
    pSalomX2S: TPanel;
    pSalomSh2S: TPanel;
    pSalomSh3F: TPanel;
    pSalomB2S: TPanel;
    pSalomB2F: TPanel;
    pSalomP2S: TPanel;
    pSalomA4F: TPanel;
    pSalomP4S: TPanel;
    pSalomP4F: TPanel;
    pTasme1X4F: TPanel;
    pTasme1V3V: TPanel;
    pTasme1X2S: TPanel;
    pTasme1Sh2S: TPanel;
    pTasme1Sh3F: TPanel;
    pTasme1B2F: TPanel;
    pTasme1P2S: TPanel;
    pTasme1A4F: TPanel;
    pTasme1P4S: TPanel;
    pTasme1P4F: TPanel;
    pTasme2X4F: TPanel;
    pTasme2V3V: TPanel;
    pTasme2X2S: TPanel;
    pTasme2Sh2S: TPanel;
    pTasme2Sh3F: TPanel;
    pTasme2B2F: TPanel;
    pTasme2P2S: TPanel;
    pTasme2A4F: TPanel;
    pTasme2P4S: TPanel;
    pTasme2P4F: TPanel;
    pTasme3A4F: TPanel;
    pTasme3X4F: TPanel;
    pTasme3V3V: TPanel;
    pTasme3Sh3F: TPanel;
    pTasme3P4S: TPanel;
    pTasme3P4F: TPanel;
    pTasme4A4F: TPanel;
    pTasme4X4F: TPanel;
    pTasme4P4S: TPanel;
    pTasme4P4F: TPanel;
    pSanoX4F: TPanel;
    pSanoV3V: TPanel;
    pSanoX2S: TPanel;
    pSanoSh2S: TPanel;
    pSanoSh3F: TPanel;
    pSanoB2F: TPanel;
    pSanoP2S: TPanel;
    pSanoA4F: TPanel;
    pSanoP4S: TPanel;
    pSanoP4F: TPanel;
    pTaavvuzX4F: TPanel;
    pTaavvuzV3V: TPanel;
    pTaavvuzX2S: TPanel;
    pTaavvuzSh2S: TPanel;
    pTaavvuzSh3F: TPanel;
    pTaavvuzB2F: TPanel;
    pTaavvuzP2S: TPanel;
    pTaavvuzA4F: TPanel;
    pTaavvuzP4S: TPanel;
    pTaavvuzP4F: TPanel;
    pTakbirJalsa1X4F: TPanel;
    pTakbirJalsa1V3V: TPanel;
    pTakbirJalsa1X2S: TPanel;
    pTakbirJalsa1Sh2S: TPanel;
    pTakbirJalsa1Sh3F: TPanel;
    pTakbirJalsa1B2F: TPanel;
    pTakbirJalsa1P2S: TPanel;
    pTakbirJalsa1A4F: TPanel;
    pTakbirJalsa1P4S: TPanel;
    pTakbirJalsa1P4F: TPanel;
    pTakbirJalsa2X4F: TPanel;
    pTakbirJalsa2V3V: TPanel;
    pTakbirJalsa2X2S: TPanel;
    pTakbirJalsa2Sh2S: TPanel;
    pTakbirJalsa2Sh3F: TPanel;
    pTakbirJalsa2B2F: TPanel;
    pTakbirJalsa2P2S: TPanel;
    pTakbirJalsa2A4F: TPanel;
    pTakbirJalsa2P4S: TPanel;
    pTakbirJalsa2P4F: TPanel;
    pTakbirJalsa3A4F: TPanel;
    pTakbirJalsa3X4F: TPanel;
    pTakbirJalsa3V3V: TPanel;
    pTakbirJalsa3Sh3F: TPanel;
    pTakbirJalsa3P4S: TPanel;
    pTakbirJalsa3P4F: TPanel;
    pTakbirJalsa4A4F: TPanel;
    pTakbirJalsa4X4F: TPanel;
    pTakbirJalsa4P4S: TPanel;
    pTakbirJalsa4P4F: TPanel;
    pTakbirKirishX4F: TPanel;
    pTakbirKirishV3V: TPanel;
    pTakbirKirishX2S: TPanel;
    pTakbirKirishSh2S: TPanel;
    pTakbirKirishSh3F: TPanel;
    pTakbirKirishB2F: TPanel;
    pTakbirKirishP2S: TPanel;
    pTakbirKirishP4S: TPanel;
    pTakbirKirishP4F: TPanel;
    pTakbirKirishA4F: TPanel;
    pTakbirQada1X4F: TPanel;
    pTakbirQada1V3V: TPanel;
    pTakbirQada1Sh3F: TPanel;
    pTakbirQada1P4F: TPanel;
    pTakbirQada1A4F: TPanel;
    pTakbirQada2X4F: TPanel;
    pTakbirQada2V3V: TPanel;
    pTakbirQada2Sh3F: TPanel;
    pTakbirQada2P4F: TPanel;
    pTakbirQada2A4F: TPanel;
    pTakbirQadaB2F: TPanel;
    pDuoFB2F: TPanel;
    pTakbirQada1P4S: TPanel;
    pTakbirQada2P4S: TPanel;
    pTakbirQadaX2S: TPanel;
    pTakbirQadaP2S: TPanel;
    pTakbirQadaSh2S: TPanel;
    pTakbirQiyom2X4F: TPanel;
    pTakbirQiyom2V3V: TPanel;
    pTakbirQiyom2X2S: TPanel;
    pTakbirQiyom2Sh2S: TPanel;
    pTakbirQiyom2Sh3F: TPanel;
    pTakbirQiyom2B2F: TPanel;
    pTakbirQiyom2P2S: TPanel;
    pTakbirQiyom2A4F: TPanel;
    pTakbirQiyom2P4S: TPanel;
    pTakbirQiyom2P4F: TPanel;
    pTakbirQiyom3A4F: TPanel;
    pTakbirQiyom3X4F: TPanel;
    pTakbirQiyom3V3V: TPanel;
    pTakbirQiyom3Sh3F: TPanel;
    pTakbirQiyom3P4S: TPanel;
    pTakbirQiyom3P4F: TPanel;
    pTakbirQiyom4A4F: TPanel;
    pTakbirQiyom4X4F: TPanel;
    pTakbirQiyom4P4S: TPanel;
    pTakbirQiyom4P4F: TPanel;
    pTakbirRuku1X4F: TPanel;
    pTakbirRuku1V3V: TPanel;
    pTakbirRuku1X2S: TPanel;
    pTakbirRuku1Sh2S: TPanel;
    pTakbirRuku1Sh3F: TPanel;
    pTakbirRuku1B2F: TPanel;
    pTakbirRuku1P2S: TPanel;
    pTakbirRuku1A4F: TPanel;
    pTakbirRuku1P4S: TPanel;
    pTakbirRuku1P4F: TPanel;
    pTakbirRuku2X4F: TPanel;
    pTakbirRuku2V3V: TPanel;
    pTakbirRuku2X2S: TPanel;
    pTakbirRuku2Sh2S: TPanel;
    pTakbirRuku2Sh3F: TPanel;
    pTakbirRuku2B2F: TPanel;
    pTakbirRuku2P2S: TPanel;
    pTakbirRuku2A4F: TPanel;
    pTakbirRuku2P4S: TPanel;
    pTakbirRuku2P4F: TPanel;
    pTakbirRuku3A4F: TPanel;
    pTakbirRuku3X4F: TPanel;
    pTakbirRuku3V3V: TPanel;
    pTakbirRuku3Sh3F: TPanel;
    pTakbirRuku3P4S: TPanel;
    pTakbirRuku3P4F: TPanel;
    pTakbirRuku4A4F: TPanel;
    pTakbirRuku4X4F: TPanel;
    pTakbirRuku4P4S: TPanel;
    pTakbirRuku4P4F: TPanel;
    pTakbirSajda1_1X4F: TPanel;
    pTakbirSajda1_1V3V: TPanel;
    pTakbirSajda1_1X2S: TPanel;
    pTakbirSajda1_1Sh2S: TPanel;
    pTakbirSajda1_1Sh3F: TPanel;
    pTakbirSajda1_1B2F: TPanel;
    pTakbirSajda1_1P2S: TPanel;
    pTakbirSajda1_1A4F: TPanel;
    pTakbirSajda1_1P4S: TPanel;
    pTakbirSajda1_1P4F: TPanel;
    pTakbirSajda1_2X4F: TPanel;
    pTakbirSajda1_2V3V: TPanel;
    pTakbirSajda1_2X2S: TPanel;
    pTakbirSajda1_2Sh2S: TPanel;
    pTakbirSajda1_2Sh3F: TPanel;
    pTakbirSajda1_2B2F: TPanel;
    pTakbirSajda1_2P2S: TPanel;
    pTakbirSajda1_2A4F: TPanel;
    pTakbirSajda1_2P4S: TPanel;
    pTakbirSajda1_2P4F: TPanel;
    pTakbirSajda2_1X4F: TPanel;
    pTakbirSajda2_1V3V: TPanel;
    pTakbirSajda2_1X2S: TPanel;
    pTakbirSajda2_1Sh2S: TPanel;
    pTakbirSajda2_1Sh3F: TPanel;
    pTakbirSajda2_1B2F: TPanel;
    pTakbirSajda2_1P2S: TPanel;
    pTakbirSajda2_1A4F: TPanel;
    pTakbirSajda2_1P4S: TPanel;
    pTakbirSajda2_1P4F: TPanel;
    pTakbirSajda2_2X4F: TPanel;
    pTakbirSajda2_2V3V: TPanel;
    pTakbirSajda2_2X2S: TPanel;
    pTakbirSajda2_2Sh2S: TPanel;
    pTakbirSajda2_2Sh3F: TPanel;
    pTakbirSajda2_2P2S: TPanel;
    pTakbirSajda2_2P4F: TPanel;
    pTakbirSajda2_2A4F: TPanel;
    pTakbirSajda3_1A4F: TPanel;
    pTakbirSajda3_1X4F: TPanel;
    pTakbirSajda3_1V3V: TPanel;
    pTakbirSajda3_1Sh3F: TPanel;
    pTakbirSajda3_1P4S: TPanel;
    pTakbirSajda2_2B2F: TPanel;
    pTakbirSajda2_2P4S: TPanel;
    pTakbirSajda3_1P4F: TPanel;
    pTakbirSajda3_2X4F: TPanel;
    pTakbirSajda3_2V3V: TPanel;
    pTakbirSajda3_2Sh3F: TPanel;
    pTakbirSajda3_2P4F: TPanel;
    pTakbirSajda3_2A4F: TPanel;
    pTakbirSajda4_1X4F: TPanel;
    pTakbirSajda4_1P4F: TPanel;
    pTakbirSajda4_1A4F: TPanel;
    pTakbirSajda4_2A4F: TPanel;
    pTakbirSajda4_2X4F: TPanel;
    pTakbirSajda4_2P4S: TPanel;
    pTakbirSajda4_1P4S: TPanel;
    pTakbirSajda3_2P4S: TPanel;
    pTakbirSajda4_2P4F: TPanel;
    pTasbehotV3V: TPanel;
    pTasbehotB2F: TPanel;
    pTasbehotA4F: TPanel;
    pTasbehotP2S: TPanel;
    pTasbehotSh2S: TPanel;
    pTashahhud1X4F: TPanel;
    pTashahhud1V3V: TPanel;
    pTashahhud1Sh3F: TPanel;
    pTashahhud1P4F: TPanel;
    pTashahhud1A4F: TPanel;
    pTashahhud2X4F: TPanel;
    pTashahhud2V3V: TPanel;
    pTashahhud2Sh3F: TPanel;
    pTashahhud2P4F: TPanel;
    pTashahhud2A4F: TPanel;
    pTashahhudB2S: TPanel;
    pFotiha2B2S: TPanel;
    pSalavotB2S: TPanel;
    pHamd1B2S: TPanel;
    pAzonB2S: TPanel;
    pAla1_1B2S: TPanel;
    pHamd2B2S: TPanel;
    pRobbanaB2S: TPanel;
    pKavsarB2S: TPanel;
    pFotiha1B2S: TPanel;
    pIxlosB2S: TPanel;
    pTasme2B2S: TPanel;
    pTakbirJalsa2B2S: TPanel;
    pTakbirQiyom2B2S: TPanel;
    pTakbirQadaB2S: TPanel;
    pTakbirRuku2B2S: TPanel;
    pTakbirSajda1_1B2S: TPanel;
    pSanoB2S: TPanel;
    pAzonDuoB2S: TPanel;
    pTakbirRuku1B2S: TPanel;
    pTaavvuzB2S: TPanel;
    pAziym1B2S: TPanel;
    pTakbirKirishB2S: TPanel;
    pNiyatB2S: TPanel;
    pTashahhudX2S: TPanel;
    pTashahhudP2S: TPanel;
    pTashahhudSh2S: TPanel;
    pBottom: TPanel;
    pMain: TPanel;
    pImage: TPanel;
    pBasmala1B2S: TPanel;
    pTasme1B2S: TPanel;
    pTakbirJalsa1B2S: TPanel;
    pTakbirSajda1_2B2S: TPanel;
    pTakbirSajda2_1B2S: TPanel;
    pTakbirSajda2_2B2S: TPanel;
    pTashahhudB2F: TPanel;
    pTashahhud1P4S: TPanel;
    pTashahhud2P4S: TPanel;
    sbDuoA4F: TScrollBox;
    sbDuoX4F: TScrollBox;
    sbDuoV3V: TScrollBox;
    sbDuoSh2S: TScrollBox;
    sbDuoSh3F: TScrollBox;
    sbDuoP2S: TScrollBox;
    sbDuoP4F: TScrollBox;
    sbJalsa1X4F: TScrollBox;
    sbJalsa1V3V: TScrollBox;
    sbJalsa1X2S: TScrollBox;
    sbJalsa1Sh2S: TScrollBox;
    sbJalsa1Sh3F: TScrollBox;
    sbJalsa1B2F: TScrollBox;
    sbJalsa1P2S: TScrollBox;
    sbJalsa1A4F: TScrollBox;
    sbJalsa1P4S: TScrollBox;
    sbJalsa1P4F: TScrollBox;
    sbJalsa2X4F: TScrollBox;
    sbJalsa2V3V: TScrollBox;
    sbJalsa2X2S: TScrollBox;
    sbJalsa2Sh2S: TScrollBox;
    sbJalsa2Sh3F: TScrollBox;
    sbJalsa2B2S: TScrollBox;
    sbJalsa2B2F: TScrollBox;
    sbJalsa2P2S: TScrollBox;
    sbJalsa2A4F: TScrollBox;
    sbJalsa2P4S: TScrollBox;
    sbJalsa2P4F: TScrollBox;
    sbJalsa3A4F: TScrollBox;
    sbJalsa3X4F: TScrollBox;
    sbJalsa3V3V: TScrollBox;
    sbJalsa3Sh3F: TScrollBox;
    sbJalsa3P4S: TScrollBox;
    sbJalsa3P4F: TScrollBox;
    sbJalsa4A4F: TScrollBox;
    sbJalsa4X4F: TScrollBox;
    sbJalsa4P4S: TScrollBox;
    sbJalsa4P4F: TScrollBox;
    sbKirishX4F: TScrollBox;
    sbKirishV3V: TScrollBox;
    sbKirishX2S: TScrollBox;
    sbKirishSh2S: TScrollBox;
    sbKirishSh3F: TScrollBox;
    sbKirishB2F: TScrollBox;
    sbKirishP2S: TScrollBox;
    sbKirishP4S: TScrollBox;
    sbKirishP4F: TScrollBox;
    sbKirishA4F: TScrollBox;
    sbQada1X4F: TScrollBox;
    sbQada1V3V: TScrollBox;
    sbQada1Sh3F: TScrollBox;
    sbQada1P4F: TScrollBox;
    sbQada1A4F: TScrollBox;
    sbQada2X4F: TScrollBox;
    sbQada2V3V: TScrollBox;
    sbQada2Sh3F: TScrollBox;
    sbQada2P4F: TScrollBox;
    sbQada2A4F: TScrollBox;
    sbQadaB2F: TScrollBox;
    sbDuoB2F: TScrollBox;
    sbQada1P4S: TScrollBox;
    sbQada2P4S: TScrollBox;
    sbQadaX2S: TScrollBox;
    sbQadaP2S: TScrollBox;
    sbQadaSh2S: TScrollBox;
    sbQiyom1X4F: TScrollBox;
    sbQiyom1V3V: TScrollBox;
    sbQiyom1X2S: TScrollBox;
    sbQiyom1Sh2S: TScrollBox;
    sbQiyom1Sh3F: TScrollBox;
    sbQiyom1B2F: TScrollBox;
    sbQiyom1P2S: TScrollBox;
    sbQiyom1A4F: TScrollBox;
    sbQiyom1P4S: TScrollBox;
    sbQiyom1P4F: TScrollBox;
    sbQiyom2X4F: TScrollBox;
    sbQiyom2V3V: TScrollBox;
    sbQiyom2X2S: TScrollBox;
    sbQiyom2Sh2S: TScrollBox;
    sbQiyom2Sh3F: TScrollBox;
    sbQiyom2B2F: TScrollBox;
    sbQiyom2P2S: TScrollBox;
    sbQiyom2A4F: TScrollBox;
    sbQiyom2P4S: TScrollBox;
    sbQiyom2P4F: TScrollBox;
    sbQiyom3A4F: TScrollBox;
    sbQiyom3X4F: TScrollBox;
    sbQiyom3V3V: TScrollBox;
    sbQiyom3Sh3F: TScrollBox;
    sbQiyom3P4S: TScrollBox;
    sbQiyom3P4F: TScrollBox;
    sbQiyom4A4F: TScrollBox;
    sbQiyom4X4F: TScrollBox;
    sbQiyom4P4S: TScrollBox;
    sbQiyom4P4F: TScrollBox;
    sbQovma1X4F: TScrollBox;
    sbQovma1V3V: TScrollBox;
    sbQovma1X2S: TScrollBox;
    sbQovma1Sh2S: TScrollBox;
    sbQovma1Sh3F: TScrollBox;
    sbQovma1B2F: TScrollBox;
    sbQovma1P2S: TScrollBox;
    sbQovma1A4F: TScrollBox;
    sbQovma1P4S: TScrollBox;
    sbQovma1P4F: TScrollBox;
    sbQovma2X4F: TScrollBox;
    sbQovma2V3V: TScrollBox;
    sbQovma2X2S: TScrollBox;
    sbQovma2Sh2S: TScrollBox;
    sbQovma2Sh3F: TScrollBox;
    sbQovma2B2F: TScrollBox;
    sbQovma2P2S: TScrollBox;
    sbQovma2A4F: TScrollBox;
    sbQovma2P4S: TScrollBox;
    sbQovma2P4F: TScrollBox;
    sbQovma3A4F: TScrollBox;
    sbQovma3X4F: TScrollBox;
    sbQovma3V3V: TScrollBox;
    sbQovma3Sh3F: TScrollBox;
    sbQovma3P4S: TScrollBox;
    sbQovma3P4F: TScrollBox;
    sbQovma4A4F: TScrollBox;
    sbQovma4X4F: TScrollBox;
    sbQovma4P4S: TScrollBox;
    sbQovma4P4F: TScrollBox;
    sbRuku1X4F: TScrollBox;
    sbRuku1V3V: TScrollBox;
    sbRuku1X2S: TScrollBox;
    sbRuku1Sh2S: TScrollBox;
    sbRuku1Sh3F: TScrollBox;
    sbRuku1B2F: TScrollBox;
    sbRuku1P2S: TScrollBox;
    sbRuku1A4F: TScrollBox;
    sbRuku1P4S: TScrollBox;
    sbRuku1P4F: TScrollBox;
    sbRuku2X4F: TScrollBox;
    sbRuku2V3V: TScrollBox;
    sbRuku2X2S: TScrollBox;
    sbRuku2Sh2S: TScrollBox;
    sbRuku2Sh3F: TScrollBox;
    sbRuku2B2F: TScrollBox;
    sbRuku2P2S: TScrollBox;
    sbRuku2A4F: TScrollBox;
    sbRuku2P4S: TScrollBox;
    sbRuku2P4F: TScrollBox;
    sbRuku3A4F: TScrollBox;
    sbRuku3X4F: TScrollBox;
    sbRuku3V3V: TScrollBox;
    sbRuku3Sh3F: TScrollBox;
    sbRuku3P4S: TScrollBox;
    sbRuku3P4F: TScrollBox;
    sbRuku4A4F: TScrollBox;
    sbRuku4X4F: TScrollBox;
    sbRuku4P4S: TScrollBox;
    sbRuku4P4F: TScrollBox;
    sbSajda1_1X4F: TScrollBox;
    sbSajda1_1V3V: TScrollBox;
    sbSajda1_1X2S: TScrollBox;
    sbSajda1_1Sh2S: TScrollBox;
    sbSajda1_1Sh3F: TScrollBox;
    sbSajda1_1B2F: TScrollBox;
    sbSajda1_1P2S: TScrollBox;
    sbSajda1_1A4F: TScrollBox;
    sbSajda1_1P4S: TScrollBox;
    sbSajda1_1P4F: TScrollBox;
    sbSajda1_2X4F: TScrollBox;
    sbSajda1_2V3V: TScrollBox;
    sbSajda1_2X2S: TScrollBox;
    sbSajda1_2Sh2S: TScrollBox;
    sbSajda1_2Sh3F: TScrollBox;
    sbSajda1_2B2F: TScrollBox;
    sbSajda1_2P2S: TScrollBox;
    sbSajda1_2A4F: TScrollBox;
    sbSajda1_2P4S: TScrollBox;
    sbSajda1_2P4F: TScrollBox;
    sbSajda2_1X4F: TScrollBox;
    sbSajda2_1V3V: TScrollBox;
    sbSajda2_1X2S: TScrollBox;
    sbSajda2_1Sh2S: TScrollBox;
    sbSajda2_1Sh3F: TScrollBox;
    sbSajda2_1B2F: TScrollBox;
    sbSajda2_1P2S: TScrollBox;
    sbSajda2_1A4F: TScrollBox;
    sbSajda2_1P4S: TScrollBox;
    sbSajda2_1P4F: TScrollBox;
    sbSajda2_2X4F: TScrollBox;
    sbSajda2_2V3V: TScrollBox;
    sbSajda2_2X2S: TScrollBox;
    sbSajda2_2Sh2S: TScrollBox;
    sbSajda2_2Sh3F: TScrollBox;
    sbSajda2_2P2S: TScrollBox;
    sbSajda2_2P4F: TScrollBox;
    sbSajda2_2A4F: TScrollBox;
    sbSajda3_1A4F: TScrollBox;
    sbSajda3_1X4F: TScrollBox;
    sbSajda3_1V3V: TScrollBox;
    sbSajda3_1Sh3F: TScrollBox;
    sbSajda3_1P4S: TScrollBox;
    sbSajda2_2B2F: TScrollBox;
    sbSajda2_2P4S: TScrollBox;
    sbSajda3_1P4F: TScrollBox;
    sbSajda3_2X4F: TScrollBox;
    sbSajda3_2V3V: TScrollBox;
    sbSajda3_2Sh3F: TScrollBox;
    sbSajda3_2P4F: TScrollBox;
    sbSajda3_2A4F: TScrollBox;
    sbSajda4_1X4F: TScrollBox;
    sbSajda4_1P4F: TScrollBox;
    sbSajda4_1A4F: TScrollBox;
    sbSajda4_2A4F: TScrollBox;
    sbSajda4_2X4F: TScrollBox;
    sbSajda4_2P4S: TScrollBox;
    sbSajda4_1P4S: TScrollBox;
    sbSajda3_2P4S: TScrollBox;
    sbSajda4_2P4F: TScrollBox;
    sbSalomA4F: TScrollBox;
    sbSalomB2F: TScrollBox;
    sbSalomP2S: TScrollBox;
    sbSalomP4F: TScrollBox;
    sbSalomP4S: TScrollBox;
    sbSalomX4F: TScrollBox;
    sbSalomV3V: TScrollBox;
    sbSalomX2S: TScrollBox;
    sbSalomSh2S: TScrollBox;
    sbSalomSh3F: TScrollBox;
    sbSalomB2S: TScrollBox;
    sbKirishB2S: TScrollBox;
    sbBomdod: TScrollBox;
    sbQiyom1B2S: TScrollBox;
    sbPeshin: TScrollBox;
    sbAsr: TScrollBox;
    sbQiyom2B2S: TScrollBox;
    sbQadaB2S: TScrollBox;
    sbQovma2B2S: TScrollBox;
    sbRuku2B2S: TScrollBox;
    sbSajda1_1B2S: TScrollBox;
    sbRuku1B2S: TScrollBox;
    sbQovma1B2S: TScrollBox;
    sbJalsa1B2S: TScrollBox;
    sbSajda1_2B2S: TScrollBox;
    sbSajda2_1B2S: TScrollBox;
    sbSajda2_2B2S: TScrollBox;
    cbSalomB2F: TScrollBox;
    cbSalomP2S: TScrollBox;
    cbSalomA4F: TScrollBox;
    cbSalomP4S: TScrollBox;
    cbSalomP4F: TScrollBox;
    sbShom: TScrollBox;
    sbXufton: TScrollBox;
    bAzonB2S: TSpeedButton;
    bPrevious: TSpeedButton;
    bNext: TSpeedButton;
    bImage: TSpeedButton;
    sBomdod: TSplitter;
    sPeshin: TSplitter;
    sAsr: TSplitter;
    sShom: TSplitter;
    sXufton: TSplitter;
    tsDuoX4F: TTabSheet;
    tsDuoV3V: TTabSheet;
    tsDuoSh2S: TTabSheet;
    tsDuoSh3F: TTabSheet;
    tsDuoP2S: TTabSheet;
    tsDuoP4F: TTabSheet;
    tsDuoA4F: TTabSheet;
    tsJalsa1X4F: TTabSheet;
    tsJalsa1V3V: TTabSheet;
    tsJalsa1X2S: TTabSheet;
    tsJalsa1Sh2S: TTabSheet;
    tsJalsa1Sh3F: TTabSheet;
    tsJalsa1P2S: TTabSheet;
    tsJalsa1P4F: TTabSheet;
    tsJalsa1A4F: TTabSheet;
    tsJalsa2X4F: TTabSheet;
    tsJalsa2V3V: TTabSheet;
    tsJalsa2X2S: TTabSheet;
    tsJalsa2Sh2S: TTabSheet;
    tsJalsa2Sh3F: TTabSheet;
    tsJalsa2P2S: TTabSheet;
    tsJalsa2P4F: TTabSheet;
    tsJalsa2A4F: TTabSheet;
    tsJalsa3X4F: TTabSheet;
    tsJalsa3V3V: TTabSheet;
    tsJalsa3Sh3F: TTabSheet;
    tsJalsa3P4F: TTabSheet;
    tsJalsa3A4F: TTabSheet;
    tsJalsa4X4F: TTabSheet;
    tsJalsa4P4F: TTabSheet;
    tsJalsa4A4F: TTabSheet;
    tsKirishX4F: TTabSheet;
    tsKirishV3V: TTabSheet;
    tsKirishX2S: TTabSheet;
    tsKirishSh2S: TTabSheet;
    tsKirishSh3F: TTabSheet;
    tsKirishP2S: TTabSheet;
    tsKirishP4F: TTabSheet;
    tsKirishA4F: TTabSheet;
    tsQada1X4F: TTabSheet;
    tsQada1V3V: TTabSheet;
    tsQada1Sh3F: TTabSheet;
    tsQada1P4F: TTabSheet;
    tsQada1A4F: TTabSheet;
    tsQada2A4F: TTabSheet;
    tsQada2X4F: TTabSheet;
    tsQada2V3V: TTabSheet;
    tsQada2Sh3F: TTabSheet;
    tsQada2P4S: TTabSheet;
    tsQada2P4F: TTabSheet;
    tsQadaX2S: TTabSheet;
    tsQadaP2S: TTabSheet;
    tsQadaSh2S: TTabSheet;
    tsQiyom1X4F: TTabSheet;
    tsQiyom1V3V: TTabSheet;
    tsQiyom1X2S: TTabSheet;
    tsQiyom1Sh2S: TTabSheet;
    tsQiyom1Sh3F: TTabSheet;
    tsQiyom1P2S: TTabSheet;
    tsQiyom1P4F: TTabSheet;
    tsQiyom1A4F: TTabSheet;
    tsQiyom2X4F: TTabSheet;
    tsQiyom2V3V: TTabSheet;
    tsQiyom2X2S: TTabSheet;
    tsQiyom2Sh2S: TTabSheet;
    tsQiyom2Sh3F: TTabSheet;
    tsQiyom2P2S: TTabSheet;
    tsQiyom2P4F: TTabSheet;
    tsQiyom2A4F: TTabSheet;
    tsQiyom3X4F: TTabSheet;
    tsQiyom3V3V: TTabSheet;
    tsQiyom3Sh3F: TTabSheet;
    tsQiyom3P4F: TTabSheet;
    tsQiyom3A4F: TTabSheet;
    tsQiyom4X4F: TTabSheet;
    tsQiyom4P4F: TTabSheet;
    tsQiyom4A4F: TTabSheet;
    tsQovma1X4F: TTabSheet;
    tsQovma1V3V: TTabSheet;
    tsQovma1X2S: TTabSheet;
    tsQovma1Sh2S: TTabSheet;
    tsQovma1Sh3F: TTabSheet;
    tsQovma1P2S: TTabSheet;
    tsQovma1P4F: TTabSheet;
    tsQovma1A4F: TTabSheet;
    tsQovma2X4F: TTabSheet;
    tsQovma2V3V: TTabSheet;
    tsQovma2X2S: TTabSheet;
    tsQovma2Sh2S: TTabSheet;
    tsQovma2Sh3F: TTabSheet;
    tsQovma2P2S: TTabSheet;
    tsQovma2P4F: TTabSheet;
    tsQovma2A4F: TTabSheet;
    tsQovma3X4F: TTabSheet;
    tsQovma3V3V: TTabSheet;
    tsQovma3Sh3F: TTabSheet;
    tsQovma3P4F: TTabSheet;
    tsQovma3A4F: TTabSheet;
    tsQovma4X4F: TTabSheet;
    tsQovma4P4F: TTabSheet;
    tsQovma4A4F: TTabSheet;
    tsRuku1X4F: TTabSheet;
    tsRuku1V3V: TTabSheet;
    tsRuku1X2S: TTabSheet;
    tsRuku1Sh2S: TTabSheet;
    tsRuku1Sh3F: TTabSheet;
    tsRuku1P2S: TTabSheet;
    tsRuku1P4F: TTabSheet;
    tsRuku1A4F: TTabSheet;
    tsRuku2X4F: TTabSheet;
    tsRuku2V3V: TTabSheet;
    tsRuku2X2S: TTabSheet;
    tsRuku2Sh2S: TTabSheet;
    tsRuku2Sh3F: TTabSheet;
    tsRuku2P2S: TTabSheet;
    tsRuku2P4F: TTabSheet;
    tsRuku2A4F: TTabSheet;
    tsRuku3X4F: TTabSheet;
    tsRuku3V3V: TTabSheet;
    tsRuku3Sh3F: TTabSheet;
    tsRuku3P4F: TTabSheet;
    tsRuku3A4F: TTabSheet;
    tsRuku4X4F: TTabSheet;
    tsRuku4P4F: TTabSheet;
    tsRuku4A4F: TTabSheet;
    tsSajda1_1X4F: TTabSheet;
    tsSajda1_1V3V: TTabSheet;
    tsSajda1_1X2S: TTabSheet;
    tsSajda1_1Sh2S: TTabSheet;
    tsSajda1_1Sh3F: TTabSheet;
    tsSajda1_1P2S: TTabSheet;
    tsSajda1_1P4F: TTabSheet;
    tsSajda1_1A4F: TTabSheet;
    tsSajda1_2X4F: TTabSheet;
    tsSajda1_2V3V: TTabSheet;
    tsSajda1_2X2S: TTabSheet;
    tsSajda1_2Sh2S: TTabSheet;
    tsSajda1_2Sh3F: TTabSheet;
    tsSajda1_2P2S: TTabSheet;
    tsSajda1_2P4F: TTabSheet;
    tsSajda1_2A4F: TTabSheet;
    tsSajda2_1X4F: TTabSheet;
    tsSajda2_1V3V: TTabSheet;
    tsSajda2_1X2S: TTabSheet;
    tsSajda2_1Sh2S: TTabSheet;
    tsSajda2_1Sh3F: TTabSheet;
    tsSajda2_1P2S: TTabSheet;
    tsSajda2_1P4F: TTabSheet;
    tsSajda2_1A4F: TTabSheet;
    tsSajda2_2X4F: TTabSheet;
    tsSajda2_2V3V: TTabSheet;
    tsSajda2_2X2S: TTabSheet;
    tsSajda2_2Sh2S: TTabSheet;
    tsSajda2_2Sh3F: TTabSheet;
    tsSajda2_2P2S: TTabSheet;
    tsSajda2_2P4F: TTabSheet;
    tsSajda2_2A4F: TTabSheet;
    tsSajda3_1X4F: TTabSheet;
    tsSajda3_1V3V: TTabSheet;
    tsSajda3_1Sh3F: TTabSheet;
    tsSajda3_1P4F: TTabSheet;
    tsSajda3_1A4F: TTabSheet;
    tsSajda3_2X4F: TTabSheet;
    tsSajda3_2V3V: TTabSheet;
    tsSajda3_2Sh3F: TTabSheet;
    tsSajda3_2P4F: TTabSheet;
    tsSajda3_2A4F: TTabSheet;
    tsSajda4_1X4F: TTabSheet;
    tsSajda4_1P4F: TTabSheet;
    tsSajda4_1A4F: TTabSheet;
    tsSajda4_2A4F: TTabSheet;
    tsSajda4_2X4F: TTabSheet;
    tsSajda4_2P4S: TTabSheet;
    tsJalsa4P4S: TTabSheet;
    tsSajda4_1P4S: TTabSheet;
    tsQovma4P4S: TTabSheet;
    tsRuku4P4S: TTabSheet;
    tsQiyom4P4S: TTabSheet;
    tsSajda3_2P4S: TTabSheet;
    tsJalsa3P4S: TTabSheet;
    tsSajda3_1P4S: TTabSheet;
    tsQovma3P4S: TTabSheet;
    tsRuku3P4S: TTabSheet;
    tsQiyom3P4S: TTabSheet;
    tsDuoB2F: TTabSheet;
    tsJalsa1B2F: TTabSheet;
    tsJalsa1P4S: TTabSheet;
    tsJalsa2B2F: TTabSheet;
    tsJalsa2P4S: TTabSheet;
    tsKirishB2F: TTabSheet;
    tsKirishP4S: TTabSheet;
    tsQadaB2F: TTabSheet;
    tsQada1P4S: TTabSheet;
    tsQiyom1B2F: TTabSheet;
    tsQiyom1P4S: TTabSheet;
    tsQiyom2B2F: TTabSheet;
    tsQiyom2P4S: TTabSheet;
    tsQovma1B2F: TTabSheet;
    tsQovma1P4S: TTabSheet;
    tsQovma2B2F: TTabSheet;
    tsQovma2P4S: TTabSheet;
    tsRuku1B2F: TTabSheet;
    tsRuku1P4S: TTabSheet;
    tsRuku2B2F: TTabSheet;
    tsRuku2P4S: TTabSheet;
    tsSajda1_1B2F: TTabSheet;
    tsSajda1_1P4S: TTabSheet;
    tsSajda1_2B2F: TTabSheet;
    tsSajda1_2P4S: TTabSheet;
    tsSajda2_1B2F: TTabSheet;
    tsSajda2_1P4S: TTabSheet;
    tsSajda2_2B2F: TTabSheet;
    tsSajda2_2P4S: TTabSheet;
    tsSajda4_2P4F: TTabSheet;
    tsSalomX4F: TTabSheet;
    tsSalomV3V: TTabSheet;
    tsSalomX2S: TTabSheet;
    tsSalomSh2S: TTabSheet;
    tsSalomSh3F: TTabSheet;
    tsSalomB2S: TTabSheet;
    tsQadaB2S: TTabSheet;
    tsSajda2_2B2S: TTabSheet;
    tsJalsa2B2S: TTabSheet;
    tsSajda2_1B2S: TTabSheet;
    tsQovma2B2S: TTabSheet;
    tsRuku2B2S: TTabSheet;
    tsQiyom2B2S: TTabSheet;
    tsSajda1_2B2S: TTabSheet;
    tsJalsa1B2S: TTabSheet;
    tsSajda1_1B2S: TTabSheet;
    tsQovma1B2S: TTabSheet;
    tsRuku1B2S: TTabSheet;
    tsQiyom1B2S: TTabSheet;
    tsKirishB2S: TTabSheet;
    tsSalomB2F: TTabSheet;
    tsSalomP2S: TTabSheet;
    tsSalomA4F: TTabSheet;
    tsSalomP4S: TTabSheet;
    tsSalomP4F: TTabSheet;
    tsX4F: TTabSheet;
    tsX2S: TTabSheet;
    tsV3V: TTabSheet;
    tsSh3F: TTabSheet;
    tsSh2S: TTabSheet;
    tsA4F: TTabSheet;
    tsP4S: TTabSheet;
    tsP4F: TTabSheet;
    tsP2S: TTabSheet;
    tsB2S: TTabSheet;
    tsB2F: TTabSheet;
    tsBomdod: TTabSheet;
    tsPeshin: TTabSheet;
    tsAsr: TTabSheet;
    tsShom: TTabSheet;
    tsXufton: TTabSheet;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miAboutClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure miImageClick(Sender: TObject);
    procedure miNextClick(Sender: TObject);
    procedure miPreviousClick(Sender: TObject);
    procedure miSettingsClick(Sender: TObject);
    procedure ProcAla(Sender: TObject);
    procedure ProcAziym(Sender: TObject);
    procedure ProcAzonBomdod(Sender: TObject);
    procedure ProcAzonDuo(Sender: TObject);
    procedure ProcAzon(Sender: TObject);
    procedure ProcBasmala(Sender: TObject);
    procedure ProcDuoF(Sender: TObject);
    procedure ProcDuo(Sender: TObject);
    procedure ProcFalaq(Sender: TObject);
    procedure ProcFotiha(Sender: TObject);
    procedure ProcHamd(Sender: TObject);
    procedure ProcImageDuo;
    procedure ProcImageJalsa;
    procedure ProcImageKirish;
    procedure ProcImageQiyom;
    procedure ProcImageQovma;
    procedure ProcImageRuku;
    procedure ProcImageSajda;
    procedure ProcImageSalom;
    procedure ProcImagesLoad(Sender: TObject);
    procedure ProcIqomat(Sender: TObject);
    procedure ProcIxlos(Sender: TObject);
    procedure ProcKavsar(Sender: TObject);
    procedure ProcKursi(Sender: TObject);
    procedure ProcNas(Sender: TObject);
    procedure ProcQunut(Sender: TObject);
    procedure ProcRobbana(Sender: TObject);
    procedure ProcSalavot(Sender: TObject);
    procedure ProcSalom(Sender: TObject);
    procedure ProcSano(Sender: TObject);
    procedure ProcTaavvuz(Sender: TObject);
    procedure ProcTakbir(Sender: TObject);
    procedure ProcTasbehot(Sender: TObject);
    procedure ProcTashahhud(Sender: TObject);
    procedure ProcTasme(Sender: TObject);

  private

  public

  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

{ TFormMain }

procedure TFormMain.FormCreate(Sender: TObject);
begin
  IniPropStorage.IniFileName:=GetAppConfigDir(false)+'abid.ini';
end;

procedure TFormMain.ProcRobbana(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsRobbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSalavot(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsSalavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSalom(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsSalom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTasme(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsTasme;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSano(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsSano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTaavvuz(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsTaavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTakbir(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsTakbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTashahhud(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsTashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  FormMain.ProcImagesLoad(self);
  FormSettings.cbLanguageChange(self);
end;

procedure TFormMain.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.miImageClick(Sender: TObject);
begin
   if pImage.Visible=true then
    begin
      pImage.Hide;
      miImage.Caption:=ImageShow;
      bImage.Caption:=ImageShow;
    end
  else
    begin
      pImage.Show;
      miImage.Caption:=ImageHide;
      bImage.Caption:=ImageHide;
    end
end;

procedure TFormMain.miNextClick(Sender: TObject);
begin
  case pcMain.ActivePageIndex of
  0: case pcBomdod.ActivePageIndex of
     0: case pcB2S.ActivePageIndex of
        0: pcB2S.ActivePageIndex:=1;
        1: pcB2S.ActivePageIndex:=2;
        2: pcB2S.ActivePageIndex:=3;
        3: pcB2S.ActivePageIndex:=4;
        4: pcB2S.ActivePageIndex:=5;
        5: pcB2S.ActivePageIndex:=6;
        6: pcB2S.ActivePageIndex:=7;
        7: pcB2S.ActivePageIndex:=8;
        8: pcB2S.ActivePageIndex:=9;
        9: pcB2S.ActivePageIndex:=10;
        10: pcB2S.ActivePageIndex:=11;
        11: pcB2S.ActivePageIndex:=12;
        12: pcB2S.ActivePageIndex:=13;
        13: pcB2S.ActivePageIndex:=14;
        end;
     1: case pcB2F.ActivePageIndex of
        0: pcB2F.ActivePageIndex:=1;
        1: pcB2F.ActivePageIndex:=2;
        2: pcB2F.ActivePageIndex:=3;
        3: pcB2F.ActivePageIndex:=4;
        4: pcB2F.ActivePageIndex:=5;
        5: pcB2F.ActivePageIndex:=6;
        6: pcB2F.ActivePageIndex:=7;
        7: pcB2F.ActivePageIndex:=8;
        8: pcB2F.ActivePageIndex:=9;
        9: pcB2F.ActivePageIndex:=10;
        10: pcB2F.ActivePageIndex:=11;
        11: pcB2F.ActivePageIndex:=12;
        12: pcB2F.ActivePageIndex:=13;
        13: pcB2F.ActivePageIndex:=14;
        14: pcB2F.ActivePageIndex:=15;
        end;
     end;
  1: case pcPeshin.ActivePageIndex of
     0: case pcP4S.ActivePageIndex of
        0: pcP4S.ActivePageIndex:=1;
        1: pcP4S.ActivePageIndex:=2;
        2: pcP4S.ActivePageIndex:=3;
        3: pcP4S.ActivePageIndex:=4;
        4: pcP4S.ActivePageIndex:=5;
        5: pcP4S.ActivePageIndex:=6;
        6: pcP4S.ActivePageIndex:=7;
        7: pcP4S.ActivePageIndex:=8;
        8: pcP4S.ActivePageIndex:=9;
        9: pcP4S.ActivePageIndex:=10;
        10: pcP4S.ActivePageIndex:=11;
        11: pcP4S.ActivePageIndex:=12;
        12: pcP4S.ActivePageIndex:=13;
        13: pcP4S.ActivePageIndex:=14;
        14: pcP4S.ActivePageIndex:=15;
        15: pcP4S.ActivePageIndex:=16;
        16: pcP4S.ActivePageIndex:=17;
        17: pcP4S.ActivePageIndex:=18;
        18: pcP4S.ActivePageIndex:=19;
        19: pcP4S.ActivePageIndex:=20;
        20: pcP4S.ActivePageIndex:=21;
        21: pcP4S.ActivePageIndex:=22;
        22: pcP4S.ActivePageIndex:=23;
        23: pcP4S.ActivePageIndex:=24;
        24: pcP4S.ActivePageIndex:=25;
        25: pcP4S.ActivePageIndex:=26;
        26: pcP4S.ActivePageIndex:=27;
        end;
     1: case pcP4F.ActivePageIndex of
        0: pcP4F.ActivePageIndex:=1;
        1: pcP4F.ActivePageIndex:=2;
        2: pcP4F.ActivePageIndex:=3;
        3: pcP4F.ActivePageIndex:=4;
        4: pcP4F.ActivePageIndex:=5;
        5: pcP4F.ActivePageIndex:=6;
        6: pcP4F.ActivePageIndex:=7;
        7: pcP4F.ActivePageIndex:=8;
        8: pcP4F.ActivePageIndex:=9;
        9: pcP4F.ActivePageIndex:=10;
        10: pcP4F.ActivePageIndex:=11;
        11: pcP4F.ActivePageIndex:=12;
        12: pcP4F.ActivePageIndex:=13;
        13: pcP4F.ActivePageIndex:=14;
        14: pcP4F.ActivePageIndex:=15;
        15: pcP4F.ActivePageIndex:=16;
        16: pcP4F.ActivePageIndex:=17;
        17: pcP4F.ActivePageIndex:=18;
        18: pcP4F.ActivePageIndex:=19;
        19: pcP4F.ActivePageIndex:=20;
        20: pcP4F.ActivePageIndex:=21;
        21: pcP4F.ActivePageIndex:=22;
        22: pcP4F.ActivePageIndex:=23;
        23: pcP4F.ActivePageIndex:=24;
        24: pcP4F.ActivePageIndex:=25;
        25: pcP4F.ActivePageIndex:=26;
        26: pcP4F.ActivePageIndex:=27;
        27: pcP4F.ActivePageIndex:=28;
        end;
     2: case pcP2S.ActivePageIndex of
        0: pcP2S.ActivePageIndex:=1;
        1: pcP2S.ActivePageIndex:=2;
        2: pcP2S.ActivePageIndex:=3;
        3: pcP2S.ActivePageIndex:=4;
        4: pcP2S.ActivePageIndex:=5;
        5: pcP2S.ActivePageIndex:=6;
        6: pcP2S.ActivePageIndex:=7;
        7: pcP2S.ActivePageIndex:=8;
        8: pcP2S.ActivePageIndex:=9;
        9: pcP2S.ActivePageIndex:=10;
        10: pcP2S.ActivePageIndex:=11;
        11: pcP2S.ActivePageIndex:=12;
        12: pcP2S.ActivePageIndex:=13;
        13: pcP2S.ActivePageIndex:=14;
        14: pcP2S.ActivePageIndex:=15;
        end;
     end;
  2: case pcA4F.ActivePageIndex of
        0: pcA4F.ActivePageIndex:=1;
        1: pcA4F.ActivePageIndex:=2;
        2: pcA4F.ActivePageIndex:=3;
        3: pcA4F.ActivePageIndex:=4;
        4: pcA4F.ActivePageIndex:=5;
        5: pcA4F.ActivePageIndex:=6;
        6: pcA4F.ActivePageIndex:=7;
        7: pcA4F.ActivePageIndex:=8;
        8: pcA4F.ActivePageIndex:=9;
        9: pcA4F.ActivePageIndex:=10;
        10: pcA4F.ActivePageIndex:=11;
        11: pcA4F.ActivePageIndex:=12;
        12: pcA4F.ActivePageIndex:=13;
        13: pcA4F.ActivePageIndex:=14;
        14: pcA4F.ActivePageIndex:=15;
        15: pcA4F.ActivePageIndex:=16;
        16: pcA4F.ActivePageIndex:=17;
        17: pcA4F.ActivePageIndex:=18;
        18: pcA4F.ActivePageIndex:=19;
        19: pcA4F.ActivePageIndex:=20;
        20: pcA4F.ActivePageIndex:=21;
        21: pcA4F.ActivePageIndex:=22;
        22: pcA4F.ActivePageIndex:=23;
        23: pcA4F.ActivePageIndex:=24;
        24: pcA4F.ActivePageIndex:=25;
        25: pcA4F.ActivePageIndex:=26;
        26: pcA4F.ActivePageIndex:=27;
        27: pcA4F.ActivePageIndex:=28;
        end;
  3: case pcShom.ActivePageIndex of
     0: case pcSh3F.ActivePageIndex of
        0: pcSh3F.ActivePageIndex:=1;
        1: pcSh3F.ActivePageIndex:=2;
        2: pcSh3F.ActivePageIndex:=3;
        3: pcSh3F.ActivePageIndex:=4;
        4: pcSh3F.ActivePageIndex:=5;
        5: pcSh3F.ActivePageIndex:=6;
        6: pcSh3F.ActivePageIndex:=7;
        7: pcSh3F.ActivePageIndex:=8;
        8: pcSh3F.ActivePageIndex:=9;
        9: pcSh3F.ActivePageIndex:=10;
        10: pcSh3F.ActivePageIndex:=11;
        11: pcSh3F.ActivePageIndex:=12;
        12: pcSh3F.ActivePageIndex:=13;
        13: pcSh3F.ActivePageIndex:=14;
        14: pcSh3F.ActivePageIndex:=15;
        15: pcSh3F.ActivePageIndex:=16;
        16: pcSh3F.ActivePageIndex:=17;
        17: pcSh3F.ActivePageIndex:=18;
        18: pcSh3F.ActivePageIndex:=19;
        19: pcSh3F.ActivePageIndex:=20;
        20: pcSh3F.ActivePageIndex:=21;
        21: pcSh3F.ActivePageIndex:=22;
        end;
     1: case pcSh2S.ActivePageIndex of
        0: pcSh2S.ActivePageIndex:=1;
        1: pcSh2S.ActivePageIndex:=2;
        2: pcSh2S.ActivePageIndex:=3;
        3: pcSh2S.ActivePageIndex:=4;
        4: pcSh2S.ActivePageIndex:=5;
        5: pcSh2S.ActivePageIndex:=6;
        6: pcSh2S.ActivePageIndex:=7;
        7: pcSh2S.ActivePageIndex:=8;
        8: pcSh2S.ActivePageIndex:=9;
        9: pcSh2S.ActivePageIndex:=10;
        10: pcSh2S.ActivePageIndex:=11;
        11: pcSh2S.ActivePageIndex:=12;
        12: pcSh2S.ActivePageIndex:=13;
        13: pcSh2S.ActivePageIndex:=14;
        14: pcSh2S.ActivePageIndex:=15;
        end;
     end;
  4: case pcXufton.ActivePageIndex of
     0: case pcX4F.ActivePageIndex of
        0: pcX4F.ActivePageIndex:=1;
        1: pcX4F.ActivePageIndex:=2;
        2: pcX4F.ActivePageIndex:=3;
        3: pcX4F.ActivePageIndex:=4;
        4: pcX4F.ActivePageIndex:=5;
        5: pcX4F.ActivePageIndex:=6;
        6: pcX4F.ActivePageIndex:=7;
        7: pcX4F.ActivePageIndex:=8;
        8: pcX4F.ActivePageIndex:=9;
        9: pcX4F.ActivePageIndex:=10;
        10: pcX4F.ActivePageIndex:=11;
        11: pcX4F.ActivePageIndex:=12;
        12: pcX4F.ActivePageIndex:=13;
        13: pcX4F.ActivePageIndex:=14;
        14: pcX4F.ActivePageIndex:=15;
        15: pcX4F.ActivePageIndex:=16;
        16: pcX4F.ActivePageIndex:=17;
        17: pcX4F.ActivePageIndex:=18;
        18: pcX4F.ActivePageIndex:=19;
        19: pcX4F.ActivePageIndex:=20;
        20: pcX4F.ActivePageIndex:=21;
        21: pcX4F.ActivePageIndex:=22;
        22: pcX4F.ActivePageIndex:=23;
        23: pcX4F.ActivePageIndex:=24;
        24: pcX4F.ActivePageIndex:=25;
        25: pcX4F.ActivePageIndex:=26;
        26: pcX4F.ActivePageIndex:=27;
        27: pcX4F.ActivePageIndex:=28;
        end;
     1: case pcX2S.ActivePageIndex of
        0: pcX2S.ActivePageIndex:=1;
        1: pcX2S.ActivePageIndex:=2;
        2: pcX2S.ActivePageIndex:=3;
        3: pcX2S.ActivePageIndex:=4;
        4: pcX2S.ActivePageIndex:=5;
        5: pcX2S.ActivePageIndex:=6;
        6: pcX2S.ActivePageIndex:=7;
        7: pcX2S.ActivePageIndex:=8;
        8: pcX2S.ActivePageIndex:=9;
        9: pcX2S.ActivePageIndex:=10;
        10: pcX2S.ActivePageIndex:=11;
        11: pcX2S.ActivePageIndex:=12;
        12: pcX2S.ActivePageIndex:=13;
        13: pcX2S.ActivePageIndex:=14;
        end;
     2: case pcV3V.ActivePageIndex of
        0: pcV3V.ActivePageIndex:=1;
        1: pcV3V.ActivePageIndex:=2;
        2: pcV3V.ActivePageIndex:=3;
        3: pcV3V.ActivePageIndex:=4;
        4: pcV3V.ActivePageIndex:=5;
        5: pcV3V.ActivePageIndex:=6;
        6: pcV3V.ActivePageIndex:=7;
        7: pcV3V.ActivePageIndex:=8;
        8: pcV3V.ActivePageIndex:=9;
        9: pcV3V.ActivePageIndex:=10;
        10: pcV3V.ActivePageIndex:=11;
        11: pcV3V.ActivePageIndex:=12;
        12: pcV3V.ActivePageIndex:=13;
        13: pcV3V.ActivePageIndex:=14;
        14: pcV3V.ActivePageIndex:=15;
        15: pcV3V.ActivePageIndex:=16;
        16: pcV3V.ActivePageIndex:=17;
        17: pcV3V.ActivePageIndex:=18;
        18: pcV3V.ActivePageIndex:=19;
        19: pcV3V.ActivePageIndex:=20;
        20: pcV3V.ActivePageIndex:=21;
        21: pcV3V.ActivePageIndex:=22;
        end;
     end;
  end;
  ProcImagesLoad(self);
end;

procedure TFormMain.miPreviousClick(Sender: TObject);
begin
   case pcMain.ActivePageIndex of
  0: case pcBomdod.ActivePageIndex of
     0: case pcB2S.ActivePageIndex of
        1: pcB2S.ActivePageIndex:=0;
        2: pcB2S.ActivePageIndex:=1;
        3: pcB2S.ActivePageIndex:=2;
        4: pcB2S.ActivePageIndex:=3;
        5: pcB2S.ActivePageIndex:=4;
        6: pcB2S.ActivePageIndex:=5;
        7: pcB2S.ActivePageIndex:=6;
        8: pcB2S.ActivePageIndex:=7;
        9: pcB2S.ActivePageIndex:=8;
        10: pcB2S.ActivePageIndex:=9;
        11: pcB2S.ActivePageIndex:=10;
        12: pcB2S.ActivePageIndex:=11;
        13: pcB2S.ActivePageIndex:=12;
        14: pcB2S.ActivePageIndex:=13;
        end;
     1: case pcB2F.ActivePageIndex of
        1: pcB2F.ActivePageIndex:=0;
        2: pcB2F.ActivePageIndex:=1;
        3: pcB2F.ActivePageIndex:=2;
        4: pcB2F.ActivePageIndex:=3;
        5: pcB2F.ActivePageIndex:=4;
        6: pcB2F.ActivePageIndex:=5;
        7: pcB2F.ActivePageIndex:=6;
        8: pcB2F.ActivePageIndex:=7;
        9: pcB2F.ActivePageIndex:=8;
        10: pcB2F.ActivePageIndex:=9;
        11: pcB2F.ActivePageIndex:=10;
        12: pcB2F.ActivePageIndex:=11;
        13: pcB2F.ActivePageIndex:=12;
        14: pcB2F.ActivePageIndex:=13;
        15: pcB2F.ActivePageIndex:=14;
        end;
     end;
  1: case pcPeshin.ActivePageIndex of
     0: case pcP4S.ActivePageIndex of
        1: pcP4S.ActivePageIndex:=0;
        2: pcP4S.ActivePageIndex:=1;
        3: pcP4S.ActivePageIndex:=2;
        4: pcP4S.ActivePageIndex:=3;
        5: pcP4S.ActivePageIndex:=4;
        6: pcP4S.ActivePageIndex:=5;
        7: pcP4S.ActivePageIndex:=6;
        8: pcP4S.ActivePageIndex:=7;
        9: pcP4S.ActivePageIndex:=8;
        10: pcP4S.ActivePageIndex:=9;
        11: pcP4S.ActivePageIndex:=10;
        12: pcP4S.ActivePageIndex:=11;
        13: pcP4S.ActivePageIndex:=12;
        14: pcP4S.ActivePageIndex:=13;
        15: pcP4S.ActivePageIndex:=14;
        16: pcP4S.ActivePageIndex:=15;
        17: pcP4S.ActivePageIndex:=16;
        18: pcP4S.ActivePageIndex:=17;
        19: pcP4S.ActivePageIndex:=18;
        20: pcP4S.ActivePageIndex:=19;
        21: pcP4S.ActivePageIndex:=20;
        22: pcP4S.ActivePageIndex:=21;
        23: pcP4S.ActivePageIndex:=22;
        24: pcP4S.ActivePageIndex:=23;
        25: pcP4S.ActivePageIndex:=24;
        26: pcP4S.ActivePageIndex:=25;
        27: pcP4S.ActivePageIndex:=26;
        end;
     1: case pcP4F.ActivePageIndex of
        1: pcP4F.ActivePageIndex:=0;
        2: pcP4F.ActivePageIndex:=1;
        3: pcP4F.ActivePageIndex:=2;
        4: pcP4F.ActivePageIndex:=3;
        5: pcP4F.ActivePageIndex:=4;
        6: pcP4F.ActivePageIndex:=5;
        7: pcP4F.ActivePageIndex:=6;
        8: pcP4F.ActivePageIndex:=7;
        9: pcP4F.ActivePageIndex:=8;
        10: pcP4F.ActivePageIndex:=9;
        11: pcP4F.ActivePageIndex:=10;
        12: pcP4F.ActivePageIndex:=11;
        13: pcP4F.ActivePageIndex:=12;
        14: pcP4F.ActivePageIndex:=13;
        15: pcP4F.ActivePageIndex:=14;
        16: pcP4F.ActivePageIndex:=15;
        17: pcP4F.ActivePageIndex:=16;
        18: pcP4F.ActivePageIndex:=17;
        19: pcP4F.ActivePageIndex:=18;
        20: pcP4F.ActivePageIndex:=19;
        21: pcP4F.ActivePageIndex:=20;
        22: pcP4F.ActivePageIndex:=21;
        23: pcP4F.ActivePageIndex:=22;
        24: pcP4F.ActivePageIndex:=23;
        25: pcP4F.ActivePageIndex:=24;
        26: pcP4F.ActivePageIndex:=25;
        27: pcP4F.ActivePageIndex:=26;
        28: pcP4F.ActivePageIndex:=27;
        end;
     2: case pcP2S.ActivePageIndex of
        1: pcP2S.ActivePageIndex:=0;
        2: pcP2S.ActivePageIndex:=1;
        3: pcP2S.ActivePageIndex:=2;
        4: pcP2S.ActivePageIndex:=3;
        5: pcP2S.ActivePageIndex:=4;
        6: pcP2S.ActivePageIndex:=5;
        7: pcP2S.ActivePageIndex:=6;
        8: pcP2S.ActivePageIndex:=7;
        9: pcP2S.ActivePageIndex:=8;
        10: pcP2S.ActivePageIndex:=9;
        11: pcP2S.ActivePageIndex:=10;
        12: pcP2S.ActivePageIndex:=11;
        13: pcP2S.ActivePageIndex:=12;
        14: pcP2S.ActivePageIndex:=13;
        15: pcP2S.ActivePageIndex:=14;
        end;
     end;
  2: case pcA4F.ActivePageIndex of
        1: pcA4F.ActivePageIndex:=0;
        2: pcA4F.ActivePageIndex:=1;
        3: pcA4F.ActivePageIndex:=2;
        4: pcA4F.ActivePageIndex:=3;
        5: pcA4F.ActivePageIndex:=4;
        6: pcA4F.ActivePageIndex:=5;
        7: pcA4F.ActivePageIndex:=6;
        8: pcA4F.ActivePageIndex:=7;
        9: pcA4F.ActivePageIndex:=8;
        10: pcA4F.ActivePageIndex:=9;
        11: pcA4F.ActivePageIndex:=10;
        12: pcA4F.ActivePageIndex:=11;
        13: pcA4F.ActivePageIndex:=12;
        14: pcA4F.ActivePageIndex:=13;
        15: pcA4F.ActivePageIndex:=14;
        16: pcA4F.ActivePageIndex:=15;
        17: pcA4F.ActivePageIndex:=16;
        18: pcA4F.ActivePageIndex:=17;
        19: pcA4F.ActivePageIndex:=18;
        20: pcA4F.ActivePageIndex:=19;
        21: pcA4F.ActivePageIndex:=20;
        22: pcA4F.ActivePageIndex:=21;
        23: pcA4F.ActivePageIndex:=22;
        24: pcA4F.ActivePageIndex:=23;
        25: pcA4F.ActivePageIndex:=24;
        26: pcA4F.ActivePageIndex:=25;
        27: pcA4F.ActivePageIndex:=26;
        28: pcA4F.ActivePageIndex:=27;
        end;
  3: case pcShom.ActivePageIndex of
     0: case pcSh3F.ActivePageIndex of
        1: pcSh3F.ActivePageIndex:=0;
        2: pcSh3F.ActivePageIndex:=1;
        3: pcSh3F.ActivePageIndex:=2;
        4: pcSh3F.ActivePageIndex:=3;
        5: pcSh3F.ActivePageIndex:=4;
        6: pcSh3F.ActivePageIndex:=5;
        7: pcSh3F.ActivePageIndex:=6;
        8: pcSh3F.ActivePageIndex:=7;
        9: pcSh3F.ActivePageIndex:=8;
        10: pcSh3F.ActivePageIndex:=9;
        11: pcSh3F.ActivePageIndex:=10;
        12: pcSh3F.ActivePageIndex:=11;
        13: pcSh3F.ActivePageIndex:=12;
        14: pcSh3F.ActivePageIndex:=13;
        15: pcSh3F.ActivePageIndex:=14;
        16: pcSh3F.ActivePageIndex:=15;
        17: pcSh3F.ActivePageIndex:=16;
        18: pcSh3F.ActivePageIndex:=17;
        19: pcSh3F.ActivePageIndex:=18;
        20: pcSh3F.ActivePageIndex:=19;
        21: pcSh3F.ActivePageIndex:=20;
        22: pcSh3F.ActivePageIndex:=21;
        end;
     1: case pcSh2S.ActivePageIndex of
        1: pcSh2S.ActivePageIndex:=0;
        2: pcSh2S.ActivePageIndex:=1;
        3: pcSh2S.ActivePageIndex:=2;
        4: pcSh2S.ActivePageIndex:=3;
        5: pcSh2S.ActivePageIndex:=4;
        6: pcSh2S.ActivePageIndex:=5;
        7: pcSh2S.ActivePageIndex:=6;
        8: pcSh2S.ActivePageIndex:=7;
        9: pcSh2S.ActivePageIndex:=8;
        10: pcSh2S.ActivePageIndex:=9;
        11: pcSh2S.ActivePageIndex:=10;
        12: pcSh2S.ActivePageIndex:=11;
        13: pcSh2S.ActivePageIndex:=12;
        14: pcSh2S.ActivePageIndex:=13;
        15: pcSh2S.ActivePageIndex:=14;
        end;
     end;
  4: case pcXufton.ActivePageIndex of
     0: case pcX4F.ActivePageIndex of
        1: pcX4F.ActivePageIndex:=0;
        2: pcX4F.ActivePageIndex:=1;
        3: pcX4F.ActivePageIndex:=2;
        4: pcX4F.ActivePageIndex:=3;
        5: pcX4F.ActivePageIndex:=4;
        6: pcX4F.ActivePageIndex:=5;
        7: pcX4F.ActivePageIndex:=6;
        8: pcX4F.ActivePageIndex:=7;
        9: pcX4F.ActivePageIndex:=8;
        10: pcX4F.ActivePageIndex:=9;
        11: pcX4F.ActivePageIndex:=10;
        12: pcX4F.ActivePageIndex:=11;
        13: pcX4F.ActivePageIndex:=12;
        14: pcX4F.ActivePageIndex:=13;
        15: pcX4F.ActivePageIndex:=14;
        16: pcX4F.ActivePageIndex:=15;
        17: pcX4F.ActivePageIndex:=16;
        18: pcX4F.ActivePageIndex:=17;
        19: pcX4F.ActivePageIndex:=18;
        20: pcX4F.ActivePageIndex:=19;
        21: pcX4F.ActivePageIndex:=20;
        22: pcX4F.ActivePageIndex:=21;
        23: pcX4F.ActivePageIndex:=22;
        24: pcX4F.ActivePageIndex:=23;
        25: pcX4F.ActivePageIndex:=24;
        26: pcX4F.ActivePageIndex:=25;
        27: pcX4F.ActivePageIndex:=26;
        28: pcX4F.ActivePageIndex:=27;
        end;
     1: case pcX2S.ActivePageIndex of
        1: pcX2S.ActivePageIndex:=0;
        2: pcX2S.ActivePageIndex:=1;
        3: pcX2S.ActivePageIndex:=2;
        4: pcX2S.ActivePageIndex:=3;
        5: pcX2S.ActivePageIndex:=4;
        6: pcX2S.ActivePageIndex:=5;
        7: pcX2S.ActivePageIndex:=6;
        8: pcX2S.ActivePageIndex:=7;
        9: pcX2S.ActivePageIndex:=8;
        10: pcX2S.ActivePageIndex:=9;
        11: pcX2S.ActivePageIndex:=10;
        12: pcX2S.ActivePageIndex:=11;
        13: pcX2S.ActivePageIndex:=12;
        14: pcX2S.ActivePageIndex:=13;
        end;
     2: case pcV3V.ActivePageIndex of
        1: pcV3V.ActivePageIndex:=0;
        2: pcV3V.ActivePageIndex:=1;
        3: pcV3V.ActivePageIndex:=2;
        4: pcV3V.ActivePageIndex:=3;
        5: pcV3V.ActivePageIndex:=4;
        6: pcV3V.ActivePageIndex:=5;
        7: pcV3V.ActivePageIndex:=6;
        8: pcV3V.ActivePageIndex:=7;
        9: pcV3V.ActivePageIndex:=8;
        10: pcV3V.ActivePageIndex:=9;
        11: pcV3V.ActivePageIndex:=10;
        12: pcV3V.ActivePageIndex:=11;
        13: pcV3V.ActivePageIndex:=12;
        14: pcV3V.ActivePageIndex:=13;
        15: pcV3V.ActivePageIndex:=14;
        16: pcV3V.ActivePageIndex:=15;
        17: pcV3V.ActivePageIndex:=16;
        18: pcV3V.ActivePageIndex:=17;
        19: pcV3V.ActivePageIndex:=18;
        20: pcV3V.ActivePageIndex:=19;
        21: pcV3V.ActivePageIndex:=20;
        22: pcV3V.ActivePageIndex:=21;
        end;
     end;
  end;
  ProcImagesLoad(self);
end;

procedure TFormMain.ProcDuo(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.miAboutClick(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TFormMain.miSettingsClick(Sender: TObject);
begin
  FormSettings.ShowModal;
end;

procedure TFormMain.ProcDuoF(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsDuoF;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcQunut(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsQunut;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzon(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsAzon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcKursi(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsKursi;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTasbehot(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsTasbehot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcNas(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsNas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcFalaq(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsFalaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcIqomat(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsIqomat;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAla(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsAla;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAziym(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsAziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzonBomdod(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsAzonBomdod;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzonDuo(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsAzonDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcBasmala(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsBasmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcFotiha(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsFotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcHamd(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsHamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcIxlos(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsIxlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcKavsar(Sender: TObject);
begin
  FormDetails.PageControl.ActivePage:=FormDetails.tsKavsar;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcImagesLoad(Sender: TObject);
begin
  case pcMain.ActivePageIndex of
  0: case pcBomdod.ActivePageIndex of
     0: case pcB2S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
          begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
          begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
           begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
          begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
          begin
            ProcImageSalom;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     1: case pcB2F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
           begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
           begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada': ProcImageJalsa;
        'Salom':
          begin
            ProcImageSalom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     end;
  1: case pcPeshin.ActivePageIndex of
     0: case pcP4S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
           begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
           begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
           begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
          begin
            ProcImageSalom;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     1: case pcP4F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
          begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
          begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
          begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
          begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
          begin
            ProcImageSalom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     2: case pcP2S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
           begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
           begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
           begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
           begin
            ProcImageSalom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     end;
  2: case pcA4F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
  3: case pcShom.ActivePageIndex of
     0: case pcSh3F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     1: case pcSh2S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            FormMain.bNext.Enabled:=true;
            FormMain.bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     end;
  4: case pcXufton.ActivePageIndex of
     0: case pcX4F.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            FormMain.bNext.Enabled:=true;
            FormMain.bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     1: case pcX2S.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
          begin
            ProcImageSalom;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
          end;
        end;
     2: case pcV3V.ActivePage.Caption of
        'Kirish':
          begin
            ProcImageKirish;
            miNext.Enabled:=true;
            miPrevious.Enabled:=false;
            bNext.Enabled:=true;
            bPrevious.Enabled:=false;
          end;
        'Qiyom':
          begin
            ProcImageQiyom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Ruku':
           begin
            ProcImageRuku;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Qovma':
            begin
            ProcImageQovma;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Sajda':
            begin
            ProcImageSajda;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Jalsa', 'Qada':
            begin
            ProcImageJalsa;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Salom':
            begin
            ProcImageSalom;
            miNext.Enabled:=true;
            miPrevious.Enabled:=true;
            bNext.Enabled:=true;
            bPrevious.Enabled:=true;
          end;
        'Duo':
          begin
            ProcImageDuo;
            miNext.Enabled:=false;
            miPrevious.Enabled:=true;
            bNext.Enabled:=false;
            bPrevious.Enabled:=true;
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

procedure TFormMain.FormClose(Sender: TObject);
begin
  if FormSettings.rbStart.Checked = true then
    begin
      pcA4F.TabIndex:=0;
      pcAsr.TabIndex:=0;
      pcB2F.TabIndex:=0;
      pcB2S.TabIndex:=0;
      pcBomdod.TabIndex:=0;
      pcMain.TabIndex:=0;
      pcP2S.TabIndex:=0;
      pcP4F.TabIndex:=0;
      pcP4S.TabIndex:=0;
      pcPeshin.TabIndex:=0;
      pcSh2S.TabIndex:=0;
      pcSh3F.TabIndex:=0;
      pcShom.TabIndex:=0;
      pcV3V.TabIndex:=0;
      pcX2S.TabIndex:=0;
      pcX4F.TabIndex:=0;
      pcXufton.TabIndex:=0;
    end;
end;

end.

