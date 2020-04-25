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
    MenuItemPrevious: TMenuItem;
    MenuItemNext: TMenuItem;
    MenuItemImage: TMenuItem;
    MenuItemExit: TMenuItem;
    MenuItemSettings: TMenuItem;
    MenuItemAbout: TMenuItem;
    MenuItemFile: TMenuItem;
    MenuItemEdit: TMenuItem;
    MenuItemHelp: TMenuItem;
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
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetRobbana;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSalavot(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetSalavot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSalom(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetSalom;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTasme(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetTasme;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcSano(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetSano;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTaavvuz(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetTaavvuz;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTakbir(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetTakbir;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTashahhud(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetTashahhud;
  FormDetails.ShowModal;
end;

procedure TFormMain.FormActivate(Sender: TObject);
begin
  FormMain.ProcImagesLoad(self);
  FormSettings.cbLanguageChange(self);
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

procedure TFormMain.MenuItemPreviousClick(Sender: TObject);
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
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetDuo;
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
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetDuoF;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcQunut(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetQunut;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzon(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetAzon;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcKursi(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetKursi;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcTasbehot(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetTasbehot;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcNas(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetNas;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcFalaq(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetFalaq;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcIqomat(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetIqomat;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAla(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetAla;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAziym(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetAziym;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzonBomdod(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetAzonBomdod;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcAzonDuo(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetAzonDuo;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcBasmala(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetBasmala;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcFotiha(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetFotiha;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcHamd(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetHamd;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcIxlos(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetIxlos;
  FormDetails.ShowModal;
end;

procedure TFormMain.ProcKavsar(Sender: TObject);
begin
  FormDetails.pcMain.ActivePage:=FormDetails.TabSheetKavsar;
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
     1: case pcB2F.ActivePage.Caption of
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
  1: case pcPeshin.ActivePageIndex of
     0: case pcP4S.ActivePage.Caption of
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
     1: case pcP4F.ActivePage.Caption of
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
     2: case pcP2S.ActivePage.Caption of
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
  2: case pcA4F.ActivePage.Caption of
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
  3: case pcShom.ActivePageIndex of
     0: case pcSh3F.ActivePage.Caption of
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
     1: case pcSh2S.ActivePage.Caption of
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
  4: case pcXufton.ActivePageIndex of
     0: case pcX4F.ActivePage.Caption of
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
     1: case pcX2S.ActivePage.Caption of
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
     2: case pcV3V.ActivePage.Caption of
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

