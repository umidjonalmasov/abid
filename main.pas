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
    sbAla1_1X4F: TSpeedButton;
    sbAla1_1V3V: TSpeedButton;
    sbAla1_1X2S: TSpeedButton;
    sbAla1_1Sh2S: TSpeedButton;
    sbAla1_1Sh3F: TSpeedButton;
    sbAla1_1B2F: TSpeedButton;
    sbAla1_1P2S: TSpeedButton;
    sbAla1_1A4F: TSpeedButton;
    sbAla1_1P4S: TSpeedButton;
    sbAla1_1P4F: TSpeedButton;
    sbAla1_2X4F: TSpeedButton;
    sbAla1_2V3V: TSpeedButton;
    sbAla1_2X2S: TSpeedButton;
    sbAla1_2Sh2S: TSpeedButton;
    sbAla1_2Sh3F: TSpeedButton;
    sbAla1_2B2S: TSpeedButton;
    sbAla1_2B2F: TSpeedButton;
    sbAla1_2P2S: TSpeedButton;
    sbAla1_2A4F: TSpeedButton;
    sbAla1_2P4S: TSpeedButton;
    sbAla1_2P4F: TSpeedButton;
    sbAla2_1X4F: TSpeedButton;
    sbAla2_1V3V: TSpeedButton;
    sbAla2_1X2S: TSpeedButton;
    sbAla2_1Sh2S: TSpeedButton;
    sbAla2_1Sh3F: TSpeedButton;
    sbAla2_1B2S: TSpeedButton;
    sbAla2_1B2F: TSpeedButton;
    sbAla2_1P2S: TSpeedButton;
    sbAla2_1A4F: TSpeedButton;
    sbAla2_1P4S: TSpeedButton;
    sbAla2_1P4F: TSpeedButton;
    sbAla2_2X4F: TSpeedButton;
    sbAla2_2V3V: TSpeedButton;
    sbAla2_2X2S: TSpeedButton;
    sbAla2_2Sh2S: TSpeedButton;
    sbAla2_2Sh3F: TSpeedButton;
    sbAla2_2P2S: TSpeedButton;
    sbAla2_2P4F: TSpeedButton;
    sbAla2_2A4F: TSpeedButton;
    sbAla3_1A4F: TSpeedButton;
    sbAla3_1X4F: TSpeedButton;
    sbAla3_1V3V: TSpeedButton;
    sbAla3_1Sh3F: TSpeedButton;
    sbAla3_1P4S: TSpeedButton;
    sbAla2_2B2S: TSpeedButton;
    sbAla2_2B2F: TSpeedButton;
    sbAla2_2P4S: TSpeedButton;
    sbAla3_1P4F: TSpeedButton;
    sbAla3_2X4F: TSpeedButton;
    sbAla3_2V3V: TSpeedButton;
    sbAla3_2Sh3F: TSpeedButton;
    sbAla3_2P4F: TSpeedButton;
    sbAla3_2A4F: TSpeedButton;
    sbAla4_1X4F: TSpeedButton;
    sbAla4_1P4F: TSpeedButton;
    sbAla4_1A4F: TSpeedButton;
    sbAla4_2A4F: TSpeedButton;
    sbAla4_2X4F: TSpeedButton;
    sbAla4_2P4S: TSpeedButton;
    sbAla4_1P4S: TSpeedButton;
    sbAla3_2P4S: TSpeedButton;
    sbAla4_2P4F: TSpeedButton;
    sbAziym1X4F: TSpeedButton;
    sbAziym1V3V: TSpeedButton;
    sbAziym1X2S: TSpeedButton;
    sbAziym1Sh2S: TSpeedButton;
    sbAziym1Sh3F: TSpeedButton;
    sbAziym1B2F: TSpeedButton;
    sbAziym1P2S: TSpeedButton;
    sbAziym1A4F: TSpeedButton;
    sbAziym1P4S: TSpeedButton;
    sbAziym1P4F: TSpeedButton;
    sbAziym2X4F: TSpeedButton;
    sbAziym2V3V: TSpeedButton;
    sbAziym2X2S: TSpeedButton;
    sbAziym2Sh2S: TSpeedButton;
    sbAziym2Sh3F: TSpeedButton;
    sbAziym2B2S: TSpeedButton;
    sbAziym2B2F: TSpeedButton;
    sbAziym2P2S: TSpeedButton;
    sbAziym2A4F: TSpeedButton;
    sbAziym2P4S: TSpeedButton;
    sbAziym2P4F: TSpeedButton;
    sbAziym3A4F: TSpeedButton;
    sbAziym3X4F: TSpeedButton;
    sbAziym3V3V: TSpeedButton;
    sbAziym3Sh3F: TSpeedButton;
    sbAziym3P4S: TSpeedButton;
    sbAziym3P4F: TSpeedButton;
    sbAziym4A4F: TSpeedButton;
    sbAziym4X4F: TSpeedButton;
    sbAziym4P4S: TSpeedButton;
    sbAziym4P4F: TSpeedButton;
    sbAzonX4F: TSpeedButton;
    sbAzonDuoX4F: TSpeedButton;
    sbAzonSh3F: TSpeedButton;
    sbAzonDuoA4F: TSpeedButton;
    sbAzonDuoSh3F: TSpeedButton;
    sbAzonP4S: TSpeedButton;
    sbAzonDuoP4S: TSpeedButton;
    sbAzonA4F: TSpeedButton;
    sbBasmala1X4F: TSpeedButton;
    sbBasmala1V3V: TSpeedButton;
    sbBasmala1X2S: TSpeedButton;
    sbBasmala1Sh2S: TSpeedButton;
    sbBasmala1Sh3F: TSpeedButton;
    sbBasmala1P2S: TSpeedButton;
    sbBasmala1A4F: TSpeedButton;
    sbBasmala2X4F: TSpeedButton;
    sbBasmala2V3V: TSpeedButton;
    sbBasmala2X2S: TSpeedButton;
    sbBasmala2Sh2S: TSpeedButton;
    sbBasmala2Sh3F: TSpeedButton;
    sbBasmala2P2S: TSpeedButton;
    sbBasmala2A4F: TSpeedButton;
    sbBasmala3A4F: TSpeedButton;
    sbBasmala3X4F: TSpeedButton;
    sbBasmala3V3V: TSpeedButton;
    sbBasmala3Sh3F: TSpeedButton;
    sbBasmala4A4F: TSpeedButton;
    sbBasmala4X4F: TSpeedButton;
    sbDuoV3V: TSpeedButton;
    sbDuoSh2S: TSpeedButton;
    sbDuoFA4F: TSpeedButton;
    sbDuoB2F: TSpeedButton;
    sbDuoA4F: TSpeedButton;
    sbDuoP2S: TSpeedButton;
    sbDuoFX4F: TSpeedButton;
    sbDuoFSh3F: TSpeedButton;
    sbDuoFP4F: TSpeedButton;
    sbFalaqSh2S: TSpeedButton;
    sbFotiha1X4F: TSpeedButton;
    sbFotiha1V3V: TSpeedButton;
    sbFotiha1X2S: TSpeedButton;
    sbFotiha1Sh2S: TSpeedButton;
    sbFotiha1Sh3F: TSpeedButton;
    sbFotiha1P2S: TSpeedButton;
    sbFotiha1A4F: TSpeedButton;
    sbFotiha2X4F: TSpeedButton;
    sbFotiha2V3V: TSpeedButton;
    sbFotiha2X2S: TSpeedButton;
    sbFotiha2Sh2S: TSpeedButton;
    sbFotiha2Sh3F: TSpeedButton;
    sbFotiha2P2S: TSpeedButton;
    sbFotiha2A4F: TSpeedButton;
    sbFotiha3A4F: TSpeedButton;
    sbQunut: TSpeedButton;
    sbTakbirQunut: TSpeedButton;
    sbNasV3V: TSpeedButton;
    sbFotiha3X4F: TSpeedButton;
    sbFotiha3V3V: TSpeedButton;
    sbFotiha3Sh3F: TSpeedButton;
    sbFotiha4A4F: TSpeedButton;
    sbFotiha4X4F: TSpeedButton;
    sbHamd1X4F: TSpeedButton;
    sbHamd1V3V: TSpeedButton;
    sbHamd1X2S: TSpeedButton;
    sbHamd1Sh2S: TSpeedButton;
    sbHamd1Sh3F: TSpeedButton;
    sbHamd1P2S: TSpeedButton;
    sbHamd1A4F: TSpeedButton;
    sbHamd2X4F: TSpeedButton;
    sbHamd2V3V: TSpeedButton;
    sbHamd2X2S: TSpeedButton;
    sbHamd2Sh2S: TSpeedButton;
    sbHamd2Sh3F: TSpeedButton;
    sbHamd2P2S: TSpeedButton;
    sbHamd2A4F: TSpeedButton;
    sbHamd3A4F: TSpeedButton;
    sbHamd3X4F: TSpeedButton;
    sbHamd3V3V: TSpeedButton;
    sbHamd3Sh3F: TSpeedButton;
    sbHamd4A4F: TSpeedButton;
    sbHamd4X4F: TSpeedButton;
    sbIqomatX4F: TSpeedButton;
    sbIqomatSh3F: TSpeedButton;
    sbIqomatP4F: TSpeedButton;
    sbBasmala1P4S: TSpeedButton;
    sbBasmala1P4F: TSpeedButton;
    sbBasmala2P4S: TSpeedButton;
    sbBasmala2P4F: TSpeedButton;
    sbBasmala3P4S: TSpeedButton;
    sbBasmala3P4F: TSpeedButton;
    sbBasmala4P4S: TSpeedButton;
    sbBasmala4P4F: TSpeedButton;
    sbFotiha1P4F: TSpeedButton;
    sbFotiha2P4F: TSpeedButton;
    sbFotiha3P4F: TSpeedButton;
    sbFotiha4P4F: TSpeedButton;
    sbHamd1P4F: TSpeedButton;
    sbHamd2P4F: TSpeedButton;
    sbHamd3P4F: TSpeedButton;
    sbHamd4P4S: TSpeedButton;
    sbHamd4P4F: TSpeedButton;
    sbIqomatA4F: TSpeedButton;
    sbIxlosA4F: TSpeedButton;
    sbIxlosX4F: TSpeedButton;
    sbFalaqV3V: TSpeedButton;
    sbNasX2S: TSpeedButton;
    sbIxlosSh3F: TSpeedButton;
    sbKavsarA4F: TSpeedButton;
    sbKavsarX4F: TSpeedButton;
    sbIxlosV3V: TSpeedButton;
    sbFalaqX2S: TSpeedButton;
    sbKavsarSh3F: TSpeedButton;
    sbKursiA4F: TSpeedButton;
    sbKursiV3V: TSpeedButton;
    sbKursiP2S: TSpeedButton;
    sbKursiSh2S: TSpeedButton;
    sbNasP2S: TSpeedButton;
    sbIxlosP4F: TSpeedButton;
    sbFalaqP2S: TSpeedButton;
    sbKavsarP4F: TSpeedButton;
    sbNasSh2S: TSpeedButton;
    sbNasP4S: TSpeedButton;
    sbFotiha1P4S: TSpeedButton;
    sbFotiha2P4S: TSpeedButton;
    sbFotiha3P4S: TSpeedButton;
    sbFotiha4P4S: TSpeedButton;
    sbHamd1P4S: TSpeedButton;
    sbHamd2P4S: TSpeedButton;
    sbHamd3P4S: TSpeedButton;
    sbIqomatB2F: TSpeedButton;
    sbBasmala1B2F: TSpeedButton;
    sbBasmala2B2S: TSpeedButton;
    sbBasmala2B2F: TSpeedButton;
    sbFotiha1B2F: TSpeedButton;
    sbFotiha2B2F: TSpeedButton;
    sbHamd1B2F: TSpeedButton;
    sbHamd2B2F: TSpeedButton;
    sbIxlosP4S: TSpeedButton;
    sbFalaqP4S: TSpeedButton;
    sbKavsarP4S: TSpeedButton;
    sbNasB2F: TSpeedButton;
    sbFalaqB2F: TSpeedButton;
    sbRobbanaX4F: TSpeedButton;
    sbRobbanaV3V: TSpeedButton;
    sbRobbanaX2S: TSpeedButton;
    sbRobbanaSh2S: TSpeedButton;
    sbRobbanaSh3F: TSpeedButton;
    sbRobbanaB2F: TSpeedButton;
    sbRobbanaP2S: TSpeedButton;
    sbRobbanaA4F: TSpeedButton;
    sbRobbanaP4S: TSpeedButton;
    sbRobbanaP4F: TSpeedButton;
    sbSalavotX4F: TSpeedButton;
    sbSalavotV3V: TSpeedButton;
    sbSalavotX2S: TSpeedButton;
    sbSalavotSh2S: TSpeedButton;
    sbSalavotSh3F: TSpeedButton;
    sbSalavotB2F: TSpeedButton;
    sbKursiB2F: TSpeedButton;
    sbSalavotP2S: TSpeedButton;
    sbSalavotA4F: TSpeedButton;
    sbSalavotP4S: TSpeedButton;
    sbSalavotP4F: TSpeedButton;
    sbSalomX4F: TSpeedButton;
    sbSalomV3V: TSpeedButton;
    sbSalomX2S: TSpeedButton;
    sbSalomSh2S: TSpeedButton;
    sbSalomSh3F: TSpeedButton;
    sbSalomB2S: TSpeedButton;
    sbSalomB2F: TSpeedButton;
    sbSalomP2S: TSpeedButton;
    sbSalomA4F: TSpeedButton;
    sbSalomP4S: TSpeedButton;
    sbSalomP4F: TSpeedButton;
    sbTasme1X4F: TSpeedButton;
    sbTasme1V3V: TSpeedButton;
    sbTasme1X2S: TSpeedButton;
    sbTasme1Sh2S: TSpeedButton;
    sbTasme1Sh3F: TSpeedButton;
    sbTasme1B2F: TSpeedButton;
    sbTasme1P2S: TSpeedButton;
    sbTasme1A4F: TSpeedButton;
    sbTasme1P4S: TSpeedButton;
    sbTasme1P4F: TSpeedButton;
    sbTasme2X4F: TSpeedButton;
    sbTasme2V3V: TSpeedButton;
    sbTasme2X2S: TSpeedButton;
    sbTasme2Sh2S: TSpeedButton;
    sbTasme2Sh3F: TSpeedButton;
    sbTasme2B2F: TSpeedButton;
    sbTasme2P2S: TSpeedButton;
    sbTasme2A4F: TSpeedButton;
    sbTasme2P4S: TSpeedButton;
    sbTasme2P4F: TSpeedButton;
    sbTasme3A4F: TSpeedButton;
    sbTasme3X4F: TSpeedButton;
    sbTasme3V3V: TSpeedButton;
    sbTasme3Sh3F: TSpeedButton;
    sbTasme3P4S: TSpeedButton;
    sbTasme3P4F: TSpeedButton;
    sbTasme4A4F: TSpeedButton;
    sbTasme4X4F: TSpeedButton;
    sbTasme4P4S: TSpeedButton;
    sbTasme4P4F: TSpeedButton;
    sbSanoX4F: TSpeedButton;
    sbSanoV3V: TSpeedButton;
    sbSanoX2S: TSpeedButton;
    sbSanoSh2S: TSpeedButton;
    sbSanoSh3F: TSpeedButton;
    sbSanoB2F: TSpeedButton;
    sbSanoP2S: TSpeedButton;
    sbSanoA4F: TSpeedButton;
    sbSanoP4S: TSpeedButton;
    sbSanoP4F: TSpeedButton;
    sbTaavvuzX4F: TSpeedButton;
    sbTaavvuzV3V: TSpeedButton;
    sbTaavvuzX2S: TSpeedButton;
    sbTaavvuzSh2S: TSpeedButton;
    sbTaavvuzSh3F: TSpeedButton;
    sbTaavvuzB2F: TSpeedButton;
    sbTaavvuzP2S: TSpeedButton;
    sbTaavvuzA4F: TSpeedButton;
    sbTaavvuzP4S: TSpeedButton;
    sbTaavvuzP4F: TSpeedButton;
    sbTakbirJalsa1X4F: TSpeedButton;
    sbTakbirJalsa1V3V: TSpeedButton;
    sbTakbirJalsa1X2S: TSpeedButton;
    sbTakbirJalsa1Sh2S: TSpeedButton;
    sbTakbirJalsa1Sh3F: TSpeedButton;
    sbTakbirJalsa1B2F: TSpeedButton;
    sbTakbirJalsa1P2S: TSpeedButton;
    sbTakbirJalsa1A4F: TSpeedButton;
    sbTakbirJalsa1P4S: TSpeedButton;
    sbTakbirJalsa1P4F: TSpeedButton;
    sbTakbirJalsa2X4F: TSpeedButton;
    sbTakbirJalsa2V3V: TSpeedButton;
    sbTakbirJalsa2X2S: TSpeedButton;
    sbTakbirJalsa2Sh2S: TSpeedButton;
    sbTakbirJalsa2Sh3F: TSpeedButton;
    sbTakbirJalsa2B2F: TSpeedButton;
    sbTakbirJalsa2P2S: TSpeedButton;
    sbTakbirJalsa2A4F: TSpeedButton;
    sbTakbirJalsa2P4S: TSpeedButton;
    sbTakbirJalsa2P4F: TSpeedButton;
    sbTakbirJalsa3A4F: TSpeedButton;
    sbTakbirJalsa3X4F: TSpeedButton;
    sbTakbirJalsa3V3V: TSpeedButton;
    sbTakbirJalsa3Sh3F: TSpeedButton;
    sbTakbirJalsa3P4S: TSpeedButton;
    sbTakbirJalsa3P4F: TSpeedButton;
    sbTakbirJalsa4A4F: TSpeedButton;
    sbTakbirJalsa4X4F: TSpeedButton;
    sbTakbirJalsa4P4S: TSpeedButton;
    sbTakbirJalsa4P4F: TSpeedButton;
    sbTakbirKirishX4F: TSpeedButton;
    sbTakbirKirishV3V: TSpeedButton;
    sbTakbirKirishX2S: TSpeedButton;
    sbTakbirKirishSh2S: TSpeedButton;
    sbTakbirKirishSh3F: TSpeedButton;
    sbTakbirKirishB2F: TSpeedButton;
    sbTakbirKirishP2S: TSpeedButton;
    sbTakbirKirishP4S: TSpeedButton;
    sbTakbirKirishP4F: TSpeedButton;
    sbTakbirKirishA4F: TSpeedButton;
    sbTakbirQada1X4F: TSpeedButton;
    sbTakbirQada1V3V: TSpeedButton;
    sbTakbirQada1Sh3F: TSpeedButton;
    sbTakbirQada1P4F: TSpeedButton;
    sbTakbirQada1A4F: TSpeedButton;
    sbTakbirQada2X4F: TSpeedButton;
    sbTakbirQada2V3V: TSpeedButton;
    sbTakbirQada2Sh3F: TSpeedButton;
    sbTakbirQada2P4F: TSpeedButton;
    sbTakbirQada2A4F: TSpeedButton;
    sbTakbirQadaB2F: TSpeedButton;
    sbDuoFB2F: TSpeedButton;
    sbTakbirQada1P4S: TSpeedButton;
    sbTakbirQada2P4S: TSpeedButton;
    sbTakbirQadaX2S: TSpeedButton;
    sbTakbirQadaP2S: TSpeedButton;
    sbTakbirQadaSh2S: TSpeedButton;
    sbTakbirQiyom2X4F: TSpeedButton;
    sbTakbirQiyom2V3V: TSpeedButton;
    sbTakbirQiyom2X2S: TSpeedButton;
    sbTakbirQiyom2Sh2S: TSpeedButton;
    sbTakbirQiyom2Sh3F: TSpeedButton;
    sbTakbirQiyom2B2F: TSpeedButton;
    sbTakbirQiyom2P2S: TSpeedButton;
    sbTakbirQiyom2A4F: TSpeedButton;
    sbTakbirQiyom2P4S: TSpeedButton;
    sbTakbirQiyom2P4F: TSpeedButton;
    sbTakbirQiyom3A4F: TSpeedButton;
    sbTakbirQiyom3X4F: TSpeedButton;
    sbTakbirQiyom3V3V: TSpeedButton;
    sbTakbirQiyom3Sh3F: TSpeedButton;
    sbTakbirQiyom3P4S: TSpeedButton;
    sbTakbirQiyom3P4F: TSpeedButton;
    sbTakbirQiyom4A4F: TSpeedButton;
    sbTakbirQiyom4X4F: TSpeedButton;
    sbTakbirQiyom4P4S: TSpeedButton;
    sbTakbirQiyom4P4F: TSpeedButton;
    sbTakbirRuku1X4F: TSpeedButton;
    sbTakbirRuku1V3V: TSpeedButton;
    sbTakbirRuku1X2S: TSpeedButton;
    sbTakbirRuku1Sh2S: TSpeedButton;
    sbTakbirRuku1Sh3F: TSpeedButton;
    sbTakbirRuku1B2F: TSpeedButton;
    sbTakbirRuku1P2S: TSpeedButton;
    sbTakbirRuku1A4F: TSpeedButton;
    sbTakbirRuku1P4S: TSpeedButton;
    sbTakbirRuku1P4F: TSpeedButton;
    sbTakbirRuku2X4F: TSpeedButton;
    sbTakbirRuku2V3V: TSpeedButton;
    sbTakbirRuku2X2S: TSpeedButton;
    sbTakbirRuku2Sh2S: TSpeedButton;
    sbTakbirRuku2Sh3F: TSpeedButton;
    sbTakbirRuku2B2F: TSpeedButton;
    sbTakbirRuku2P2S: TSpeedButton;
    sbTakbirRuku2A4F: TSpeedButton;
    sbTakbirRuku2P4S: TSpeedButton;
    sbTakbirRuku2P4F: TSpeedButton;
    sbTakbirRuku3A4F: TSpeedButton;
    sbTakbirRuku3X4F: TSpeedButton;
    sbTakbirRuku3V3V: TSpeedButton;
    sbTakbirRuku3Sh3F: TSpeedButton;
    sbTakbirRuku3P4S: TSpeedButton;
    sbTakbirRuku3P4F: TSpeedButton;
    sbTakbirRuku4A4F: TSpeedButton;
    sbTakbirRuku4X4F: TSpeedButton;
    sbTakbirRuku4P4S: TSpeedButton;
    sbTakbirRuku4P4F: TSpeedButton;
    sbTakbirSajda1_1X4F: TSpeedButton;
    sbTakbirSajda1_1V3V: TSpeedButton;
    sbTakbirSajda1_1X2S: TSpeedButton;
    sbTakbirSajda1_1Sh2S: TSpeedButton;
    sbTakbirSajda1_1Sh3F: TSpeedButton;
    sbTakbirSajda1_1B2F: TSpeedButton;
    sbTakbirSajda1_1P2S: TSpeedButton;
    sbTakbirSajda1_1A4F: TSpeedButton;
    sbTakbirSajda1_1P4S: TSpeedButton;
    sbTakbirSajda1_1P4F: TSpeedButton;
    sbTakbirSajda1_2X4F: TSpeedButton;
    sbTakbirSajda1_2V3V: TSpeedButton;
    sbTakbirSajda1_2X2S: TSpeedButton;
    sbTakbirSajda1_2Sh2S: TSpeedButton;
    sbTakbirSajda1_2Sh3F: TSpeedButton;
    sbTakbirSajda1_2B2F: TSpeedButton;
    sbTakbirSajda1_2P2S: TSpeedButton;
    sbTakbirSajda1_2A4F: TSpeedButton;
    sbTakbirSajda1_2P4S: TSpeedButton;
    sbTakbirSajda1_2P4F: TSpeedButton;
    sbTakbirSajda2_1X4F: TSpeedButton;
    sbTakbirSajda2_1V3V: TSpeedButton;
    sbTakbirSajda2_1X2S: TSpeedButton;
    sbTakbirSajda2_1Sh2S: TSpeedButton;
    sbTakbirSajda2_1Sh3F: TSpeedButton;
    sbTakbirSajda2_1B2F: TSpeedButton;
    sbTakbirSajda2_1P2S: TSpeedButton;
    sbTakbirSajda2_1A4F: TSpeedButton;
    sbTakbirSajda2_1P4S: TSpeedButton;
    sbTakbirSajda2_1P4F: TSpeedButton;
    sbTakbirSajda2_2X4F: TSpeedButton;
    sbTakbirSajda2_2V3V: TSpeedButton;
    sbTakbirSajda2_2X2S: TSpeedButton;
    sbTakbirSajda2_2Sh2S: TSpeedButton;
    sbTakbirSajda2_2Sh3F: TSpeedButton;
    sbTakbirSajda2_2P2S: TSpeedButton;
    sbTakbirSajda2_2P4F: TSpeedButton;
    sbTakbirSajda2_2A4F: TSpeedButton;
    sbTakbirSajda3_1A4F: TSpeedButton;
    sbTakbirSajda3_1X4F: TSpeedButton;
    sbTakbirSajda3_1V3V: TSpeedButton;
    sbTakbirSajda3_1Sh3F: TSpeedButton;
    sbTakbirSajda3_1P4S: TSpeedButton;
    sbTakbirSajda2_2B2F: TSpeedButton;
    sbTakbirSajda2_2P4S: TSpeedButton;
    sbTakbirSajda3_1P4F: TSpeedButton;
    sbTakbirSajda3_2X4F: TSpeedButton;
    sbTakbirSajda3_2V3V: TSpeedButton;
    sbTakbirSajda3_2Sh3F: TSpeedButton;
    sbTakbirSajda3_2P4F: TSpeedButton;
    sbTakbirSajda3_2A4F: TSpeedButton;
    sbTakbirSajda4_1X4F: TSpeedButton;
    sbTakbirSajda4_1P4F: TSpeedButton;
    sbTakbirSajda4_1A4F: TSpeedButton;
    sbTakbirSajda4_2A4F: TSpeedButton;
    sbTakbirSajda4_2X4F: TSpeedButton;
    sbTakbirSajda4_2P4S: TSpeedButton;
    sbTakbirSajda4_1P4S: TSpeedButton;
    sbTakbirSajda3_2P4S: TSpeedButton;
    sbTakbirSajda4_2P4F: TSpeedButton;
    sbTasbehotV3V: TSpeedButton;
    sbTasbehotB2F: TSpeedButton;
    sbTasbehotA4F: TSpeedButton;
    sbTasbehotP2S: TSpeedButton;
    sbTasbehotSh2S: TSpeedButton;
    sbTashahhud1X4F: TSpeedButton;
    sbTashahhud1V3V: TSpeedButton;
    sbTashahhud1Sh3F: TSpeedButton;
    sbTashahhud1P4F: TSpeedButton;
    sbTashahhud1A4F: TSpeedButton;
    sbTashahhud2X4F: TSpeedButton;
    sbTashahhud2V3V: TSpeedButton;
    sbTashahhud2Sh3F: TSpeedButton;
    sbTashahhud2P4F: TSpeedButton;
    sbTashahhud2A4F: TSpeedButton;
    sbTashahhudB2S: TSpeedButton;
    sbFotiha2B2S: TSpeedButton;
    sbSalavotB2S: TSpeedButton;
    sbHamd1B2S: TSpeedButton;
    sbAla1_1B2S: TSpeedButton;
    sbHamd2B2S: TSpeedButton;
    sbRobbanaB2S: TSpeedButton;
    sbKavsarB2S: TSpeedButton;
    sbFotiha1B2S: TSpeedButton;
    sbIxlosB2S: TSpeedButton;
    sbTasme2B2S: TSpeedButton;
    sbTakbirJalsa2B2S: TSpeedButton;
    sbTakbirQiyom2B2S: TSpeedButton;
    sbTakbirQadaB2S: TSpeedButton;
    sbTakbirRuku2B2S: TSpeedButton;
    sbTakbirSajda1_1B2S: TSpeedButton;
    sbSanoB2S: TSpeedButton;
    sbAzonDuoB2S: TSpeedButton;
    sbTakbirRuku1B2S: TSpeedButton;
    sbTaavvuzB2S: TSpeedButton;
    sbAziym1B2S: TSpeedButton;
    sbTakbirKirishB2S: TSpeedButton;
    sbBasmala1B2S: TSpeedButton;
    sbTasme1B2S: TSpeedButton;
    sbTakbirJalsa1B2S: TSpeedButton;
    sbTakbirSajda1_2B2S: TSpeedButton;
    sbTakbirSajda2_1B2S: TSpeedButton;
    sbTakbirSajda2_2B2S: TSpeedButton;
    sbTashahhudB2F: TSpeedButton;
    sbTashahhud1P4S: TSpeedButton;
    sbTashahhud2P4S: TSpeedButton;
    sbTashahhudX2S: TSpeedButton;
    sbTashahhudP2S: TSpeedButton;
    sbTashahhudSh2S: TSpeedButton;
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
    sbAzonB2S: TSpeedButton;
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
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItemAboutClick(Sender: TObject);
    procedure MenuItemExitClick(Sender: TObject);
    procedure MenuItemImageClick(Sender: TObject);
    procedure MenuItemNextClick(Sender: TObject);
    procedure MenuItemPreviousClick(Sender: TObject);
    procedure MenuItemSettingsClick(Sender: TObject);
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

end.

