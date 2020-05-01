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
  ShowImage = 'Show images';
  HideImage = 'Hide images';

type

  { TFormMain }

  TFormMain = class(TForm)
    bAla1_1A4F: TSpeedButton;
    bAla1_1F2F: TSpeedButton;
    bAla1_1F2S: TSpeedButton;
    bAla1_1Z2S: TSpeedButton;
    bAla1_1Z4F: TSpeedButton;
    bAla1_1Z4S: TSpeedButton;
    bAla1_1M2S: TSpeedButton;
    bAla1_1M3F: TSpeedButton;
    bAla1_1W3W: TSpeedButton;
    bAla1_1I2S: TSpeedButton;
    bAla1_1I4F: TSpeedButton;
    bAla1_2A4F: TSpeedButton;
    bAla1_2F2F: TSpeedButton;
    bAla1_2F2S: TSpeedButton;
    bAla1_2Z2S: TSpeedButton;
    bAla1_2Z4F: TSpeedButton;
    bAla1_2Z4S: TSpeedButton;
    bAla1_2M2S: TSpeedButton;
    bAla1_2M3F: TSpeedButton;
    bAla1_2W3W: TSpeedButton;
    bAla1_2I2S: TSpeedButton;
    bAla1_2I4F: TSpeedButton;
    bAla2_1A4F: TSpeedButton;
    bAla2_1F2F: TSpeedButton;
    bAla2_1F2S: TSpeedButton;
    bAla2_1Z2S: TSpeedButton;
    bAla2_1Z4F: TSpeedButton;
    bAla2_1Z4S: TSpeedButton;
    bAla2_1M2S: TSpeedButton;
    bAla2_1M3F: TSpeedButton;
    bAla2_1W3W: TSpeedButton;
    bAla2_1I2S: TSpeedButton;
    bAla2_1I4F: TSpeedButton;
    bAla2_2A4F: TSpeedButton;
    bAla2_2F2F: TSpeedButton;
    bAla2_2F2S: TSpeedButton;
    bAla2_2Z2S: TSpeedButton;
    bAla2_2Z4F: TSpeedButton;
    bAla2_2Z4S: TSpeedButton;
    bAla2_2M2S: TSpeedButton;
    bAla2_2M3F: TSpeedButton;
    bAla2_2W3W: TSpeedButton;
    bAla2_2I2S: TSpeedButton;
    bAla2_2I4F: TSpeedButton;
    bAla3_1A4F: TSpeedButton;
    bAla3_1Z4F: TSpeedButton;
    bAla3_1Z4S: TSpeedButton;
    bAla3_1M3F: TSpeedButton;
    bAla3_1W3W: TSpeedButton;
    bAla3_1I4F: TSpeedButton;
    bAla3_2A4F: TSpeedButton;
    bAla3_2Z4F: TSpeedButton;
    bAla3_2Z4S: TSpeedButton;
    bAla3_2M3F: TSpeedButton;
    bAla3_2W3W: TSpeedButton;
    bAla3_2I4F: TSpeedButton;
    bAla4_1A4F: TSpeedButton;
    bAla4_1Z4F: TSpeedButton;
    bAla4_1Z4S: TSpeedButton;
    bAla4_1I4F: TSpeedButton;
    bAla4_2A4F: TSpeedButton;
    bAla4_2Z4F: TSpeedButton;
    bAla4_2Z4S: TSpeedButton;
    bAla4_2I4F: TSpeedButton;
    bAziym1A4F: TSpeedButton;
    bAziym1F2F: TSpeedButton;
    bAziym1F2S: TSpeedButton;
    bAziym1Z2S: TSpeedButton;
    bAziym1Z4F: TSpeedButton;
    bAziym1Z4S: TSpeedButton;
    bAziym1M2S: TSpeedButton;
    bAziym1M3F: TSpeedButton;
    bAziym1W3W: TSpeedButton;
    bAziym1I2S: TSpeedButton;
    bAziym1I4F: TSpeedButton;
    bAziym2A4F: TSpeedButton;
    bAziym2F2F: TSpeedButton;
    bAziym2F2S: TSpeedButton;
    bAziym2Z2S: TSpeedButton;
    bAziym2Z4F: TSpeedButton;
    bAziym2Z4S: TSpeedButton;
    bAziym2M2S: TSpeedButton;
    bAziym2M3F: TSpeedButton;
    bAziym2W3W: TSpeedButton;
    bAziym2I2S: TSpeedButton;
    bAziym2I4F: TSpeedButton;
    bAziym3A4F: TSpeedButton;
    bAziym3Z4F: TSpeedButton;
    bAziym3Z4S: TSpeedButton;
    bAziym3M3F: TSpeedButton;
    bAziym3W3W: TSpeedButton;
    bAziym3I4F: TSpeedButton;
    bAziym4A4F: TSpeedButton;
    bAziym4Z4F: TSpeedButton;
    bAziym4Z4S: TSpeedButton;
    bAziym4I4F: TSpeedButton;
    bAzonA4F: TSpeedButton;
    bAzonF2S: TSpeedButton;
    bAzonDuoA4F: TSpeedButton;
    bAzonDuoF2S: TSpeedButton;
    bAzonDuoZ4S: TSpeedButton;
    bAzonDuoM3F: TSpeedButton;
    bAzonDuoI4F: TSpeedButton;
    bAzonZ4S: TSpeedButton;
    bAzonM3F: TSpeedButton;
    bAzonI4F: TSpeedButton;
    bBasmala1A4F: TSpeedButton;
    bBasmala1F2F: TSpeedButton;
    bBasmala1F2S: TSpeedButton;
    bBasmala1Z2S: TSpeedButton;
    bBasmala1Z4F: TSpeedButton;
    bBasmala1Z4S: TSpeedButton;
    bBasmala1M2S: TSpeedButton;
    bBasmala1M3F: TSpeedButton;
    bBasmala1W3W: TSpeedButton;
    bBasmala1I2S: TSpeedButton;
    bBasmala1I4F: TSpeedButton;
    bBasmala2A4F: TSpeedButton;
    bBasmala2F2F: TSpeedButton;
    bBasmala2F2S: TSpeedButton;
    bBasmala2Z2S: TSpeedButton;
    bBasmala2Z4F: TSpeedButton;
    bBasmala2Z4S: TSpeedButton;
    bBasmala2M2S: TSpeedButton;
    bBasmala2M3F: TSpeedButton;
    bBasmala2W3W: TSpeedButton;
    bBasmala2I2S: TSpeedButton;
    bBasmala2I4F: TSpeedButton;
    bBasmala3A4F: TSpeedButton;
    bBasmala3Z4F: TSpeedButton;
    bBasmala3Z4S: TSpeedButton;
    bBasmala3M3F: TSpeedButton;
    bBasmala3W3W: TSpeedButton;
    bBasmala3I4F: TSpeedButton;
    bBasmala4A4F: TSpeedButton;
    bBasmala4Z4F: TSpeedButton;
    bBasmala4Z4S: TSpeedButton;
    bBasmala4I4F: TSpeedButton;
    bDuoA4F: TSpeedButton;
    bDuoF2F: TSpeedButton;
    bDuoFA4F: TSpeedButton;
    bDuoFF2F: TSpeedButton;
    bDuoFZ4F: TSpeedButton;
    bDuoFM3F: TSpeedButton;
    bDuoFI4F: TSpeedButton;
    bDuoZ2S: TSpeedButton;
    bDuoZ4F: TScrollBox;
    bDuoM2S: TSpeedButton;
    bDuoW3W: TSpeedButton;
    bFalaqF2F: TSpeedButton;
    bFalaqZ2S: TSpeedButton;
    bFalaqZ4S: TSpeedButton;
    bFalaqM2S: TSpeedButton;
    bFalaqW3W: TSpeedButton;
    bFalaqI2S: TSpeedButton;
    bFotiha1A4F: TSpeedButton;
    bFotiha1F2F: TSpeedButton;
    bFotiha1F2S: TSpeedButton;
    bFotiha1Z2S: TSpeedButton;
    bFotiha1Z4F: TSpeedButton;
    bFotiha1Z4S: TSpeedButton;
    bFotiha1M2S: TSpeedButton;
    bFotiha1M3F: TSpeedButton;
    bFotiha1W3W: TSpeedButton;
    bFotiha1I2S: TSpeedButton;
    bFotiha1I4F: TSpeedButton;
    bFotiha2A4F: TSpeedButton;
    bFotiha2F2F: TSpeedButton;
    bFotiha2F2S: TSpeedButton;
    bFotiha2Z2S: TSpeedButton;
    bFotiha2Z4F: TSpeedButton;
    bFotiha2Z4S: TSpeedButton;
    bFotiha2M2S: TSpeedButton;
    bFotiha2M3F: TSpeedButton;
    bFotiha2W3W: TSpeedButton;
    bFotiha2I2S: TSpeedButton;
    bFotiha2I4F: TSpeedButton;
    bFotiha3A4F: TSpeedButton;
    bFotiha3Z4F: TSpeedButton;
    bFotiha3Z4S: TSpeedButton;
    bFotiha3M3F: TSpeedButton;
    bFotiha3W3W: TSpeedButton;
    bFotiha3I4F: TSpeedButton;
    bFotiha4A4F: TSpeedButton;
    bFotiha4Z4F: TSpeedButton;
    bFotiha4Z4S: TSpeedButton;
    bFotiha4I4F: TSpeedButton;
    bHamd1A4F: TSpeedButton;
    bHamd1F2F: TSpeedButton;
    bHamd1F2S: TSpeedButton;
    bHamd1Z2S: TSpeedButton;
    bHamd1Z4F: TSpeedButton;
    bHamd1Z4S: TSpeedButton;
    bHamd1M2S: TSpeedButton;
    bHamd1M3F: TSpeedButton;
    bHamd1W3W: TSpeedButton;
    bHamd1I2S: TSpeedButton;
    bHamd1I4F: TSpeedButton;
    bHamd2A4F: TSpeedButton;
    bHamd2F2F: TSpeedButton;
    bHamd2F2S: TSpeedButton;
    bHamd2Z2S: TSpeedButton;
    bHamd2Z4F: TSpeedButton;
    bHamd2Z4S: TSpeedButton;
    bHamd2M2S: TSpeedButton;
    bHamd2M3F: TSpeedButton;
    bHamd2W3W: TSpeedButton;
    bHamd2I2S: TSpeedButton;
    bHamd2I4F: TSpeedButton;
    bHamd3A4F: TSpeedButton;
    bHamd3Z4F: TSpeedButton;
    bHamd3Z4S: TSpeedButton;
    bHamd3M3F: TSpeedButton;
    bHamd3W3W: TSpeedButton;
    bHamd3I4F: TSpeedButton;
    bHamd4A4F: TSpeedButton;
    bHamd4Z4F: TSpeedButton;
    bHamd4Z4S: TSpeedButton;
    bHamd4I4F: TSpeedButton;
    bImage: TSpeedButton;
    bIqomatA4F: TSpeedButton;
    bIqomatF2F: TSpeedButton;
    bIqomatZ4F: TSpeedButton;
    bIqomatM3F: TSpeedButton;
    bIqomatI4F: TSpeedButton;
    bIxlosA4F: TSpeedButton;
    bIxlosF2S: TSpeedButton;
    bIxlosZ4F: TSpeedButton;
    bIxlosZ4S: TSpeedButton;
    bIxlosM3F: TSpeedButton;
    bIxlosW3W: TSpeedButton;
    bIxlosI4F: TSpeedButton;
    bKavsarA4F: TSpeedButton;
    bKavsarF2S: TSpeedButton;
    bKavsarZ4F: TSpeedButton;
    bKavsarZ4S: TSpeedButton;
    bKavsarM3F: TSpeedButton;
    bKavsarI4F: TSpeedButton;
    bKursiA4F: TSpeedButton;
    bKursiF2F: TSpeedButton;
    bKursiZ2S: TSpeedButton;
    bKursiM2S: TSpeedButton;
    bKursiW3W: TSpeedButton;
    bNasF2F: TSpeedButton;
    bNasZ2S: TSpeedButton;
    bNasZ4S: TSpeedButton;
    bNasM2S: TSpeedButton;
    bNasW3W: TSpeedButton;
    bNasI2S: TSpeedButton;
    bNext: TSpeedButton;
    bPrevious: TSpeedButton;
    bQunut: TSpeedButton;
    bRobbanaA4F: TSpeedButton;
    bRobbanaF2F: TSpeedButton;
    bRobbanaF2S: TSpeedButton;
    bRobbanaZ2S: TSpeedButton;
    bRobbanaZ4F: TSpeedButton;
    bRobbanaZ4S: TSpeedButton;
    bRobbanaM2S: TSpeedButton;
    bRobbanaM3F: TSpeedButton;
    bRobbanaW3W: TSpeedButton;
    bRobbanaI2S: TSpeedButton;
    bRobbanaI4F: TSpeedButton;
    bSalavotA4F: TSpeedButton;
    bSalavotF2F: TSpeedButton;
    bSalavotF2S: TSpeedButton;
    bSalavotZ2S: TSpeedButton;
    bSalavotZ4F: TSpeedButton;
    bSalavotZ4S: TSpeedButton;
    bSalavotM2S: TSpeedButton;
    bSalavotM3F: TSpeedButton;
    bSalavotW3W: TSpeedButton;
    bSalavotI2S: TSpeedButton;
    bSalavotI4F: TSpeedButton;
    bSalomA4F: TSpeedButton;
    bSalomF2F: TSpeedButton;
    bSalomF2S: TSpeedButton;
    bSalomZ2S: TSpeedButton;
    bSalomZ4F: TSpeedButton;
    bSalomZ4S: TSpeedButton;
    bSalomM2S: TSpeedButton;
    bSalomM3F: TSpeedButton;
    bSalomW3W: TSpeedButton;
    bSalomI2S: TSpeedButton;
    bSalomI4F: TSpeedButton;
    bSanoA4F: TSpeedButton;
    bSanoF2F: TSpeedButton;
    bSanoF2S: TSpeedButton;
    bSanoZ2S: TSpeedButton;
    bSanoZ4F: TSpeedButton;
    bSanoZ4S: TSpeedButton;
    bSanoM2S: TSpeedButton;
    bSanoM3F: TSpeedButton;
    bSanoW3W: TSpeedButton;
    bSanoI2S: TSpeedButton;
    bSanoI4F: TSpeedButton;
    bTaavvuzA4F: TSpeedButton;
    bTaavvuzF2F: TSpeedButton;
    bTaavvuzF2S: TSpeedButton;
    bTaavvuzZ2S: TSpeedButton;
    bTaavvuzZ4F: TSpeedButton;
    bTaavvuzZ4S: TSpeedButton;
    bTaavvuzM2S: TSpeedButton;
    bTaavvuzM3F: TSpeedButton;
    bTaavvuzW3W: TSpeedButton;
    bTaavvuzI2S: TSpeedButton;
    bTaavvuzI4F: TSpeedButton;
    bTakbirJalsa1A4F: TSpeedButton;
    bTakbirJalsa1F2F: TSpeedButton;
    bTakbirJalsa1F2S: TSpeedButton;
    bTakbirJalsa1Z2S: TSpeedButton;
    bTakbirJalsa1Z4F: TSpeedButton;
    bTakbirJalsa1Z4S: TSpeedButton;
    bTakbirJalsa1M2S: TSpeedButton;
    bTakbirJalsa1M3F: TSpeedButton;
    bTakbirJalsa1W3W: TSpeedButton;
    bTakbirJalsa1I2S: TSpeedButton;
    bTakbirJalsa1I4F: TSpeedButton;
    bTakbirJalsa2A4F: TSpeedButton;
    bTakbirJalsa2F2F: TSpeedButton;
    bTakbirJalsa2F2S: TSpeedButton;
    bTakbirJalsa2Z2S: TSpeedButton;
    bTakbirJalsa2Z4F: TSpeedButton;
    bTakbirJalsa2Z4S: TSpeedButton;
    bTakbirJalsa2M2S: TSpeedButton;
    bTakbirJalsa2M3F: TSpeedButton;
    bTakbirJalsa2W3W: TSpeedButton;
    bTakbirJalsa2I2S: TSpeedButton;
    bTakbirJalsa2I4F: TSpeedButton;
    bTakbirJalsa3A4F: TSpeedButton;
    bTakbirJalsa3Z4F: TSpeedButton;
    bTakbirJalsa3Z4S: TSpeedButton;
    bTakbirJalsa3M3F: TSpeedButton;
    bTakbirJalsa3W3W: TSpeedButton;
    bTakbirJalsa3I4F: TSpeedButton;
    bTakbirJalsa4A4F: TSpeedButton;
    bTakbirJalsa4Z4F: TSpeedButton;
    bTakbirJalsa4Z4S: TSpeedButton;
    bTakbirJalsa4I4F: TSpeedButton;
    bTakbirKirishA4F: TSpeedButton;
    bTakbirKirishF2F: TSpeedButton;
    bTakbirKirishF2S: TSpeedButton;
    bTakbirKirishZ2S: TSpeedButton;
    bTakbirKirishZ4F: TSpeedButton;
    bTakbirKirishZ4S: TSpeedButton;
    bTakbirKirishM2S: TSpeedButton;
    bTakbirKirishM3F: TSpeedButton;
    bTakbirKirishW3W: TSpeedButton;
    bTakbirKirishI2S: TSpeedButton;
    bTakbirKirishI4F: TSpeedButton;
    bTakbirQada1A4F: TSpeedButton;
    bTakbirQada1Z4F: TSpeedButton;
    bTakbirQada1Z4S: TSpeedButton;
    bTakbirQada1M3F: TSpeedButton;
    bTakbirQada1W3W: TSpeedButton;
    bTakbirQada1I4F: TSpeedButton;
    bTakbirQada2A4F: TSpeedButton;
    bTakbirQada2Z4F: TSpeedButton;
    bTakbirQada2Z4S: TSpeedButton;
    bTakbirQada2M3F: TSpeedButton;
    bTakbirQada2W3W: TSpeedButton;
    bTakbirQada2I4F: TSpeedButton;
    bTakbirQadaF2F: TSpeedButton;
    bTakbirQadaF2S: TSpeedButton;
    bTakbirQadaZ2S: TSpeedButton;
    bTakbirQadaM2S: TSpeedButton;
    bTakbirQadaI2S: TSpeedButton;
    bTakbirQiyom2A4F: TSpeedButton;
    bTakbirQiyom2F2F: TSpeedButton;
    bTakbirQiyom2F2S: TSpeedButton;
    bTakbirQiyom2Z2S: TSpeedButton;
    bTakbirQiyom2Z4F: TSpeedButton;
    bTakbirQiyom2Z4S: TSpeedButton;
    bTakbirQiyom2M2S: TSpeedButton;
    bTakbirQiyom2M3F: TSpeedButton;
    bTakbirQiyom2W3W: TSpeedButton;
    bTakbirQiyom2I2S: TSpeedButton;
    bTakbirQiyom2I4F: TSpeedButton;
    bTakbirQiyom3A4F: TSpeedButton;
    bTakbirQiyom3Z4F: TSpeedButton;
    bTakbirQiyom3Z4S: TSpeedButton;
    bTakbirQiyom3M3F: TSpeedButton;
    bTakbirQiyom3W3W: TSpeedButton;
    bTakbirQiyom3I4F: TSpeedButton;
    bTakbirQiyom4A4F: TSpeedButton;
    bTakbirQiyom4Z4F: TSpeedButton;
    bTakbirQiyom4Z4S: TSpeedButton;
    bTakbirQiyom4I4F: TSpeedButton;
    bTakbirQunut: TSpeedButton;
    bTakbirRuku1A4F: TSpeedButton;
    bTakbirRuku1F2F: TSpeedButton;
    bTakbirRuku1F2S: TSpeedButton;
    bTakbirRuku1Z2S: TSpeedButton;
    bTakbirRuku1Z4F: TSpeedButton;
    bTakbirRuku1Z4S: TSpeedButton;
    bTakbirRuku1M2S: TSpeedButton;
    bTakbirRuku1M3F: TSpeedButton;
    bTakbirRuku1W3W: TSpeedButton;
    bTakbirRuku1I2S: TSpeedButton;
    bTakbirRuku1I4F: TSpeedButton;
    bTakbirRuku2A4F: TSpeedButton;
    bTakbirRuku2F2F: TSpeedButton;
    bTakbirRuku2F2S: TSpeedButton;
    bTakbirRuku2Z2S: TSpeedButton;
    bTakbirRuku2Z4F: TSpeedButton;
    bTakbirRuku2Z4S: TSpeedButton;
    bTakbirRuku2M2S: TSpeedButton;
    bTakbirRuku2M3F: TSpeedButton;
    bTakbirRuku2W3W: TSpeedButton;
    bTakbirRuku2I2S: TSpeedButton;
    bTakbirRuku2I4F: TSpeedButton;
    bTakbirRuku3A4F: TSpeedButton;
    bTakbirRuku3Z4F: TSpeedButton;
    bTakbirRuku3Z4S: TSpeedButton;
    bTakbirRuku3M3F: TSpeedButton;
    bTakbirRuku3W3W: TSpeedButton;
    bTakbirRuku3I4F: TSpeedButton;
    bTakbirRuku4A4F: TSpeedButton;
    bTakbirRuku4Z4F: TSpeedButton;
    bTakbirRuku4Z4S: TSpeedButton;
    bTakbirRuku4I4F: TSpeedButton;
    bTakbirSajda1_1A4F: TSpeedButton;
    bTakbirSajda1_1F2F: TSpeedButton;
    bTakbirSajda1_1F2S: TSpeedButton;
    bTakbirSajda1_1Z2S: TSpeedButton;
    bTakbirSajda1_1Z4F: TSpeedButton;
    bTakbirSajda1_1Z4S: TSpeedButton;
    bTakbirSajda1_1M2S: TSpeedButton;
    bTakbirSajda1_1M3F: TSpeedButton;
    bTakbirSajda1_1W3W: TSpeedButton;
    bTakbirSajda1_1I2S: TSpeedButton;
    bTakbirSajda1_1I4F: TSpeedButton;
    bTakbirSajda1_2A4F: TSpeedButton;
    bTakbirSajda1_2F2F: TSpeedButton;
    bTakbirSajda1_2F2S: TSpeedButton;
    bTakbirSajda1_2Z2S: TSpeedButton;
    bTakbirSajda1_2Z4F: TSpeedButton;
    bTakbirSajda1_2Z4S: TSpeedButton;
    bTakbirSajda1_2M2S: TSpeedButton;
    bTakbirSajda1_2M3F: TSpeedButton;
    bTakbirSajda1_2W3W: TSpeedButton;
    bTakbirSajda1_2I2S: TSpeedButton;
    bTakbirSajda1_2I4F: TSpeedButton;
    bTakbirSajda2_1A4F: TSpeedButton;
    bTakbirSajda2_1F2F: TSpeedButton;
    bTakbirSajda2_1F2S: TSpeedButton;
    bTakbirSajda2_1Z2S: TSpeedButton;
    bTakbirSajda2_1Z4F: TSpeedButton;
    bTakbirSajda2_1Z4S: TSpeedButton;
    bTakbirSajda2_1M2S: TSpeedButton;
    bTakbirSajda2_1M3F: TSpeedButton;
    bTakbirSajda2_1W3W: TSpeedButton;
    bTakbirSajda2_1I2S: TSpeedButton;
    bTakbirSajda2_1I4F: TSpeedButton;
    bTakbirSajda2_2A4F: TSpeedButton;
    bTakbirSajda2_2F2F: TSpeedButton;
    bTakbirSajda2_2F2S: TSpeedButton;
    bTakbirSajda2_2Z2S: TSpeedButton;
    bTakbirSajda2_2Z4F: TSpeedButton;
    bTakbirSajda2_2Z4S: TSpeedButton;
    bTakbirSajda2_2M2S: TSpeedButton;
    bTakbirSajda2_2M3F: TSpeedButton;
    bTakbirSajda2_2W3W: TSpeedButton;
    bTakbirSajda2_2I2S: TSpeedButton;
    bTakbirSajda2_2I4F: TSpeedButton;
    bTakbirSajda3_1A4F: TSpeedButton;
    bTakbirSajda3_1Z4F: TSpeedButton;
    bTakbirSajda3_1Z4S: TSpeedButton;
    bTakbirSajda3_1M3F: TSpeedButton;
    bTakbirSajda3_1W3W: TSpeedButton;
    bTakbirSajda3_1I4F: TSpeedButton;
    bTakbirSajda3_2A4F: TSpeedButton;
    bTakbirSajda3_2Z4F: TSpeedButton;
    bTakbirSajda3_2Z4S: TSpeedButton;
    bTakbirSajda3_2M3F: TSpeedButton;
    bTakbirSajda3_2W3W: TSpeedButton;
    bTakbirSajda3_2I4F: TSpeedButton;
    bTakbirSajda4_1A4F: TSpeedButton;
    bTakbirSajda4_1Z4F: TSpeedButton;
    bTakbirSajda4_1Z4S: TSpeedButton;
    bTakbirSajda4_1I4F: TSpeedButton;
    bTakbirSajda4_2A4F: TSpeedButton;
    bTakbirSajda4_2Z4F: TSpeedButton;
    bTakbirSajda4_2Z4S: TSpeedButton;
    bTakbirSajda4_2I4F: TSpeedButton;
    bTasbehotA4F: TSpeedButton;
    bTasbehotF2F: TSpeedButton;
    bTasbehotZ2S: TSpeedButton;
    bTasbehotM2S: TSpeedButton;
    bTasbehotW3W: TSpeedButton;
    bTashahhud1A4F: TSpeedButton;
    bTashahhud1Z4F: TSpeedButton;
    bTashahhud1Z4S: TSpeedButton;
    bTashahhud1M3F: TSpeedButton;
    bTashahhud1W3W: TSpeedButton;
    bTashahhud1I4F: TSpeedButton;
    bTashahhud2A4F: TSpeedButton;
    bTashahhud2Z4F: TSpeedButton;
    bTashahhud2Z4S: TSpeedButton;
    bTashahhud2M3F: TSpeedButton;
    bTashahhud2W3W: TSpeedButton;
    bTashahhud2I4F: TSpeedButton;
    bTashahhudF2F: TSpeedButton;
    bTashahhudF2S: TSpeedButton;
    bTashahhudZ2S: TSpeedButton;
    bTashahhudM2S: TSpeedButton;
    bTashahhudI2S: TSpeedButton;
    bTasme1A4F: TSpeedButton;
    bTasme1F2F: TSpeedButton;
    bTasme1F2S: TSpeedButton;
    bTasme1Z2S: TSpeedButton;
    bTasme1Z4F: TSpeedButton;
    bTasme1Z4S: TSpeedButton;
    bTasme1M2S: TSpeedButton;
    bTasme1M3F: TSpeedButton;
    bTasme1W3W: TSpeedButton;
    bTasme1I2S: TSpeedButton;
    bTasme1I4F: TSpeedButton;
    bTasme2A4F: TSpeedButton;
    bTasme2F2F: TSpeedButton;
    bTasme2F2S: TSpeedButton;
    bTasme2Z2S: TSpeedButton;
    bTasme2Z4F: TSpeedButton;
    bTasme2Z4S: TSpeedButton;
    bTasme2M2S: TSpeedButton;
    bTasme2M3F: TSpeedButton;
    bTasme2W3W: TSpeedButton;
    bTasme2I2S: TSpeedButton;
    bTasme2I4F: TSpeedButton;
    bTasme3A4F: TSpeedButton;
    bTasme3Z4F: TSpeedButton;
    bTasme3Z4S: TSpeedButton;
    bTasme3M3F: TSpeedButton;
    bTasme3W3W: TSpeedButton;
    bTasme3I4F: TSpeedButton;
    bTasme4A4F: TSpeedButton;
    bTasme4Z4F: TSpeedButton;
    bTasme4Z4S: TSpeedButton;
    bTasme4I4F: TSpeedButton;
    cbSalomA4F: TScrollBox;
    cbSalomF2F: TScrollBox;
    cbSalomZ2S: TScrollBox;
    cbSalomZ4F: TScrollBox;
    cbSalomZ4S: TScrollBox;
    ImageMan: TImage;
    ImageWoman: TImage;
    IniPropStorage: TIniPropStorage;
    lAla1_1A4F: TLabel;
    lAla1_1F2F: TLabel;
    lAla1_1F2S: TLabel;
    lAla1_1Z2S: TLabel;
    lAla1_1Z4F: TLabel;
    lAla1_1Z4S: TLabel;
    lAla1_1M2S: TLabel;
    lAla1_1M3F: TLabel;
    lAla1_1W3W: TLabel;
    lAla1_1I2S: TLabel;
    lAla1_1I4F: TLabel;
    lAla1_2A4F: TLabel;
    lAla1_2F2F: TLabel;
    lAla1_2F2S: TLabel;
    lAla1_2Z2S: TLabel;
    lAla1_2Z4F: TLabel;
    lAla1_2Z4S: TLabel;
    lAla1_2M2S: TLabel;
    lAla1_2M3F: TLabel;
    lAla1_2W3W: TLabel;
    lAla1_2I2S: TLabel;
    lAla1_2I4F: TLabel;
    lAla2_1A4F: TLabel;
    lAla2_1F2F: TLabel;
    lAla2_1F2S: TLabel;
    lAla2_1Z2S: TLabel;
    lAla2_1Z4F: TLabel;
    lAla2_1Z4S: TLabel;
    lAla2_1M2S: TLabel;
    lAla2_1M3F: TLabel;
    lAla2_1W3W: TLabel;
    lAla2_1I2S: TLabel;
    lAla2_1I4F: TLabel;
    lAla2_2A4F: TLabel;
    lAla2_2F2F: TLabel;
    lAla2_2F2S: TLabel;
    lAla2_2Z2S: TLabel;
    lAla2_2Z4F: TLabel;
    lAla2_2Z4S: TLabel;
    lAla2_2M2S: TLabel;
    lAla2_2M3F: TLabel;
    lAla2_2W3W: TLabel;
    lAla2_2I2S: TLabel;
    lAla2_2I4F: TLabel;
    lAla3_1A4F: TLabel;
    lAla3_1Z4F: TLabel;
    lAla3_1Z4S: TLabel;
    lAla3_1M3F: TLabel;
    lAla3_1W3W: TLabel;
    lAla3_1I4F: TLabel;
    lAla3_2A4F: TLabel;
    lAla3_2Z4F: TLabel;
    lAla3_2Z4S: TLabel;
    lAla3_2M3F: TLabel;
    lAla3_2W3W: TLabel;
    lAla3_2I4F: TLabel;
    lAla4_1A4F: TLabel;
    lAla4_1Z4F: TLabel;
    lAla4_1Z4S: TLabel;
    lAla4_1I4F: TLabel;
    lAla4_2A4F: TLabel;
    lAla4_2Z4F: TLabel;
    lAla4_2Z4S: TLabel;
    lAla4_2I4F: TLabel;
    lAsr: TLabel;
    lAziym1A4F: TLabel;
    lAziym1F2F: TLabel;
    lAziym1F2S: TLabel;
    lAziym1Z2S: TLabel;
    lAziym1Z4F: TLabel;
    lAziym1Z4S: TLabel;
    lAziym1M2S: TLabel;
    lAziym1M3F: TLabel;
    lAziym1W3W: TLabel;
    lAziym1I2S: TLabel;
    lAziym1I4F: TLabel;
    lAziym2A4F: TLabel;
    lAziym2F2F: TLabel;
    lAziym2F2S: TLabel;
    lAziym2Z2S: TLabel;
    lAziym2Z4F: TLabel;
    lAziym2Z4S: TLabel;
    lAziym2M2S: TLabel;
    lAziym2M3F: TLabel;
    lAziym2W3W: TLabel;
    lAziym2I2S: TLabel;
    lAziym2I4F: TLabel;
    lAziym3A4F: TLabel;
    lAziym3Z4F: TLabel;
    lAziym3Z4S: TLabel;
    lAziym3M3F: TLabel;
    lAziym3W3W: TLabel;
    lAziym3I4F: TLabel;
    lAziym4A4F: TLabel;
    lAziym4Z4F: TLabel;
    lAziym4Z4S: TLabel;
    lAziym4I4F: TLabel;
    lAzonA4F: TLabel;
    lAzonF2S: TLabel;
    lAzonDuoA4F: TLabel;
    lAzonDuoF2S: TLabel;
    lAzonDuoZ4S: TLabel;
    lAzonDuoM3F: TLabel;
    lAzonDuoI4F: TLabel;
    lAzonZ4S: TLabel;
    lAzonM3F: TLabel;
    lAzonI4F: TLabel;
    lBasmala1A4F: TLabel;
    lBasmala1F2F: TLabel;
    lBasmala1F2S: TLabel;
    lBasmala1Z2S: TLabel;
    lBasmala1Z4F: TLabel;
    lBasmala1Z4S: TLabel;
    lBasmala1M2S: TLabel;
    lBasmala1M3F: TLabel;
    lBasmala1W3W: TLabel;
    lBasmala1I2S: TLabel;
    lBasmala1I4F: TLabel;
    lBasmala2A4F: TLabel;
    lBasmala2F2F: TLabel;
    lBasmala2F2S: TLabel;
    lBasmala2Z2S: TLabel;
    lBasmala2Z4F: TLabel;
    lBasmala2Z4S: TLabel;
    lBasmala2M2S: TLabel;
    lBasmala2M3F: TLabel;
    lBasmala2W3W: TLabel;
    lBasmala2I2S: TLabel;
    lBasmala2I4F: TLabel;
    lBasmala3A4F: TLabel;
    lBasmala3Z4F: TLabel;
    lBasmala3Z4S: TLabel;
    lBasmala3M3F: TLabel;
    lBasmala3W3W: TLabel;
    lBasmala3I4F: TLabel;
    lBasmala4A4F: TLabel;
    lBasmala4Z4F: TLabel;
    lBasmala4Z4S: TLabel;
    lBasmala4I4F: TLabel;
    lFajr: TLabel;
    lDuoA4F: TLabel;
    lDuoF2F: TLabel;
    lDuoFA4F: TLabel;
    lDuoFF2F: TLabel;
    lDuoFZ4F: TLabel;
    lDuoFM3F: TLabel;
    lDuoFI4F: TLabel;
    lDuoZ2S: TLabel;
    lDuoM2S: TLabel;
    lDuoW3W: TLabel;
    lFalaqF2F: TLabel;
    lFalaqZ2S: TLabel;
    lFalaqZ4S: TLabel;
    lFalaqM2S: TLabel;
    lFalaqW3W: TLabel;
    lFalaqI2S: TLabel;
    lFotiha1A4F: TLabel;
    lFotiha1F2F: TLabel;
    lFotiha1F2S: TLabel;
    lFotiha1Z2S: TLabel;
    lFotiha1Z4F: TLabel;
    lFotiha1Z4S: TLabel;
    lFotiha1M2S: TLabel;
    lFotiha1M3F: TLabel;
    lFotiha1W3W: TLabel;
    lFotiha1I2S: TLabel;
    lFotiha1I4F: TLabel;
    lFotiha2A4F: TLabel;
    lFotiha2F2F: TLabel;
    lFotiha2F2S: TLabel;
    lFotiha2Z2S: TLabel;
    lFotiha2Z4F: TLabel;
    lFotiha2Z4S: TLabel;
    lFotiha2M2S: TLabel;
    lFotiha2M3F: TLabel;
    lFotiha2W3W: TLabel;
    lFotiha2I2S: TLabel;
    lFotiha2I4F: TLabel;
    lFotiha3A4F: TLabel;
    lFotiha3Z4F: TLabel;
    lFotiha3Z4S: TLabel;
    lFotiha3M3F: TLabel;
    lFotiha3W3W: TLabel;
    lFotiha3I4F: TLabel;
    lFotiha4A4F: TLabel;
    lFotiha4Z4F: TLabel;
    lFotiha4Z4S: TLabel;
    lFotiha4I4F: TLabel;
    lHamd1A4F: TLabel;
    lHamd1F2F: TLabel;
    lHamd1F2S: TLabel;
    lHamd1Z2S: TLabel;
    lHamd1Z4F: TLabel;
    lHamd1Z4S: TLabel;
    lHamd1M2S: TLabel;
    lHamd1M3F: TLabel;
    lHamd1W3W: TLabel;
    lHamd1I2S: TLabel;
    lHamd1I4F: TLabel;
    lHamd2A4F: TLabel;
    lHamd2F2F: TLabel;
    lHamd2F2S: TLabel;
    lHamd2Z2S: TLabel;
    lHamd2Z4F: TLabel;
    lHamd2Z4S: TLabel;
    lHamd2M2S: TLabel;
    lHamd2M3F: TLabel;
    lHamd2W3W: TLabel;
    lHamd2I2S: TLabel;
    lHamd2I4F: TLabel;
    lHamd3A4F: TLabel;
    lHamd3Z4F: TLabel;
    lHamd3Z4S: TLabel;
    lHamd3M3F: TLabel;
    lHamd3W3W: TLabel;
    lHamd3I4F: TLabel;
    lHamd4A4F: TLabel;
    lHamd4Z4F: TLabel;
    lHamd4Z4S: TLabel;
    lHamd4I4F: TLabel;
    lIqomatA4F: TLabel;
    lIqomatF2F: TLabel;
    lIqomatZ4F: TLabel;
    lIqomatM3F: TLabel;
    lIqomatI4F: TLabel;
    lIxlosA4F: TLabel;
    lIxlosF2S: TLabel;
    lIxlosZ4F: TLabel;
    lIxlosZ4S: TLabel;
    lIxlosM3F: TLabel;
    lIxlosW3W: TLabel;
    lIxlosI4F: TLabel;
    lKavsarA4F: TLabel;
    lKavsarF2S: TLabel;
    lKavsarZ4F: TLabel;
    lKavsarZ4S: TLabel;
    lKavsarM3F: TLabel;
    lKavsarI4F: TLabel;
    lKursiA4F: TLabel;
    lKursiF2F: TLabel;
    lKursiZ2S: TLabel;
    lKursiM2S: TLabel;
    lKursiW3W: TLabel;
    lNasF2F: TLabel;
    lNasZ2S: TLabel;
    lNasZ4S: TLabel;
    lNasM2S: TLabel;
    lNasW3W: TLabel;
    lNasI2S: TLabel;
    lNiyatA4F: TLabel;
    lNiyatF2F: TLabel;
    lNiyatF2S: TLabel;
    lNiyatZ2S: TLabel;
    lNiyatZ4F: TLabel;
    lNiyatZ4S: TLabel;
    lNiyatM2S: TLabel;
    lNiyatM3F: TLabel;
    lNiyatW3W: TLabel;
    lNiyatI2S: TLabel;
    lNiyatI4F: TLabel;
    lZuhr: TLabel;
    lQunut: TLabel;
    lRobbanaA4F: TLabel;
    lRobbanaF2F: TLabel;
    lRobbanaF2S: TLabel;
    lRobbanaZ2S: TLabel;
    lRobbanaZ4F: TLabel;
    lRobbanaZ4S: TLabel;
    lRobbanaM2S: TLabel;
    lRobbanaM3F: TLabel;
    lRobbanaW3W: TLabel;
    lRobbanaI2S: TLabel;
    lRobbanaI4F: TLabel;
    lSalavotA4F: TLabel;
    lSalavotF2F: TLabel;
    lSalavotF2S: TLabel;
    lSalavotZ2S: TLabel;
    lSalavotZ4F: TLabel;
    lSalavotZ4S: TLabel;
    lSalavotM2S: TLabel;
    lSalavotM3F: TLabel;
    lSalavotW3W: TLabel;
    lSalavotI2S: TLabel;
    lSalavotI4F: TLabel;
    lSalomA4F: TLabel;
    lSalomF2F: TLabel;
    lSalomF2S: TLabel;
    lSalomZ2S: TLabel;
    lSalomZ4F: TLabel;
    lSalomZ4S: TLabel;
    lSalomM2S: TLabel;
    lSalomM3F: TLabel;
    lSalomW3W: TLabel;
    lSalomI2S: TLabel;
    lSalomI4F: TLabel;
    lSanoA4F: TLabel;
    lSanoF2F: TLabel;
    lSanoF2S: TLabel;
    lSanoZ2S: TLabel;
    lSanoZ4F: TLabel;
    lSanoZ4S: TLabel;
    lSanoM2S: TLabel;
    lSanoM3F: TLabel;
    lSanoW3W: TLabel;
    lSanoI2S: TLabel;
    lSanoI4F: TLabel;
    lMaghrib: TLabel;
    lTaavvuzA4F: TLabel;
    lTaavvuzF2F: TLabel;
    lTaavvuzF2S: TLabel;
    lTaavvuzZ2S: TLabel;
    lTaavvuzZ4F: TLabel;
    lTaavvuzZ4S: TLabel;
    lTaavvuzM2S: TLabel;
    lTaavvuzM3F: TLabel;
    lTaavvuzW3W: TLabel;
    lTaavvuzI2S: TLabel;
    lTaavvuzI4F: TLabel;
    lTakbirJalsa1A4F: TLabel;
    lTakbirJalsa1F2F: TLabel;
    lTakbirJalsa1F2S: TLabel;
    lTakbirJalsa1Z2S: TLabel;
    lTakbirJalsa1Z4F: TLabel;
    lTakbirJalsa1Z4S: TLabel;
    lTakbirJalsa1M2S: TLabel;
    lTakbirJalsa1M3F: TLabel;
    lTakbirJalsa1W3W: TLabel;
    lTakbirJalsa1I2S: TLabel;
    lTakbirJalsa1I4F: TLabel;
    lTakbirJalsa2A4F: TLabel;
    lTakbirJalsa2F2F: TLabel;
    lTakbirJalsa2F2S: TLabel;
    lTakbirJalsa2Z2S: TLabel;
    lTakbirJalsa2Z4F: TLabel;
    lTakbirJalsa2Z4S: TLabel;
    lTakbirJalsa2M2S: TLabel;
    lTakbirJalsa2M3F: TLabel;
    lTakbirJalsa2W3W: TLabel;
    lTakbirJalsa2I2S: TLabel;
    lTakbirJalsa2I4F: TLabel;
    lTakbirJalsa3A4F: TLabel;
    lTakbirJalsa3Z4F: TLabel;
    lTakbirJalsa3Z4S: TLabel;
    lTakbirJalsa3M3F: TLabel;
    lTakbirJalsa3W3W: TLabel;
    lTakbirJalsa3I4F: TLabel;
    lTakbirJalsa4A4F: TLabel;
    lTakbirJalsa4Z4F: TLabel;
    lTakbirJalsa4Z4S: TLabel;
    lTakbirJalsa4I4F: TLabel;
    lTakbirKirishA4F: TLabel;
    lTakbirKirishF2F: TLabel;
    lTakbirKirishF2S: TLabel;
    lTakbirKirishZ2S: TLabel;
    lTakbirKirishZ4F: TLabel;
    lTakbirKirishZ4S: TLabel;
    lTakbirKirishM2S: TLabel;
    lTakbirKirishM3F: TLabel;
    lTakbirKirishW3W: TLabel;
    lTakbirKirishI2S: TLabel;
    lTakbirKirishI4F: TLabel;
    lTakbirQada1A4F: TLabel;
    lTakbirQada1Z4F: TLabel;
    lTakbirQada1Z4S: TLabel;
    lTakbirQada1M3F: TLabel;
    lTakbirQada1W3W: TLabel;
    lTakbirQada1I4F: TLabel;
    lTakbirQada2A4F: TLabel;
    lTakbirQada2Z4F: TLabel;
    lTakbirQada2Z4S: TLabel;
    lTakbirQada2M3F: TLabel;
    lTakbirQada2W3W: TLabel;
    lTakbirQada2I4F: TLabel;
    lTakbirQadaF2F: TLabel;
    lTakbirQadaF2S: TLabel;
    lTakbirQadaZ2S: TLabel;
    lTakbirQadaM2S: TLabel;
    lTakbirQadaI2S: TLabel;
    lTakbirQiyom2A4F: TLabel;
    lTakbirQiyom2F2F: TLabel;
    lTakbirQiyom2F2S: TLabel;
    lTakbirQiyom2Z2S: TLabel;
    lTakbirQiyom2Z4F: TLabel;
    lTakbirQiyom2Z4S: TLabel;
    lTakbirQiyom2M2S: TLabel;
    lTakbirQiyom2M3F: TLabel;
    lTakbirQiyom2W3W: TLabel;
    lTakbirQiyom2I2S: TLabel;
    lTakbirQiyom2I4F: TLabel;
    lTakbirQiyom3A4F: TLabel;
    lTakbirQiyom3Z4F: TLabel;
    lTakbirQiyom3Z4S: TLabel;
    lTakbirQiyom3M3F: TLabel;
    lTakbirQiyom3W3W: TLabel;
    lTakbirQiyom3I4F: TLabel;
    lTakbirQiyom4A4F: TLabel;
    lTakbirQiyom4Z4F: TLabel;
    lTakbirQiyom4Z4S: TLabel;
    lTakbirQiyom4I4F: TLabel;
    lTakbirQunut: TLabel;
    lTakbirRuku1A4F: TLabel;
    lTakbirRuku1F2F: TLabel;
    lTakbirRuku1F2S: TLabel;
    lTakbirRuku1Z2S: TLabel;
    lTakbirRuku1Z4F: TLabel;
    lTakbirRuku1Z4S: TLabel;
    lTakbirRuku1M2S: TLabel;
    lTakbirRuku1M3F: TLabel;
    lTakbirRuku1W3W: TLabel;
    lTakbirRuku1I2S: TLabel;
    lTakbirRuku1I4F: TLabel;
    lTakbirRuku2A4F: TLabel;
    lTakbirRuku2F2F: TLabel;
    lTakbirRuku2F2S: TLabel;
    lTakbirRuku2Z2S: TLabel;
    lTakbirRuku2Z4F: TLabel;
    lTakbirRuku2Z4S: TLabel;
    lTakbirRuku2M2S: TLabel;
    lTakbirRuku2M3F: TLabel;
    lTakbirRuku2W3W: TLabel;
    lTakbirRuku2I2S: TLabel;
    lTakbirRuku2I4F: TLabel;
    lTakbirRuku3A4F: TLabel;
    lTakbirRuku3Z4F: TLabel;
    lTakbirRuku3Z4S: TLabel;
    lTakbirRuku3M3F: TLabel;
    lTakbirRuku3W3W: TLabel;
    lTakbirRuku3I4F: TLabel;
    lTakbirRuku4A4F: TLabel;
    lTakbirRuku4Z4F: TLabel;
    lTakbirRuku4Z4S: TLabel;
    lTakbirRuku4I4F: TLabel;
    lTakbirSajda1_1A4F: TLabel;
    lTakbirSajda1_1F2F: TLabel;
    lTakbirSajda1_1F2S: TLabel;
    lTakbirSajda1_1Z2S: TLabel;
    lTakbirSajda1_1Z4F: TLabel;
    lTakbirSajda1_1Z4S: TLabel;
    lTakbirSajda1_1M2S: TLabel;
    lTakbirSajda1_1M3F: TLabel;
    lTakbirSajda1_1W3W: TLabel;
    lTakbirSajda1_1I2S: TLabel;
    lTakbirSajda1_1I4F: TLabel;
    lTakbirSajda1_2A4F: TLabel;
    lTakbirSajda1_2F2F: TLabel;
    lTakbirSajda1_2F2S: TLabel;
    lTakbirSajda1_2Z2S: TLabel;
    lTakbirSajda1_2Z4F: TLabel;
    lTakbirSajda1_2Z4S: TLabel;
    lTakbirSajda1_2M2S: TLabel;
    lTakbirSajda1_2M3F: TLabel;
    lTakbirSajda1_2W3W: TLabel;
    lTakbirSajda1_2I2S: TLabel;
    lTakbirSajda1_2I4F: TLabel;
    lTakbirSajda2_1A4F: TLabel;
    lTakbirSajda2_1F2F: TLabel;
    lTakbirSajda2_1F2S: TLabel;
    lTakbirSajda2_1Z2S: TLabel;
    lTakbirSajda2_1Z4F: TLabel;
    lTakbirSajda2_1Z4S: TLabel;
    lTakbirSajda2_1M2S: TLabel;
    lTakbirSajda2_1M3F: TLabel;
    lTakbirSajda2_1W3W: TLabel;
    lTakbirSajda2_1I2S: TLabel;
    lTakbirSajda2_1I4F: TLabel;
    lTakbirSajda2_2A4F: TLabel;
    lTakbirSajda2_2F2F: TLabel;
    lTakbirSajda2_2F2S: TLabel;
    lTakbirSajda2_2Z2S: TLabel;
    lTakbirSajda2_2Z4S: TLabel;
    lTakbirSajda2_2Z4S1: TLabel;
    lTakbirSajda2_2M2S: TLabel;
    lTakbirSajda2_2M3F: TLabel;
    lTakbirSajda2_2W3W: TLabel;
    lTakbirSajda2_2I2S: TLabel;
    lTakbirSajda2_2I4F: TLabel;
    lTakbirSajda3_1A4F: TLabel;
    lTakbirSajda3_1Z4F: TLabel;
    lTakbirSajda3_1Z4S: TLabel;
    lTakbirSajda3_1M3F: TLabel;
    lTakbirSajda3_1W3W: TLabel;
    lTakbirSajda3_1I4F: TLabel;
    lTakbirSajda3_2A4F: TLabel;
    lTakbirSajda3_2Z4F: TLabel;
    lTakbirSajda3_2Z4S: TLabel;
    lTakbirSajda3_2M3F: TLabel;
    lTakbirSajda3_2W3W: TLabel;
    lTakbirSajda3_2I4F: TLabel;
    lTakbirSajda4_1A4F: TLabel;
    lTakbirSajda4_1Z4F: TLabel;
    lTakbirSajda4_1Z4S: TLabel;
    lTakbirSajda4_1I4F: TLabel;
    lTakbirSajda4_2A4F: TLabel;
    lTakbirSajda4_2Z4F: TLabel;
    lTakbirSajda4_2Z4S: TLabel;
    lTakbirSajda4_2I4F: TLabel;
    lTasbehotA4F: TLabel;
    lTasbehotF2F: TLabel;
    lTasbehotZ2S: TLabel;
    lTasbehotM2S: TLabel;
    lTasbehotW3W: TLabel;
    lTashahhud1A4F: TLabel;
    lTashahhud1Z4F: TLabel;
    lTashahhud1Z4S: TLabel;
    lTashahhud1M3F: TLabel;
    lTashahhud1W3W: TLabel;
    lTashahhud1I4F: TLabel;
    lTashahhud2A4F: TLabel;
    lTashahhud2Z4F: TLabel;
    lTashahhud2Z4S: TLabel;
    lTashahhud2M3F: TLabel;
    lTashahhud2W3W: TLabel;
    lTashahhud2I4F: TLabel;
    lTashahhudF2F: TLabel;
    lTashahhudF2S: TLabel;
    lTashahhudZ2S: TLabel;
    lTashahhudM2S: TLabel;
    lTashahhudI2S: TLabel;
    lTasme1A4F: TLabel;
    lTasme1F2F: TLabel;
    lTasme1F2S: TLabel;
    lTasme1Z2S: TLabel;
    lTasme1Z4F: TLabel;
    lTasme1Z4S: TLabel;
    lTasme1M2S: TLabel;
    lTasme1M3F: TLabel;
    lTasme1W3W: TLabel;
    lTasme1I2S: TLabel;
    lTasme1I4F: TLabel;
    lTasme2A4F: TLabel;
    lTasme2F2F: TLabel;
    lTasme2F2S: TLabel;
    lTasme2Z2S: TLabel;
    lTasme2Z4F: TLabel;
    lTasme2Z4S: TLabel;
    lTasme2M2S: TLabel;
    lTasme2M3F: TLabel;
    lTasme2W3W: TLabel;
    lTasme2I2S: TLabel;
    lTasme2I4F: TLabel;
    lTasme3A4F: TLabel;
    lTasme3Z4F: TLabel;
    lTasme3Z4S: TLabel;
    lTasme3M3F: TLabel;
    lTasme3W3W: TLabel;
    lTasme3I4F: TLabel;
    lTasme4A4F: TLabel;
    lTasme4Z4F: TLabel;
    lTasme4Z4S: TLabel;
    lTasme4I4F: TLabel;
    lIsha: TLabel;
    MainMenu: TMainMenu;
    miAbout: TMenuItem;
    miEdit: TMenuItem;
    miQuit: TMenuItem;
    miFile: TMenuItem;
    miHelp: TMenuItem;
    miImage: TMenuItem;
    miNext: TMenuItem;
    miPrevious: TMenuItem;
    miSettings: TMenuItem;
    N1: TMenuItem;
    pAla1_1A4F: TPanel;
    pAla1_1F2F: TPanel;
    pAla1_1F2S: TPanel;
    pAla1_1Z2S: TPanel;
    pAla1_1Z4F: TPanel;
    pAla1_1Z4S: TPanel;
    pAla1_1M2S: TPanel;
    pAla1_1M3F: TPanel;
    pAla1_1W3W: TPanel;
    pAla1_1I2S: TPanel;
    pAla1_1I4F: TPanel;
    pAla1_2A4F: TPanel;
    pAla1_2F2F: TPanel;
    pAla1_2F2S: TPanel;
    pAla1_2Z2S: TPanel;
    pAla1_2Z4F: TPanel;
    pAla1_2Z4S: TPanel;
    pAla1_2M2S: TPanel;
    pAla1_2M3F: TPanel;
    pAla1_2W3W: TPanel;
    pAla1_2I2S: TPanel;
    pAla1_2I4F: TPanel;
    pAla2_1A4F: TPanel;
    pAla2_1F2F: TPanel;
    pAla2_1F2S: TPanel;
    pAla2_1Z2S: TPanel;
    pAla2_1Z4F: TPanel;
    pAla2_1Z4S: TPanel;
    pAla2_1M2S: TPanel;
    pAla2_1M3F: TPanel;
    pAla2_1W3W: TPanel;
    pAla2_1I2S: TPanel;
    pAla2_1I4F: TPanel;
    pAla2_2A4F: TPanel;
    pAla2_2F2F: TPanel;
    pAla2_2F2S: TPanel;
    pAla2_2Z2S: TPanel;
    pAla2_2Z4F: TPanel;
    pAla2_2Z4S: TPanel;
    pAla2_2M2S: TPanel;
    pAla2_2M3F: TPanel;
    pAla2_2W3W: TPanel;
    pAla2_2I2S: TPanel;
    pAla2_2I4F: TPanel;
    pAla3_1A4F: TPanel;
    pAla3_1Z4F: TPanel;
    pAla3_1Z4S: TPanel;
    pAla3_1M3F: TPanel;
    pAla3_1W3W: TPanel;
    pAla3_1I4F: TPanel;
    pAla3_2A4F: TPanel;
    pAla3_2Z4F: TPanel;
    pAla3_2Z4S: TPanel;
    pAla3_2M3F: TPanel;
    pAla3_2W3W: TPanel;
    pAla3_2I4F: TPanel;
    pAla4_1A4F: TPanel;
    pAla4_1Z4F: TPanel;
    pAla4_1Z4S: TPanel;
    pAla4_1I4F: TPanel;
    pAla4_2A4F: TPanel;
    pAla4_2Z4F: TPanel;
    pAla4_2Z4S: TPanel;
    pAla4_2I4F: TPanel;
    pAziym1A4F: TPanel;
    pAziym1F2F: TPanel;
    pAziym1F2S: TPanel;
    pAziym1Z2S: TPanel;
    pAziym1Z4F: TPanel;
    pAziym1Z4S: TPanel;
    pAziym1M2S: TPanel;
    pAziym1M3F: TPanel;
    pAziym1W3W: TPanel;
    pAziym1I2S: TPanel;
    pAziym1I4F: TPanel;
    pAziym2A4F: TPanel;
    pAziym2F2F: TPanel;
    pAziym2F2S: TPanel;
    pAziym2Z2S: TPanel;
    pAziym2Z4F: TPanel;
    pAziym2Z4S: TPanel;
    pAziym2M2S: TPanel;
    pAziym2M3F: TPanel;
    pAziym2W3W: TPanel;
    pAziym2I2S: TPanel;
    pAziym2I4F: TPanel;
    pAziym3A4F: TPanel;
    pAziym3Z4F: TPanel;
    pAziym3Z4S: TPanel;
    pAziym3M3F: TPanel;
    pAziym3W3W: TPanel;
    pAziym3I4F: TPanel;
    pAziym4A4F: TPanel;
    pAziym4Z4F: TPanel;
    pAziym4Z4S: TPanel;
    pAziym4I4F: TPanel;
    pAzonA4F: TPanel;
    pAzonF2S: TPanel;
    pAzonDuoA4F: TPanel;
    pAzonDuoF2S: TPanel;
    pAzonDuoZ4S: TPanel;
    pAzonDuoM3F: TPanel;
    pAzonDuoI4F: TPanel;
    pAzonZ4S: TPanel;
    pAzonM3F: TPanel;
    pAzonI4F: TPanel;
    pBasmala1A4F: TPanel;
    pBasmala1F2F: TPanel;
    pBasmala1F2S: TPanel;
    pBasmala1Z2S: TPanel;
    pBasmala1Z4F: TPanel;
    pBasmala1Z4S: TPanel;
    pBasmala1M2S: TPanel;
    pBasmala1M3F: TPanel;
    pBasmala1W3W: TPanel;
    pBasmala1I2S: TPanel;
    pBasmala1I4F: TPanel;
    pBasmala2A4F: TPanel;
    pBasmala2F2F: TPanel;
    pBasmala2F2S: TPanel;
    pBasmala2Z2S: TPanel;
    pBasmala2Z4F: TPanel;
    pBasmala2Z4S: TPanel;
    pBasmala2M2S: TPanel;
    pBasmala2M3F: TPanel;
    pBasmala2W3W: TPanel;
    pBasmala2I2S: TPanel;
    pBasmala2I4F: TPanel;
    pBasmala3A4F: TPanel;
    pBasmala3Z4F: TPanel;
    pBasmala3Z4S: TPanel;
    pBasmala3M3F: TPanel;
    pBasmala3W3W: TPanel;
    pBasmala3I4F: TPanel;
    pBasmala4A4F: TPanel;
    pBasmala4Z4F: TPanel;
    pBasmala4Z4S: TPanel;
    pBasmala4I4F: TPanel;
    pBottom: TPanel;
    pcA4F: TPageControl;
    pcAsr: TPageControl;
    pcF2F: TPageControl;
    pcF2S: TPageControl;
    pcFajr: TPageControl;
    pcMain: TPageControl;
    pcZ2S: TPageControl;
    pcZ4F: TPageControl;
    pcZ4S: TPageControl;
    pcZuhr: TPageControl;
    pcM2S: TPageControl;
    pcM3F: TPageControl;
    pcMaghrib: TPageControl;
    pcW3W: TPageControl;
    pcI2S: TPageControl;
    pcI4F: TPageControl;
    pcIsha: TPageControl;
    pDuoA4F: TPanel;
    pDuoF2F: TPanel;
    pDuoFA4F: TPanel;
    pDuoFF2F: TPanel;
    pDuoFZ4F: TPanel;
    pDuoFM3F: TPanel;
    pDuoFI4F: TPanel;
    pDuoZ2S: TPanel;
    pDuoM2S: TPanel;
    pDuoW3W: TPanel;
    pFalaqF2F: TPanel;
    pFalaqZ2S: TPanel;
    pFalaqZ4S: TPanel;
    pFalaqM2S: TPanel;
    pFalaqW3W: TPanel;
    pFalaqI2S: TPanel;
    pFotiha1A4F: TPanel;
    pFotiha1F2F: TPanel;
    pFotiha1F2S: TPanel;
    pFotiha1Z2S: TPanel;
    pFotiha1Z4F: TPanel;
    pFotiha1Z4S: TPanel;
    pFotiha1M2S: TPanel;
    pFotiha1M3F: TPanel;
    pFotiha1W3W: TPanel;
    pFotiha1I2S: TPanel;
    pFotiha1I4F: TPanel;
    pFotiha2A4F: TPanel;
    pFotiha2F2F: TPanel;
    pFotiha2F2S: TPanel;
    pFotiha2Z2S: TPanel;
    pFotiha2Z4F: TPanel;
    pFotiha2Z4S: TPanel;
    pFotiha2M2S: TPanel;
    pFotiha2M3F: TPanel;
    pFotiha2W3W: TPanel;
    pFotiha2I2S: TPanel;
    pFotiha2I4F: TPanel;
    pFotiha3A4F: TPanel;
    pFotiha3Z4F: TPanel;
    pFotiha3Z4S: TPanel;
    pFotiha3M3F: TPanel;
    pFotiha3W3W: TPanel;
    pFotiha3I4F: TPanel;
    pFotiha4A4F: TPanel;
    pFotiha4Z4F: TPanel;
    pFotiha4Z4S: TPanel;
    pFotiha4I4F: TPanel;
    pHamd1A4F: TPanel;
    pHamd1F2F: TPanel;
    pHamd1F2S: TPanel;
    pHamd1Z2S: TPanel;
    pHamd1Z4F: TPanel;
    pHamd1Z4S: TPanel;
    pHamd1M2S: TPanel;
    pHamd1M3F: TPanel;
    pHamd1W3W: TPanel;
    pHamd1I2S: TPanel;
    pHamd1I4F: TPanel;
    pHamd2A4F: TPanel;
    pHamd2F2F: TPanel;
    pHamd2F2S: TPanel;
    pHamd2Z2S: TPanel;
    pHamd2Z4F: TPanel;
    pHamd2Z4S: TPanel;
    pHamd2M2S: TPanel;
    pHamd2M3F: TPanel;
    pHamd2W3W: TPanel;
    pHamd2I2S: TPanel;
    pHamd2I4F: TPanel;
    pHamd3A4F: TPanel;
    pHamd3Z4F: TPanel;
    pHamd3Z4S: TPanel;
    pHamd3M3F: TPanel;
    pHamd3W3W: TPanel;
    pHamd3I4F: TPanel;
    pHamd4A4F: TPanel;
    pHamd4Z4F: TPanel;
    pHamd4Z4S: TPanel;
    pHamd4I4F: TPanel;
    pImage: TPanel;
    pIqomatA4F: TPanel;
    pIqomatF2F: TPanel;
    pIqomatZ4F: TPanel;
    pIqomatM3F: TPanel;
    pIqomatI4F: TPanel;
    pIxlosA4F: TPanel;
    pIxlosF2S: TPanel;
    pIxlosZ4F: TPanel;
    pIxlosZ4S: TPanel;
    pIxlosM3F: TPanel;
    pIxlosW3W: TPanel;
    pIxlosI4F: TPanel;
    pKavsarA4F: TPanel;
    pKavsarF2S: TPanel;
    pKavsarZ4F: TPanel;
    pKavsarZ4S: TPanel;
    pKavsarM3F: TPanel;
    pKavsarI4F: TPanel;
    pKursiA4F: TPanel;
    pKursiF2F: TPanel;
    pKursiZ2S: TPanel;
    pKursiM2S: TPanel;
    pKursiW3W: TPanel;
    pMain: TPanel;
    pNasF2F: TPanel;
    pNasZ2S: TPanel;
    pNasZ4S: TPanel;
    pNasM2S: TPanel;
    pNasW3W: TPanel;
    pNasI2S: TPanel;
    pNiyatA4F: TPanel;
    pNiyatF2F: TPanel;
    pNiyatF2S: TPanel;
    pNiyatZ2S: TPanel;
    pNiyatZ4F: TPanel;
    pNiyatZ4S: TPanel;
    pNiyatM2S: TPanel;
    pNiyatM3F: TPanel;
    pNiyatW3W: TPanel;
    pNiyatI2S: TPanel;
    pNiyatI4F: TPanel;
    pQunut: TPanel;
    pRobbanaA4F: TPanel;
    pRobbanaF2F: TPanel;
    pRobbanaF2S: TPanel;
    pRobbanaZ2S: TPanel;
    pRobbanaZ4F: TPanel;
    pRobbanaZ4S: TPanel;
    pRobbanaM2S: TPanel;
    pRobbanaM3F: TPanel;
    pRobbanaW3W: TPanel;
    pRobbanaI2S: TPanel;
    pRobbanaI4F: TPanel;
    pSalavotA4F: TPanel;
    pSalavotF2F: TPanel;
    pSalavotF2S: TPanel;
    pSalavotZ2S: TPanel;
    pSalavotZ4F: TPanel;
    pSalavotZ4S: TPanel;
    pSalavotM2S: TPanel;
    pSalavotM3F: TPanel;
    pSalavotW3W: TPanel;
    pSalavotI2S: TPanel;
    pSalavotI4F: TPanel;
    pSalomA4F: TPanel;
    pSalomF2F: TPanel;
    pSalomF2S: TPanel;
    pSalomZ2S: TPanel;
    pSalomZ4F: TPanel;
    pSalomZ4S: TPanel;
    pSalomM2S: TPanel;
    pSalomM3F: TPanel;
    pSalomW3W: TPanel;
    pSalomI2S: TPanel;
    pSalomI4F: TPanel;
    pSanoA4F: TPanel;
    pSanoF2F: TPanel;
    pSanoF2S: TPanel;
    pSanoZ2S: TPanel;
    pSanoZ4F: TPanel;
    pSanoZ4S: TPanel;
    pSanoM2S: TPanel;
    pSanoM3F: TPanel;
    pSanoW3W: TPanel;
    pSanoI2S: TPanel;
    pSanoI4F: TPanel;
    pTaavvuzA4F: TPanel;
    pTaavvuzF2F: TPanel;
    pTaavvuzF2S: TPanel;
    pTaavvuzZ2S: TPanel;
    pTaavvuzZ4F: TPanel;
    pTaavvuzZ4S: TPanel;
    pTaavvuzM2S: TPanel;
    pTaavvuzM3F: TPanel;
    pTaavvuzW3W: TPanel;
    pTaavvuzI2S: TPanel;
    pTaavvuzI4F: TPanel;
    pTakbirJalsa1A4F: TPanel;
    pTakbirJalsa1F2F: TPanel;
    pTakbirJalsa1F2S: TPanel;
    pTakbirJalsa1Z2S: TPanel;
    pTakbirJalsa1Z4F: TPanel;
    pTakbirJalsa1Z4S: TPanel;
    pTakbirJalsa1M2S: TPanel;
    pTakbirJalsa1M3F: TPanel;
    pTakbirJalsa1W3W: TPanel;
    pTakbirJalsa1I2S: TPanel;
    pTakbirJalsa1I4F: TPanel;
    pTakbirJalsa2A4F: TPanel;
    pTakbirJalsa2F2F: TPanel;
    pTakbirJalsa2F2S: TPanel;
    pTakbirJalsa2Z2S: TPanel;
    pTakbirJalsa2Z4F: TPanel;
    pTakbirJalsa2Z4S: TPanel;
    pTakbirJalsa2M2S: TPanel;
    pTakbirJalsa2M3F: TPanel;
    pTakbirJalsa2W3W: TPanel;
    pTakbirJalsa2I2S: TPanel;
    pTakbirJalsa2I4F: TPanel;
    pTakbirJalsa3A4F: TPanel;
    pTakbirJalsa3Z4F: TPanel;
    pTakbirJalsa3Z4S: TPanel;
    pTakbirJalsa3M3F: TPanel;
    pTakbirJalsa3W3W: TPanel;
    pTakbirJalsa3I4F: TPanel;
    pTakbirJalsa4A4F: TPanel;
    pTakbirJalsa4Z4F: TPanel;
    pTakbirJalsa4Z4S: TPanel;
    pTakbirJalsa4I4F: TPanel;
    pTakbirKirishA4F: TPanel;
    pTakbirKirishF2F: TPanel;
    pTakbirKirishF2S: TPanel;
    pTakbirKirishZ2S: TPanel;
    pTakbirKirishZ4F: TPanel;
    pTakbirKirishZ4S: TPanel;
    pTakbirKirishM2S: TPanel;
    pTakbirKirishM3F: TPanel;
    pTakbirKirishW3W: TPanel;
    pTakbirKirishI2S: TPanel;
    pTakbirKirishI4F: TPanel;
    pTakbirQada1A4F: TPanel;
    pTakbirQada1Z4F: TPanel;
    pTakbirQada1Z4S: TPanel;
    pTakbirQada1M3F: TPanel;
    pTakbirQada1W3W: TPanel;
    pTakbirQada1I4F: TPanel;
    pTakbirQada2A4F: TPanel;
    pTakbirQada2Z4F: TPanel;
    pTakbirQada2Z4S: TPanel;
    pTakbirQada2M3F: TPanel;
    pTakbirQada2W3W: TPanel;
    pTakbirQada2I4F: TPanel;
    pTakbirQadaF2F: TPanel;
    pTakbirQadaF2S: TPanel;
    pTakbirQadaZ2S: TPanel;
    pTakbirQadaM2S: TPanel;
    pTakbirQadaI2S: TPanel;
    pTakbirQiyom2A4F: TPanel;
    pTakbirQiyom2F2F: TPanel;
    pTakbirQiyom2F2S: TPanel;
    pTakbirQiyom2Z2S: TPanel;
    pTakbirQiyom2Z4F: TPanel;
    pTakbirQiyom2Z4S: TPanel;
    pTakbirQiyom2M2S: TPanel;
    pTakbirQiyom2M3F: TPanel;
    pTakbirQiyom2W3W: TPanel;
    pTakbirQiyom2I2S: TPanel;
    pTakbirQiyom2I4F: TPanel;
    pTakbirQiyom3A4F: TPanel;
    pTakbirQiyom3Z4F: TPanel;
    pTakbirQiyom3Z4S: TPanel;
    pTakbirQiyom3M3F: TPanel;
    pTakbirQiyom3W3W: TPanel;
    pTakbirQiyom3I4F: TPanel;
    pTakbirQiyom4A4F: TPanel;
    pTakbirQiyom4Z4F: TPanel;
    pTakbirQiyom4Z4S: TPanel;
    pTakbirQiyom4I4F: TPanel;
    pTakbirQunut: TPanel;
    pTakbirRuku1A4F: TPanel;
    pTakbirRuku1F2F: TPanel;
    pTakbirRuku1F2S: TPanel;
    pTakbirRuku1Z2S: TPanel;
    pTakbirRuku1Z4F: TPanel;
    pTakbirRuku1Z4S: TPanel;
    pTakbirRuku1M2S: TPanel;
    pTakbirRuku1M3F: TPanel;
    pTakbirRuku1W3W: TPanel;
    pTakbirRuku1I2S: TPanel;
    pTakbirRuku1I4F: TPanel;
    pTakbirRuku2A4F: TPanel;
    pTakbirRuku2F2F: TPanel;
    pTakbirRuku2F2S: TPanel;
    pTakbirRuku2Z2S: TPanel;
    pTakbirRuku2Z4F: TPanel;
    pTakbirRuku2Z4S: TPanel;
    pTakbirRuku2M2S: TPanel;
    pTakbirRuku2M3F: TPanel;
    pTakbirRuku2W3W: TPanel;
    pTakbirRuku2I2S: TPanel;
    pTakbirRuku2I4F: TPanel;
    pTakbirRuku3A4F: TPanel;
    pTakbirRuku3Z4F: TPanel;
    pTakbirRuku3Z4S: TPanel;
    pTakbirRuku3M3F: TPanel;
    pTakbirRuku3W3W: TPanel;
    pTakbirRuku3I4F: TPanel;
    pTakbirRuku4A4F: TPanel;
    pTakbirRuku4Z4F: TPanel;
    pTakbirRuku4Z4S: TPanel;
    pTakbirRuku4I4F: TPanel;
    pTakbirSajda1_1A4F: TPanel;
    pTakbirSajda1_1F2F: TPanel;
    pTakbirSajda1_1F2S: TPanel;
    pTakbirSajda1_1Z2S: TPanel;
    pTakbirSajda1_1Z4F: TPanel;
    pTakbirSajda1_1Z4S: TPanel;
    pTakbirSajda1_1M2S: TPanel;
    pTakbirSajda1_1M3F: TPanel;
    pTakbirSajda1_1W3W: TPanel;
    pTakbirSajda1_1I2S: TPanel;
    pTakbirSajda1_1I4F: TPanel;
    pTakbirSajda1_2A4F: TPanel;
    pTakbirSajda1_2F2F: TPanel;
    pTakbirSajda1_2F2S: TPanel;
    pTakbirSajda1_2Z2S: TPanel;
    pTakbirSajda1_2Z4F: TPanel;
    pTakbirSajda1_2Z4S: TPanel;
    pTakbirSajda1_2M2S: TPanel;
    pTakbirSajda1_2M3F: TPanel;
    pTakbirSajda1_2W3W: TPanel;
    pTakbirSajda1_2I2S: TPanel;
    pTakbirSajda1_2I4F: TPanel;
    pTakbirSajda2_1A4F: TPanel;
    pTakbirSajda2_1F2F: TPanel;
    pTakbirSajda2_1F2S: TPanel;
    pTakbirSajda2_1Z2S: TPanel;
    pTakbirSajda2_1Z4F: TPanel;
    pTakbirSajda2_1Z4S: TPanel;
    pTakbirSajda2_1M2S: TPanel;
    pTakbirSajda2_1M3F: TPanel;
    pTakbirSajda2_1W3W: TPanel;
    pTakbirSajda2_1I2S: TPanel;
    pTakbirSajda2_1I4F: TPanel;
    pTakbirSajda2_2A4F: TPanel;
    pTakbirSajda2_2F2F: TPanel;
    pTakbirSajda2_2F2S: TPanel;
    pTakbirSajda2_2Z2S: TPanel;
    pTakbirSajda2_2Z4F: TPanel;
    pTakbirSajda2_2Z4S: TPanel;
    pTakbirSajda2_2M2S: TPanel;
    pTakbirSajda2_2M3F: TPanel;
    pTakbirSajda2_2W3W: TPanel;
    pTakbirSajda2_2I2S: TPanel;
    pTakbirSajda2_2I4F: TPanel;
    pTakbirSajda3_1A4F: TPanel;
    pTakbirSajda3_1Z4F: TPanel;
    pTakbirSajda3_1Z4S: TPanel;
    pTakbirSajda3_1M3F: TPanel;
    pTakbirSajda3_1W3W: TPanel;
    pTakbirSajda3_1I4F: TPanel;
    pTakbirSajda3_2A4F: TPanel;
    pTakbirSajda3_2Z4F: TPanel;
    pTakbirSajda3_2Z4S: TPanel;
    pTakbirSajda3_2M3F: TPanel;
    pTakbirSajda3_2W3W: TPanel;
    pTakbirSajda3_2I4F: TPanel;
    pTakbirSajda4_1A4F: TPanel;
    pTakbirSajda4_1Z4F: TPanel;
    pTakbirSajda4_1Z4S: TPanel;
    pTakbirSajda4_1I4F: TPanel;
    pTakbirSajda4_2A4F: TPanel;
    pTakbirSajda4_2Z4F: TPanel;
    pTakbirSajda4_2Z4S: TPanel;
    pTakbirSajda4_2I4F: TPanel;
    pTasbehotA4F: TPanel;
    pTasbehotF2F: TPanel;
    pTasbehotZ2S: TPanel;
    pTasbehotM2S: TPanel;
    pTasbehotW3W: TPanel;
    pTashahhud1A4F: TPanel;
    pTashahhud1Z4F: TPanel;
    pTashahhud1Z4S: TPanel;
    pTashahhud1M3F: TPanel;
    pTashahhud1W3W: TPanel;
    pTashahhud1I4F: TPanel;
    pTashahhud2A4F: TPanel;
    pTashahhud2Z4F: TPanel;
    pTashahhud2Z4S: TPanel;
    pTashahhud2M3F: TPanel;
    pTashahhud2W3W: TPanel;
    pTashahhud2I4F: TPanel;
    pTashahhudF2F: TPanel;
    pTashahhudF2S: TPanel;
    pTashahhudZ2S: TPanel;
    pTashahhudM2S: TPanel;
    pTashahhudI2S: TPanel;
    pTasme1A4F: TPanel;
    pTasme1F2F: TPanel;
    pTasme1F2S: TPanel;
    pTasme1Z2S: TPanel;
    pTasme1Z4F: TPanel;
    pTasme1Z4S: TPanel;
    pTasme1M2S: TPanel;
    pTasme1M3F: TPanel;
    pTasme1W3W: TPanel;
    pTasme1I2S: TPanel;
    pTasme1I4F: TPanel;
    pTasme2A4F: TPanel;
    pTasme2F2F: TPanel;
    pTasme2F2S: TPanel;
    pTasme2Z2S: TPanel;
    pTasme2Z4F: TPanel;
    pTasme2Z4S: TPanel;
    pTasme2M2S: TPanel;
    pTasme2M3F: TPanel;
    pTasme2W3W: TPanel;
    pTasme2I2S: TPanel;
    pTasme2I4F: TPanel;
    pTasme3A4F: TPanel;
    pTasme3Z4F: TPanel;
    pTasme3Z4S: TPanel;
    pTasme3M3F: TPanel;
    pTasme3W3W: TPanel;
    pTasme3I4F: TPanel;
    pTasme4A4F: TPanel;
    pTasme4Z4F: TPanel;
    pTasme4Z4S: TPanel;
    pTasme4I4F: TPanel;
    sAsr: TSplitter;
    sbAsr: TScrollBox;
    sbFajr: TScrollBox;
    sbDuoA4F: TScrollBox;
    sbDuoF2F: TScrollBox;
    sbDuoZ2S: TScrollBox;
    sbDuoZ4F: TScrollBox;
    sbDuoM2S: TScrollBox;
    sbDuoM3F: TScrollBox;
    sbDuoW3W: TScrollBox;
    sbDuoI4F: TScrollBox;
    sbJalsa1A4F: TScrollBox;
    sbJalsa1F2F: TScrollBox;
    sbJalsa1F2S: TScrollBox;
    sbJalsa1Z2S: TScrollBox;
    sbJalsa1Z4F: TScrollBox;
    sbJalsa1Z4S: TScrollBox;
    sbJalsa1M2S: TScrollBox;
    sbJalsa1M3F: TScrollBox;
    sbJalsa1W3W: TScrollBox;
    sbJalsa1I2S: TScrollBox;
    sbJalsa1I4F: TScrollBox;
    sbJalsa2A4F: TScrollBox;
    sbJalsa2F2F: TScrollBox;
    sbJalsa2F2S: TScrollBox;
    sbJalsa2Z2S: TScrollBox;
    sbJalsa2Z4F: TScrollBox;
    sbJalsa2Z4S: TScrollBox;
    sbJalsa2M2S: TScrollBox;
    sbJalsa2M3F: TScrollBox;
    sbJalsa2W3W: TScrollBox;
    sbJalsa2I2S: TScrollBox;
    sbJalsa2I4F: TScrollBox;
    sbJalsa3A4F: TScrollBox;
    sbJalsa3Z4F: TScrollBox;
    sbJalsa3Z4S: TScrollBox;
    sbJalsa3M3F: TScrollBox;
    sbJalsa3W3W: TScrollBox;
    sbJalsa3I4F: TScrollBox;
    sbJalsa4A4F: TScrollBox;
    sbJalsa4Z4F: TScrollBox;
    sbJalsa4Z4S: TScrollBox;
    sbJalsa4I4F: TScrollBox;
    sbKirishA4F: TScrollBox;
    sbKirishF2F: TScrollBox;
    sbKirishF2S: TScrollBox;
    sbKirishZ2S: TScrollBox;
    sbKirishZ4F: TScrollBox;
    sbKirishZ4S: TScrollBox;
    sbKirishM2S: TScrollBox;
    sbKirishM3F: TScrollBox;
    sbKirishW3W: TScrollBox;
    sbKirishI2S: TScrollBox;
    sbKirishI4F: TScrollBox;
    sFajr: TSplitter;
    sbZuhr: TScrollBox;
    sbQada1A4F: TScrollBox;
    sbQada1Z4F: TScrollBox;
    sbQada1Z4S: TScrollBox;
    sbQada1M3F: TScrollBox;
    sbQada1W3W: TScrollBox;
    sbQada1I4F: TScrollBox;
    sbQada2A4F: TScrollBox;
    sbQada2Z4F: TScrollBox;
    sbQada2Z4S: TScrollBox;
    sbQada2M3F: TScrollBox;
    sbQada2W3W: TScrollBox;
    sbQada2I4F: TScrollBox;
    sbQadaF2F: TScrollBox;
    sbQadaF2S: TScrollBox;
    sbQadaZ2S: TScrollBox;
    sbQadaM2S: TScrollBox;
    sbQadaI2S: TScrollBox;
    sbQiyom1A4F: TScrollBox;
    sbQiyom1F2F: TScrollBox;
    sbQiyom1F2S: TScrollBox;
    sbQiyom1Z2S: TScrollBox;
    sbQiyom1Z4F: TScrollBox;
    sbQiyom1Z4S: TScrollBox;
    sbQiyom1M2S: TScrollBox;
    sbQiyom1M3F: TScrollBox;
    sbQiyom1W3W: TScrollBox;
    sbQiyom1I2S: TScrollBox;
    sbQiyom1I4F: TScrollBox;
    sbQiyom2A4F: TScrollBox;
    sbQiyom2F2F: TScrollBox;
    sbQiyom2F2S: TScrollBox;
    sbQiyom2Z2S: TScrollBox;
    sbQiyom2Z4F: TScrollBox;
    sbQiyom2Z4S: TScrollBox;
    sbQiyom2M2S: TScrollBox;
    sbQiyom2M3F: TScrollBox;
    sbQiyom2W3W: TScrollBox;
    sbQiyom2I2S: TScrollBox;
    sbQiyom2I4F: TScrollBox;
    sbQiyom3A4F: TScrollBox;
    sbQiyom3Z4F: TScrollBox;
    sbQiyom3Z4S: TScrollBox;
    sbQiyom3M3F: TScrollBox;
    sbQiyom3W3W: TScrollBox;
    sbQiyom3I4F: TScrollBox;
    sbQiyom4A4F: TScrollBox;
    sbQiyom4Z4F: TScrollBox;
    sbQiyom4Z4S: TScrollBox;
    sbQiyom4I4F: TScrollBox;
    sbQovma1A4F: TScrollBox;
    sbQovma1F2F: TScrollBox;
    sbQovma1F2S: TScrollBox;
    sbQovma1Z2S: TScrollBox;
    sbQovma1Z4F: TScrollBox;
    sbQovma1Z4S: TScrollBox;
    sbQovma1M2S: TScrollBox;
    sbQovma1M3F: TScrollBox;
    sbQovma1W3W: TScrollBox;
    sbQovma1I2S: TScrollBox;
    sbQovma1I4F: TScrollBox;
    sbQovma2A4F: TScrollBox;
    sbQovma2F2F: TScrollBox;
    sbQovma2F2S: TScrollBox;
    sbQovma2Z2S: TScrollBox;
    sbQovma2Z4F: TScrollBox;
    sbQovma2Z4S: TScrollBox;
    sbQovma2M2S: TScrollBox;
    sbQovma2M3F: TScrollBox;
    sbQovma2W3W: TScrollBox;
    sbQovma2I2S: TScrollBox;
    sbQovma2I4F: TScrollBox;
    sbQovma3A4F: TScrollBox;
    sbQovma3Z4F: TScrollBox;
    sbQovma3Z4S: TScrollBox;
    sbQovma3M3F: TScrollBox;
    sbQovma3W3W: TScrollBox;
    sbQovma3I4F: TScrollBox;
    sbQovma4A4F: TScrollBox;
    sbQovma4Z4F: TScrollBox;
    sbQovma4Z4S: TScrollBox;
    sbQovma4I4F: TScrollBox;
    sbRuku1A4F: TScrollBox;
    sbRuku1F2F: TScrollBox;
    sbRuku1F2S: TScrollBox;
    sbRuku1Z2S: TScrollBox;
    sbRuku1Z4F: TScrollBox;
    sbRuku1Z4S: TScrollBox;
    sbRuku1M2S: TScrollBox;
    sbRuku1M3F: TScrollBox;
    sbRuku1W3W: TScrollBox;
    sbRuku1I2S: TScrollBox;
    sbRuku1I4F: TScrollBox;
    sbRuku2A4F: TScrollBox;
    sbRuku2F2F: TScrollBox;
    sbRuku2F2S: TScrollBox;
    sbRuku2Z2S: TScrollBox;
    sbRuku2Z4F: TScrollBox;
    sbRuku2Z4S: TScrollBox;
    sbRuku2M2S: TScrollBox;
    sbRuku2M3F: TScrollBox;
    sbRuku2W3W: TScrollBox;
    sbRuku2I2S: TScrollBox;
    sbRuku2I4F: TScrollBox;
    sbRuku3A4F: TScrollBox;
    sbRuku3Z4F: TScrollBox;
    sbRuku3Z4S: TScrollBox;
    sbRuku3M3F: TScrollBox;
    sbRuku3W3W: TScrollBox;
    sbRuku3I4F: TScrollBox;
    sbRuku4A4F: TScrollBox;
    sbRuku4Z4F: TScrollBox;
    sbRuku4Z4S: TScrollBox;
    sbRuku4I4F: TScrollBox;
    sbSajda1_1A4F: TScrollBox;
    sbSajda1_1F2F: TScrollBox;
    sbSajda1_1F2S: TScrollBox;
    sbSajda1_1Z2S: TScrollBox;
    sbSajda1_1Z4F: TScrollBox;
    sbSajda1_1Z4S: TScrollBox;
    sbSajda1_1M2S: TScrollBox;
    sbSajda1_1M3F: TScrollBox;
    sbSajda1_1W3W: TScrollBox;
    sbSajda1_1I2S: TScrollBox;
    sbSajda1_1I4F: TScrollBox;
    sbSajda1_2A4F: TScrollBox;
    sbSajda1_2F2F: TScrollBox;
    sbSajda1_2F2S: TScrollBox;
    sbSajda1_2Z2S: TScrollBox;
    sbSajda1_2Z4F: TScrollBox;
    sbSajda1_2Z4S: TScrollBox;
    sbSajda1_2M2S: TScrollBox;
    sbSajda1_2M3F: TScrollBox;
    sbSajda1_2W3W: TScrollBox;
    sbSajda1_2I2S: TScrollBox;
    sbSajda1_2I4F: TScrollBox;
    sbSajda2_1A4F: TScrollBox;
    sbSajda2_1F2F: TScrollBox;
    sbSajda2_1F2S: TScrollBox;
    sbSajda2_1Z2S: TScrollBox;
    sbSajda2_1Z4F: TScrollBox;
    sbSajda2_1Z4S: TScrollBox;
    sbSajda2_1M2S: TScrollBox;
    sbSajda2_1M3F: TScrollBox;
    sbSajda2_1W3W: TScrollBox;
    sbSajda2_1I2S: TScrollBox;
    sbSajda2_1I4F: TScrollBox;
    sbSajda2_2A4F: TScrollBox;
    sbSajda2_2F2F: TScrollBox;
    sbSajda2_2F2S: TScrollBox;
    sbSajda2_2Z2S: TScrollBox;
    sbSajda2_2Z4F: TScrollBox;
    sbSajda2_2Z4S: TScrollBox;
    sbSajda2_2M2S: TScrollBox;
    sbSajda2_2M3F: TScrollBox;
    sbSajda2_2W3W: TScrollBox;
    sbSajda2_2I2S: TScrollBox;
    sbSajda2_2I4F: TScrollBox;
    sbSajda3_1A4F: TScrollBox;
    sbSajda3_1Z4F: TScrollBox;
    sbSajda3_1Z4S: TScrollBox;
    sbSajda3_1M3F: TScrollBox;
    sbSajda3_1W3W: TScrollBox;
    sbSajda3_1I4F: TScrollBox;
    sbSajda3_2A4F: TScrollBox;
    sbSajda3_2Z4F: TScrollBox;
    sbSajda3_2Z4S: TScrollBox;
    sbSajda3_2M3F: TScrollBox;
    sbSajda3_2W3W: TScrollBox;
    sbSajda3_2I4F: TScrollBox;
    sbSajda4_1A4F: TScrollBox;
    sbSajda4_1Z4F: TScrollBox;
    sbSajda4_1Z4S: TScrollBox;
    sbSajda4_1I4F: TScrollBox;
    sbSajda4_2A4F: TScrollBox;
    sbSajda4_2Z4F: TScrollBox;
    sbSajda4_2Z4S: TScrollBox;
    sbSajda4_2I4F: TScrollBox;
    sbSalomA4F: TScrollBox;
    sbSalomF2F: TScrollBox;
    sbSalomF2S: TScrollBox;
    sbSalomZ2S: TScrollBox;
    sbSalomZ4F: TScrollBox;
    sbSalomZ4S: TScrollBox;
    sbSalomM2S: TScrollBox;
    sbSalomM3F: TScrollBox;
    sbSalomW3W: TScrollBox;
    sbSalomI2S: TScrollBox;
    sbSalomI4F: TScrollBox;
    sbMaghrib: TScrollBox;
    sbIsha: TScrollBox;
    sZuhr: TSplitter;
    sMaghrib: TSplitter;
    sIsha: TSplitter;
    tsA4F: TTabSheet;
    tsAsr: TTabSheet;
    tsF2F: TTabSheet;
    tsF2S: TTabSheet;
    tsFajr: TTabSheet;
    tsDuoA4F: TTabSheet;
    tsDuoF2F: TTabSheet;
    tsDuoZ2S: TTabSheet;
    tsDuoZ4F: TTabSheet;
    tsDuoM2S: TTabSheet;
    tsDuoM3F: TTabSheet;
    tsDuoW3W: TTabSheet;
    tsDuoI4F: TTabSheet;
    tsJalsa1A4F: TTabSheet;
    tsJalsa1F2F: TTabSheet;
    tsJalsa1F2S: TTabSheet;
    tsJalsa1Z2S: TTabSheet;
    tsJalsa1Z4F: TTabSheet;
    tsJalsa1Z4S: TTabSheet;
    tsJalsa1M2S: TTabSheet;
    tsJalsa1M3F: TTabSheet;
    tsJalsa1W3W: TTabSheet;
    tsJalsa1I2S: TTabSheet;
    tsJalsa1I4F: TTabSheet;
    tsJalsa2A4F: TTabSheet;
    tsJalsa2F2F: TTabSheet;
    tsJalsa2F2S: TTabSheet;
    tsJalsa2Z2S: TTabSheet;
    tsJalsa2Z4F: TTabSheet;
    tsJalsa2Z4S: TTabSheet;
    tsJalsa2M2S: TTabSheet;
    tsJalsa2M3F: TTabSheet;
    tsJalsa2W3W: TTabSheet;
    tsJalsa2I2S: TTabSheet;
    tsJalsa2I4F: TTabSheet;
    tsJalsa3A4F: TTabSheet;
    tsJalsa3Z4F: TTabSheet;
    tsJalsa3Z4S: TTabSheet;
    tsJalsa3M3F: TTabSheet;
    tsJalsa3W3W: TTabSheet;
    tsJalsa3I4F: TTabSheet;
    tsJalsa4A4F: TTabSheet;
    tsJalsa4Z4F: TTabSheet;
    tsJalsa4Z4S: TTabSheet;
    tsJalsa4I4F: TTabSheet;
    tsKirishA4F: TTabSheet;
    tsKirishF2F: TTabSheet;
    tsKirishF2S: TTabSheet;
    tsKirishZ2S: TTabSheet;
    tsKirishZ4F: TTabSheet;
    tsKirishZ4S: TTabSheet;
    tsKirishM2S: TTabSheet;
    tsKirishM3F: TTabSheet;
    tsKirishW3W: TTabSheet;
    tsKirishI2S: TTabSheet;
    tsKirishI4F: TTabSheet;
    tsZ2S: TTabSheet;
    tsZ4F: TTabSheet;
    tsZ4S: TTabSheet;
    tsZuhr: TTabSheet;
    tsQada1A4F: TTabSheet;
    tsQada1Z4F: TTabSheet;
    tsQada1Z4S: TTabSheet;
    tsQada1M3F: TTabSheet;
    tsQada1W3W: TTabSheet;
    tsQada1I4F: TTabSheet;
    tsQada2A4F: TTabSheet;
    tsQada2Z4F: TTabSheet;
    tsQada2Z4S: TTabSheet;
    tsQada2M3F: TTabSheet;
    tsQada2W3W: TTabSheet;
    tsQada2I4F: TTabSheet;
    tsQadaF2F: TTabSheet;
    tsQadaF2S: TTabSheet;
    tsQadaZ2S: TTabSheet;
    tsQadaM2S: TTabSheet;
    tsQadaI2S: TTabSheet;
    tsQiyom1A4F: TTabSheet;
    tsQiyom1F2F: TTabSheet;
    tsQiyom1F2S: TTabSheet;
    tsQiyom1Z2S: TTabSheet;
    tsQiyom1Z4F: TTabSheet;
    tsQiyom1Z4S: TTabSheet;
    tsQiyom1M2S: TTabSheet;
    tsQiyom1M3F: TTabSheet;
    tsQiyom1W3W: TTabSheet;
    tsQiyom1I2S: TTabSheet;
    tsQiyom1I4F: TTabSheet;
    tsQiyom2A4F: TTabSheet;
    tsQiyom2F2F: TTabSheet;
    tsQiyom2F2S: TTabSheet;
    tsQiyom2Z2S: TTabSheet;
    tsQiyom2Z4F: TTabSheet;
    tsQiyom2Z4S: TTabSheet;
    tsQiyom2M2S: TTabSheet;
    tsQiyom2M3F: TTabSheet;
    tsQiyom2W3W: TTabSheet;
    tsQiyom2I2S: TTabSheet;
    tsQiyom2I4F: TTabSheet;
    tsQiyom3A4F: TTabSheet;
    tsQiyom3Z4F: TTabSheet;
    tsQiyom3Z4S: TTabSheet;
    tsQiyom3M3F: TTabSheet;
    tsQiyom3W3W: TTabSheet;
    tsQiyom3I4F: TTabSheet;
    tsQiyom4A4F: TTabSheet;
    tsQiyom4Z4F: TTabSheet;
    tsQiyom4Z4S: TTabSheet;
    tsQiyom4I4F: TTabSheet;
    tsQovma1A4F: TTabSheet;
    tsQovma1F2F: TTabSheet;
    tsQovma1F2S: TTabSheet;
    tsQovma1Z2S: TTabSheet;
    tsQovma1Z4F: TTabSheet;
    tsQovma1Z4S: TTabSheet;
    tsQovma1M2S: TTabSheet;
    tsQovma1M3F: TTabSheet;
    tsQovma1W3W: TTabSheet;
    tsQovma1I2S: TTabSheet;
    tsQovma1I4F: TTabSheet;
    tsQovma2A4F: TTabSheet;
    tsQovma2F2F: TTabSheet;
    tsQovma2F2S: TTabSheet;
    tsQovma2Z2S: TTabSheet;
    tsQovma2Z4F: TTabSheet;
    tsQovma2Z4S: TTabSheet;
    tsQovma2M2S: TTabSheet;
    tsQovma2M3F: TTabSheet;
    tsQovma2W3W: TTabSheet;
    tsQovma2I2S: TTabSheet;
    tsQovma2I4F: TTabSheet;
    tsQovma3A4F: TTabSheet;
    tsQovma3Z4F: TTabSheet;
    tsQovma3Z4S: TTabSheet;
    tsQovma3M3F: TTabSheet;
    tsQovma3W3W: TTabSheet;
    tsQovma3I4F: TTabSheet;
    tsQovma4A4F: TTabSheet;
    tsQovma4Z4F: TTabSheet;
    tsQovma4Z4S: TTabSheet;
    tsQovma4I4F: TTabSheet;
    tsRuku1A4F: TTabSheet;
    tsRuku1F2F: TTabSheet;
    tsRuku1F2S: TTabSheet;
    tsRuku1Z2S: TTabSheet;
    tsRuku1Z4F: TTabSheet;
    tsRuku1Z4S: TTabSheet;
    tsRuku1M2S: TTabSheet;
    tsRuku1M3F: TTabSheet;
    tsRuku1W3W: TTabSheet;
    tsRuku1I2S: TTabSheet;
    tsRuku1I4F: TTabSheet;
    tsRuku2A4F: TTabSheet;
    tsRuku2F2F: TTabSheet;
    tsRuku2F2S: TTabSheet;
    tsRuku2Z2S: TTabSheet;
    tsRuku2Z4F: TTabSheet;
    tsRuku2Z4S: TTabSheet;
    tsRuku2M2S: TTabSheet;
    tsRuku2M3F: TTabSheet;
    tsRuku2W3W: TTabSheet;
    tsRuku2I2S: TTabSheet;
    tsRuku2I4F: TTabSheet;
    tsRuku3A4F: TTabSheet;
    tsRuku3Z4F: TTabSheet;
    tsRuku3Z4S: TTabSheet;
    tsRuku3M3F: TTabSheet;
    tsRuku3W3W: TTabSheet;
    tsRuku3I4F: TTabSheet;
    tsRuku4A4F: TTabSheet;
    tsRuku4Z4F: TTabSheet;
    tsRuku4Z4S: TTabSheet;
    tsRuku4I4F: TTabSheet;
    tsSajda1_1A4F: TTabSheet;
    tsSajda1_1F2F: TTabSheet;
    tsSajda1_1F2S: TTabSheet;
    tsSajda1_1Z2S: TTabSheet;
    tsSajda1_1Z4F: TTabSheet;
    tsSajda1_1Z4S: TTabSheet;
    tsSajda1_1M2S: TTabSheet;
    tsSajda1_1M3F: TTabSheet;
    tsSajda1_1W3W: TTabSheet;
    tsSajda1_1I2S: TTabSheet;
    tsSajda1_1I4F: TTabSheet;
    tsSajda1_2A4F: TTabSheet;
    tsSajda1_2F2F: TTabSheet;
    tsSajda1_2F2S: TTabSheet;
    tsSajda1_2Z2S: TTabSheet;
    tsSajda1_2Z4F: TTabSheet;
    tsSajda1_2Z4S: TTabSheet;
    tsSajda1_2M2S: TTabSheet;
    tsSajda1_2M3F: TTabSheet;
    tsSajda1_2W3W: TTabSheet;
    tsSajda1_2I2S: TTabSheet;
    tsSajda1_2I4F: TTabSheet;
    tsSajda2_1A4F: TTabSheet;
    tsSajda2_1F2F: TTabSheet;
    tsSajda2_1F2S: TTabSheet;
    tsSajda2_1Z2S: TTabSheet;
    tsSajda2_1Z4F: TTabSheet;
    tsSajda2_1Z4S: TTabSheet;
    tsSajda2_1M2S: TTabSheet;
    tsSajda2_1M3F: TTabSheet;
    tsSajda2_1W3W: TTabSheet;
    tsSajda2_1I2S: TTabSheet;
    tsSajda2_1I4F: TTabSheet;
    tsSajda2_2A4F: TTabSheet;
    tsSajda2_2F2F: TTabSheet;
    tsSajda2_2F2S: TTabSheet;
    tsSajda2_2Z2S: TTabSheet;
    tsSajda2_2Z4F: TTabSheet;
    tsSajda2_2Z4S: TTabSheet;
    tsSajda2_2M2S: TTabSheet;
    tsSajda2_2M3F: TTabSheet;
    tsSajda2_2W3W: TTabSheet;
    tsSajda2_2I2S: TTabSheet;
    tsSajda2_2I4F: TTabSheet;
    tsSajda3_1A4F: TTabSheet;
    tsSajda3_1Z4F: TTabSheet;
    tsSajda3_1Z4S: TTabSheet;
    tsSajda3_1M3F: TTabSheet;
    tsSajda3_1W3W: TTabSheet;
    tsSajda3_1I4F: TTabSheet;
    tsSajda3_2A4F: TTabSheet;
    tsSajda3_2Z4F: TTabSheet;
    tsSajda3_2Z4S: TTabSheet;
    tsSajda3_2M3F: TTabSheet;
    tsSajda3_2W3W: TTabSheet;
    tsSajda3_2I4F: TTabSheet;
    tsSajda4_1A4F: TTabSheet;
    tsSajda4_1Z4F: TTabSheet;
    tsSajda4_1Z4S: TTabSheet;
    tsSajda4_1I4F: TTabSheet;
    tsSajda4_2A4F: TTabSheet;
    tsSajda4_2Z4F: TTabSheet;
    tsSajda4_2Z4S: TTabSheet;
    tsSajda4_2I4F: TTabSheet;
    tsSalomA4F: TTabSheet;
    tsSalomF2F: TTabSheet;
    tsSalomF2S: TTabSheet;
    tsSalomZ2S: TTabSheet;
    tsSalomZ4F: TTabSheet;
    tsSalomZ4S: TTabSheet;
    tsSalomM2S: TTabSheet;
    tsSalomM3F: TTabSheet;
    tsSalomW3W: TTabSheet;
    tsSalomI2S: TTabSheet;
    tsSalomI4F: TTabSheet;
    tsM2S: TTabSheet;
    tsM3F: TTabSheet;
    tsMaghrib: TTabSheet;
    tsW3W: TTabSheet;
    tsI2S: TTabSheet;
    tsI4F: TTabSheet;
    tsIsha: TTabSheet;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miAboutClick(Sender: TObject);
    procedure miQuitClick(Sender: TObject);
    procedure miImageClick(Sender: TObject);
    procedure miNextClick(Sender: TObject);
    procedure miPreviousClick(Sender: TObject);
    procedure miSettingsClick(Sender: TObject);
    procedure ProcAla(Sender: TObject);
    procedure ProcAziym(Sender: TObject);
    procedure ProcAzon(Sender: TObject);
    procedure ProcAzonBomdod(Sender: TObject);
    procedure ProcAzonDuo(Sender: TObject);
    procedure ProcBasmala(Sender: TObject);
    procedure ProcDuo(Sender: TObject);
    procedure ProcDuoF(Sender: TObject);
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

procedure TFormMain.FormActivate(Sender: TObject);
begin
  FormMain.ProcImagesLoad(nil);
  FormSettings.cbLanguageChange(nil);
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

procedure TFormMain.miQuitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.miImageClick(Sender: TObject);
begin
   if pImage.Visible=true then
    begin
      pImage.Hide;
      miImage.Caption:=ShowImage;
      bImage.Caption:=ShowImage;
    end
  else
    begin
      pImage.Show;
      miImage.Caption:=HideImage;
      bImage.Caption:=HideImage;
    end
end;

procedure TFormMain.miNextClick(Sender: TObject);
begin
  case pcMain.ActivePageIndex of
  0: case pcFajr.ActivePageIndex of
     0: case pcF2S.ActivePageIndex of
        0: pcF2S.ActivePageIndex:=1;
        1: pcF2S.ActivePageIndex:=2;
        2: pcF2S.ActivePageIndex:=3;
        3: pcF2S.ActivePageIndex:=4;
        4: pcF2S.ActivePageIndex:=5;
        5: pcF2S.ActivePageIndex:=6;
        6: pcF2S.ActivePageIndex:=7;
        7: pcF2S.ActivePageIndex:=8;
        8: pcF2S.ActivePageIndex:=9;
        9: pcF2S.ActivePageIndex:=10;
        10: pcF2S.ActivePageIndex:=11;
        11: pcF2S.ActivePageIndex:=12;
        12: pcF2S.ActivePageIndex:=13;
        13: pcF2S.ActivePageIndex:=14;
        end;
     1: case pcF2F.ActivePageIndex of
        0: pcF2F.ActivePageIndex:=1;
        1: pcF2F.ActivePageIndex:=2;
        2: pcF2F.ActivePageIndex:=3;
        3: pcF2F.ActivePageIndex:=4;
        4: pcF2F.ActivePageIndex:=5;
        5: pcF2F.ActivePageIndex:=6;
        6: pcF2F.ActivePageIndex:=7;
        7: pcF2F.ActivePageIndex:=8;
        8: pcF2F.ActivePageIndex:=9;
        9: pcF2F.ActivePageIndex:=10;
        10: pcF2F.ActivePageIndex:=11;
        11: pcF2F.ActivePageIndex:=12;
        12: pcF2F.ActivePageIndex:=13;
        13: pcF2F.ActivePageIndex:=14;
        14: pcF2F.ActivePageIndex:=15;
        end;
     end;
  1: case pcZuhr.ActivePageIndex of
     0: case pcZ4S.ActivePageIndex of
        0: pcZ4S.ActivePageIndex:=1;
        1: pcZ4S.ActivePageIndex:=2;
        2: pcZ4S.ActivePageIndex:=3;
        3: pcZ4S.ActivePageIndex:=4;
        4: pcZ4S.ActivePageIndex:=5;
        5: pcZ4S.ActivePageIndex:=6;
        6: pcZ4S.ActivePageIndex:=7;
        7: pcZ4S.ActivePageIndex:=8;
        8: pcZ4S.ActivePageIndex:=9;
        9: pcZ4S.ActivePageIndex:=10;
        10: pcZ4S.ActivePageIndex:=11;
        11: pcZ4S.ActivePageIndex:=12;
        12: pcZ4S.ActivePageIndex:=13;
        13: pcZ4S.ActivePageIndex:=14;
        14: pcZ4S.ActivePageIndex:=15;
        15: pcZ4S.ActivePageIndex:=16;
        16: pcZ4S.ActivePageIndex:=17;
        17: pcZ4S.ActivePageIndex:=18;
        18: pcZ4S.ActivePageIndex:=19;
        19: pcZ4S.ActivePageIndex:=20;
        20: pcZ4S.ActivePageIndex:=21;
        21: pcZ4S.ActivePageIndex:=22;
        22: pcZ4S.ActivePageIndex:=23;
        23: pcZ4S.ActivePageIndex:=24;
        24: pcZ4S.ActivePageIndex:=25;
        25: pcZ4S.ActivePageIndex:=26;
        26: pcZ4S.ActivePageIndex:=27;
        end;
     1: case pcZ4F.ActivePageIndex of
        0: pcZ4F.ActivePageIndex:=1;
        1: pcZ4F.ActivePageIndex:=2;
        2: pcZ4F.ActivePageIndex:=3;
        3: pcZ4F.ActivePageIndex:=4;
        4: pcZ4F.ActivePageIndex:=5;
        5: pcZ4F.ActivePageIndex:=6;
        6: pcZ4F.ActivePageIndex:=7;
        7: pcZ4F.ActivePageIndex:=8;
        8: pcZ4F.ActivePageIndex:=9;
        9: pcZ4F.ActivePageIndex:=10;
        10: pcZ4F.ActivePageIndex:=11;
        11: pcZ4F.ActivePageIndex:=12;
        12: pcZ4F.ActivePageIndex:=13;
        13: pcZ4F.ActivePageIndex:=14;
        14: pcZ4F.ActivePageIndex:=15;
        15: pcZ4F.ActivePageIndex:=16;
        16: pcZ4F.ActivePageIndex:=17;
        17: pcZ4F.ActivePageIndex:=18;
        18: pcZ4F.ActivePageIndex:=19;
        19: pcZ4F.ActivePageIndex:=20;
        20: pcZ4F.ActivePageIndex:=21;
        21: pcZ4F.ActivePageIndex:=22;
        22: pcZ4F.ActivePageIndex:=23;
        23: pcZ4F.ActivePageIndex:=24;
        24: pcZ4F.ActivePageIndex:=25;
        25: pcZ4F.ActivePageIndex:=26;
        26: pcZ4F.ActivePageIndex:=27;
        27: pcZ4F.ActivePageIndex:=28;
        end;
     2: case pcZ2S.ActivePageIndex of
        0: pcZ2S.ActivePageIndex:=1;
        1: pcZ2S.ActivePageIndex:=2;
        2: pcZ2S.ActivePageIndex:=3;
        3: pcZ2S.ActivePageIndex:=4;
        4: pcZ2S.ActivePageIndex:=5;
        5: pcZ2S.ActivePageIndex:=6;
        6: pcZ2S.ActivePageIndex:=7;
        7: pcZ2S.ActivePageIndex:=8;
        8: pcZ2S.ActivePageIndex:=9;
        9: pcZ2S.ActivePageIndex:=10;
        10: pcZ2S.ActivePageIndex:=11;
        11: pcZ2S.ActivePageIndex:=12;
        12: pcZ2S.ActivePageIndex:=13;
        13: pcZ2S.ActivePageIndex:=14;
        14: pcZ2S.ActivePageIndex:=15;
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
  3: case pcMaghrib.ActivePageIndex of
     0: case pcM3F.ActivePageIndex of
        0: pcM3F.ActivePageIndex:=1;
        1: pcM3F.ActivePageIndex:=2;
        2: pcM3F.ActivePageIndex:=3;
        3: pcM3F.ActivePageIndex:=4;
        4: pcM3F.ActivePageIndex:=5;
        5: pcM3F.ActivePageIndex:=6;
        6: pcM3F.ActivePageIndex:=7;
        7: pcM3F.ActivePageIndex:=8;
        8: pcM3F.ActivePageIndex:=9;
        9: pcM3F.ActivePageIndex:=10;
        10: pcM3F.ActivePageIndex:=11;
        11: pcM3F.ActivePageIndex:=12;
        12: pcM3F.ActivePageIndex:=13;
        13: pcM3F.ActivePageIndex:=14;
        14: pcM3F.ActivePageIndex:=15;
        15: pcM3F.ActivePageIndex:=16;
        16: pcM3F.ActivePageIndex:=17;
        17: pcM3F.ActivePageIndex:=18;
        18: pcM3F.ActivePageIndex:=19;
        19: pcM3F.ActivePageIndex:=20;
        20: pcM3F.ActivePageIndex:=21;
        21: pcM3F.ActivePageIndex:=22;
        end;
     1: case pcM2S.ActivePageIndex of
        0: pcM2S.ActivePageIndex:=1;
        1: pcM2S.ActivePageIndex:=2;
        2: pcM2S.ActivePageIndex:=3;
        3: pcM2S.ActivePageIndex:=4;
        4: pcM2S.ActivePageIndex:=5;
        5: pcM2S.ActivePageIndex:=6;
        6: pcM2S.ActivePageIndex:=7;
        7: pcM2S.ActivePageIndex:=8;
        8: pcM2S.ActivePageIndex:=9;
        9: pcM2S.ActivePageIndex:=10;
        10: pcM2S.ActivePageIndex:=11;
        11: pcM2S.ActivePageIndex:=12;
        12: pcM2S.ActivePageIndex:=13;
        13: pcM2S.ActivePageIndex:=14;
        14: pcM2S.ActivePageIndex:=15;
        end;
     end;
  4: case pcIsha.ActivePageIndex of
     0: case pcI4F.ActivePageIndex of
        0: pcI4F.ActivePageIndex:=1;
        1: pcI4F.ActivePageIndex:=2;
        2: pcI4F.ActivePageIndex:=3;
        3: pcI4F.ActivePageIndex:=4;
        4: pcI4F.ActivePageIndex:=5;
        5: pcI4F.ActivePageIndex:=6;
        6: pcI4F.ActivePageIndex:=7;
        7: pcI4F.ActivePageIndex:=8;
        8: pcI4F.ActivePageIndex:=9;
        9: pcI4F.ActivePageIndex:=10;
        10: pcI4F.ActivePageIndex:=11;
        11: pcI4F.ActivePageIndex:=12;
        12: pcI4F.ActivePageIndex:=13;
        13: pcI4F.ActivePageIndex:=14;
        14: pcI4F.ActivePageIndex:=15;
        15: pcI4F.ActivePageIndex:=16;
        16: pcI4F.ActivePageIndex:=17;
        17: pcI4F.ActivePageIndex:=18;
        18: pcI4F.ActivePageIndex:=19;
        19: pcI4F.ActivePageIndex:=20;
        20: pcI4F.ActivePageIndex:=21;
        21: pcI4F.ActivePageIndex:=22;
        22: pcI4F.ActivePageIndex:=23;
        23: pcI4F.ActivePageIndex:=24;
        24: pcI4F.ActivePageIndex:=25;
        25: pcI4F.ActivePageIndex:=26;
        26: pcI4F.ActivePageIndex:=27;
        27: pcI4F.ActivePageIndex:=28;
        end;
     1: case pcI2S.ActivePageIndex of
        0: pcI2S.ActivePageIndex:=1;
        1: pcI2S.ActivePageIndex:=2;
        2: pcI2S.ActivePageIndex:=3;
        3: pcI2S.ActivePageIndex:=4;
        4: pcI2S.ActivePageIndex:=5;
        5: pcI2S.ActivePageIndex:=6;
        6: pcI2S.ActivePageIndex:=7;
        7: pcI2S.ActivePageIndex:=8;
        8: pcI2S.ActivePageIndex:=9;
        9: pcI2S.ActivePageIndex:=10;
        10: pcI2S.ActivePageIndex:=11;
        11: pcI2S.ActivePageIndex:=12;
        12: pcI2S.ActivePageIndex:=13;
        13: pcI2S.ActivePageIndex:=14;
        end;
     2: case pcW3W.ActivePageIndex of
        0: pcW3W.ActivePageIndex:=1;
        1: pcW3W.ActivePageIndex:=2;
        2: pcW3W.ActivePageIndex:=3;
        3: pcW3W.ActivePageIndex:=4;
        4: pcW3W.ActivePageIndex:=5;
        5: pcW3W.ActivePageIndex:=6;
        6: pcW3W.ActivePageIndex:=7;
        7: pcW3W.ActivePageIndex:=8;
        8: pcW3W.ActivePageIndex:=9;
        9: pcW3W.ActivePageIndex:=10;
        10: pcW3W.ActivePageIndex:=11;
        11: pcW3W.ActivePageIndex:=12;
        12: pcW3W.ActivePageIndex:=13;
        13: pcW3W.ActivePageIndex:=14;
        14: pcW3W.ActivePageIndex:=15;
        15: pcW3W.ActivePageIndex:=16;
        16: pcW3W.ActivePageIndex:=17;
        17: pcW3W.ActivePageIndex:=18;
        18: pcW3W.ActivePageIndex:=19;
        19: pcW3W.ActivePageIndex:=20;
        20: pcW3W.ActivePageIndex:=21;
        21: pcW3W.ActivePageIndex:=22;
        end;
     end;
  end;
  ProcImagesLoad(nil);
end;

procedure TFormMain.miPreviousClick(Sender: TObject);
begin
   case pcMain.ActivePageIndex of
  0: case pcFajr.ActivePageIndex of
     0: case pcF2S.ActivePageIndex of
        1: pcF2S.ActivePageIndex:=0;
        2: pcF2S.ActivePageIndex:=1;
        3: pcF2S.ActivePageIndex:=2;
        4: pcF2S.ActivePageIndex:=3;
        5: pcF2S.ActivePageIndex:=4;
        6: pcF2S.ActivePageIndex:=5;
        7: pcF2S.ActivePageIndex:=6;
        8: pcF2S.ActivePageIndex:=7;
        9: pcF2S.ActivePageIndex:=8;
        10: pcF2S.ActivePageIndex:=9;
        11: pcF2S.ActivePageIndex:=10;
        12: pcF2S.ActivePageIndex:=11;
        13: pcF2S.ActivePageIndex:=12;
        14: pcF2S.ActivePageIndex:=13;
        end;
     1: case pcF2F.ActivePageIndex of
        1: pcF2F.ActivePageIndex:=0;
        2: pcF2F.ActivePageIndex:=1;
        3: pcF2F.ActivePageIndex:=2;
        4: pcF2F.ActivePageIndex:=3;
        5: pcF2F.ActivePageIndex:=4;
        6: pcF2F.ActivePageIndex:=5;
        7: pcF2F.ActivePageIndex:=6;
        8: pcF2F.ActivePageIndex:=7;
        9: pcF2F.ActivePageIndex:=8;
        10: pcF2F.ActivePageIndex:=9;
        11: pcF2F.ActivePageIndex:=10;
        12: pcF2F.ActivePageIndex:=11;
        13: pcF2F.ActivePageIndex:=12;
        14: pcF2F.ActivePageIndex:=13;
        15: pcF2F.ActivePageIndex:=14;
        end;
     end;
  1: case pcZuhr.ActivePageIndex of
     0: case pcZ4S.ActivePageIndex of
        1: pcZ4S.ActivePageIndex:=0;
        2: pcZ4S.ActivePageIndex:=1;
        3: pcZ4S.ActivePageIndex:=2;
        4: pcZ4S.ActivePageIndex:=3;
        5: pcZ4S.ActivePageIndex:=4;
        6: pcZ4S.ActivePageIndex:=5;
        7: pcZ4S.ActivePageIndex:=6;
        8: pcZ4S.ActivePageIndex:=7;
        9: pcZ4S.ActivePageIndex:=8;
        10: pcZ4S.ActivePageIndex:=9;
        11: pcZ4S.ActivePageIndex:=10;
        12: pcZ4S.ActivePageIndex:=11;
        13: pcZ4S.ActivePageIndex:=12;
        14: pcZ4S.ActivePageIndex:=13;
        15: pcZ4S.ActivePageIndex:=14;
        16: pcZ4S.ActivePageIndex:=15;
        17: pcZ4S.ActivePageIndex:=16;
        18: pcZ4S.ActivePageIndex:=17;
        19: pcZ4S.ActivePageIndex:=18;
        20: pcZ4S.ActivePageIndex:=19;
        21: pcZ4S.ActivePageIndex:=20;
        22: pcZ4S.ActivePageIndex:=21;
        23: pcZ4S.ActivePageIndex:=22;
        24: pcZ4S.ActivePageIndex:=23;
        25: pcZ4S.ActivePageIndex:=24;
        26: pcZ4S.ActivePageIndex:=25;
        27: pcZ4S.ActivePageIndex:=26;
        end;
     1: case pcZ4F.ActivePageIndex of
        1: pcZ4F.ActivePageIndex:=0;
        2: pcZ4F.ActivePageIndex:=1;
        3: pcZ4F.ActivePageIndex:=2;
        4: pcZ4F.ActivePageIndex:=3;
        5: pcZ4F.ActivePageIndex:=4;
        6: pcZ4F.ActivePageIndex:=5;
        7: pcZ4F.ActivePageIndex:=6;
        8: pcZ4F.ActivePageIndex:=7;
        9: pcZ4F.ActivePageIndex:=8;
        10: pcZ4F.ActivePageIndex:=9;
        11: pcZ4F.ActivePageIndex:=10;
        12: pcZ4F.ActivePageIndex:=11;
        13: pcZ4F.ActivePageIndex:=12;
        14: pcZ4F.ActivePageIndex:=13;
        15: pcZ4F.ActivePageIndex:=14;
        16: pcZ4F.ActivePageIndex:=15;
        17: pcZ4F.ActivePageIndex:=16;
        18: pcZ4F.ActivePageIndex:=17;
        19: pcZ4F.ActivePageIndex:=18;
        20: pcZ4F.ActivePageIndex:=19;
        21: pcZ4F.ActivePageIndex:=20;
        22: pcZ4F.ActivePageIndex:=21;
        23: pcZ4F.ActivePageIndex:=22;
        24: pcZ4F.ActivePageIndex:=23;
        25: pcZ4F.ActivePageIndex:=24;
        26: pcZ4F.ActivePageIndex:=25;
        27: pcZ4F.ActivePageIndex:=26;
        28: pcZ4F.ActivePageIndex:=27;
        end;
     2: case pcZ2S.ActivePageIndex of
        1: pcZ2S.ActivePageIndex:=0;
        2: pcZ2S.ActivePageIndex:=1;
        3: pcZ2S.ActivePageIndex:=2;
        4: pcZ2S.ActivePageIndex:=3;
        5: pcZ2S.ActivePageIndex:=4;
        6: pcZ2S.ActivePageIndex:=5;
        7: pcZ2S.ActivePageIndex:=6;
        8: pcZ2S.ActivePageIndex:=7;
        9: pcZ2S.ActivePageIndex:=8;
        10: pcZ2S.ActivePageIndex:=9;
        11: pcZ2S.ActivePageIndex:=10;
        12: pcZ2S.ActivePageIndex:=11;
        13: pcZ2S.ActivePageIndex:=12;
        14: pcZ2S.ActivePageIndex:=13;
        15: pcZ2S.ActivePageIndex:=14;
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
  3: case pcMaghrib.ActivePageIndex of
     0: case pcM3F.ActivePageIndex of
        1: pcM3F.ActivePageIndex:=0;
        2: pcM3F.ActivePageIndex:=1;
        3: pcM3F.ActivePageIndex:=2;
        4: pcM3F.ActivePageIndex:=3;
        5: pcM3F.ActivePageIndex:=4;
        6: pcM3F.ActivePageIndex:=5;
        7: pcM3F.ActivePageIndex:=6;
        8: pcM3F.ActivePageIndex:=7;
        9: pcM3F.ActivePageIndex:=8;
        10: pcM3F.ActivePageIndex:=9;
        11: pcM3F.ActivePageIndex:=10;
        12: pcM3F.ActivePageIndex:=11;
        13: pcM3F.ActivePageIndex:=12;
        14: pcM3F.ActivePageIndex:=13;
        15: pcM3F.ActivePageIndex:=14;
        16: pcM3F.ActivePageIndex:=15;
        17: pcM3F.ActivePageIndex:=16;
        18: pcM3F.ActivePageIndex:=17;
        19: pcM3F.ActivePageIndex:=18;
        20: pcM3F.ActivePageIndex:=19;
        21: pcM3F.ActivePageIndex:=20;
        22: pcM3F.ActivePageIndex:=21;
        end;
     1: case pcM2S.ActivePageIndex of
        1: pcM2S.ActivePageIndex:=0;
        2: pcM2S.ActivePageIndex:=1;
        3: pcM2S.ActivePageIndex:=2;
        4: pcM2S.ActivePageIndex:=3;
        5: pcM2S.ActivePageIndex:=4;
        6: pcM2S.ActivePageIndex:=5;
        7: pcM2S.ActivePageIndex:=6;
        8: pcM2S.ActivePageIndex:=7;
        9: pcM2S.ActivePageIndex:=8;
        10: pcM2S.ActivePageIndex:=9;
        11: pcM2S.ActivePageIndex:=10;
        12: pcM2S.ActivePageIndex:=11;
        13: pcM2S.ActivePageIndex:=12;
        14: pcM2S.ActivePageIndex:=13;
        15: pcM2S.ActivePageIndex:=14;
        end;
     end;
  4: case pcIsha.ActivePageIndex of
     0: case pcI4F.ActivePageIndex of
        1: pcI4F.ActivePageIndex:=0;
        2: pcI4F.ActivePageIndex:=1;
        3: pcI4F.ActivePageIndex:=2;
        4: pcI4F.ActivePageIndex:=3;
        5: pcI4F.ActivePageIndex:=4;
        6: pcI4F.ActivePageIndex:=5;
        7: pcI4F.ActivePageIndex:=6;
        8: pcI4F.ActivePageIndex:=7;
        9: pcI4F.ActivePageIndex:=8;
        10: pcI4F.ActivePageIndex:=9;
        11: pcI4F.ActivePageIndex:=10;
        12: pcI4F.ActivePageIndex:=11;
        13: pcI4F.ActivePageIndex:=12;
        14: pcI4F.ActivePageIndex:=13;
        15: pcI4F.ActivePageIndex:=14;
        16: pcI4F.ActivePageIndex:=15;
        17: pcI4F.ActivePageIndex:=16;
        18: pcI4F.ActivePageIndex:=17;
        19: pcI4F.ActivePageIndex:=18;
        20: pcI4F.ActivePageIndex:=19;
        21: pcI4F.ActivePageIndex:=20;
        22: pcI4F.ActivePageIndex:=21;
        23: pcI4F.ActivePageIndex:=22;
        24: pcI4F.ActivePageIndex:=23;
        25: pcI4F.ActivePageIndex:=24;
        26: pcI4F.ActivePageIndex:=25;
        27: pcI4F.ActivePageIndex:=26;
        28: pcI4F.ActivePageIndex:=27;
        end;
     1: case pcI2S.ActivePageIndex of
        1: pcI2S.ActivePageIndex:=0;
        2: pcI2S.ActivePageIndex:=1;
        3: pcI2S.ActivePageIndex:=2;
        4: pcI2S.ActivePageIndex:=3;
        5: pcI2S.ActivePageIndex:=4;
        6: pcI2S.ActivePageIndex:=5;
        7: pcI2S.ActivePageIndex:=6;
        8: pcI2S.ActivePageIndex:=7;
        9: pcI2S.ActivePageIndex:=8;
        10: pcI2S.ActivePageIndex:=9;
        11: pcI2S.ActivePageIndex:=10;
        12: pcI2S.ActivePageIndex:=11;
        13: pcI2S.ActivePageIndex:=12;
        14: pcI2S.ActivePageIndex:=13;
        end;
     2: case pcW3W.ActivePageIndex of
        1: pcW3W.ActivePageIndex:=0;
        2: pcW3W.ActivePageIndex:=1;
        3: pcW3W.ActivePageIndex:=2;
        4: pcW3W.ActivePageIndex:=3;
        5: pcW3W.ActivePageIndex:=4;
        6: pcW3W.ActivePageIndex:=5;
        7: pcW3W.ActivePageIndex:=6;
        8: pcW3W.ActivePageIndex:=7;
        9: pcW3W.ActivePageIndex:=8;
        10: pcW3W.ActivePageIndex:=9;
        11: pcW3W.ActivePageIndex:=10;
        12: pcW3W.ActivePageIndex:=11;
        13: pcW3W.ActivePageIndex:=12;
        14: pcW3W.ActivePageIndex:=13;
        15: pcW3W.ActivePageIndex:=14;
        16: pcW3W.ActivePageIndex:=15;
        17: pcW3W.ActivePageIndex:=16;
        18: pcW3W.ActivePageIndex:=17;
        19: pcW3W.ActivePageIndex:=18;
        20: pcW3W.ActivePageIndex:=19;
        21: pcW3W.ActivePageIndex:=20;
        22: pcW3W.ActivePageIndex:=21;
        end;
     end;
  end;
  ProcImagesLoad(nil);
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
  0: case pcFajr.ActivePageIndex of
     0: case pcF2S.ActivePage.Caption of
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
     1: case pcF2F.ActivePage.Caption of
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
  1: case pcZuhr.ActivePageIndex of
     0: case pcZ4S.ActivePage.Caption of
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
     1: case pcZ4F.ActivePage.Caption of
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
     2: case pcZ2S.ActivePage.Caption of
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
  3: case pcMaghrib.ActivePageIndex of
     0: case pcM3F.ActivePage.Caption of
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
     1: case pcM2S.ActivePage.Caption of
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
  4: case pcIsha.ActivePageIndex of
     0: case pcI4F.ActivePage.Caption of
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
     1: case pcI2S.ActivePage.Caption of
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
     2: case pcW3W.ActivePage.Caption of
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
      pcF2F.TabIndex:=0;
      pcF2S.TabIndex:=0;
      pcFajr.TabIndex:=0;
      pcMain.TabIndex:=0;
      pcZ2S.TabIndex:=0;
      pcZ4F.TabIndex:=0;
      pcZ4S.TabIndex:=0;
      pcZuhr.TabIndex:=0;
      pcM2S.TabIndex:=0;
      pcM3F.TabIndex:=0;
      pcMaghrib.TabIndex:=0;
      pcW3W.TabIndex:=0;
      pcI2S.TabIndex:=0;
      pcI4F.TabIndex:=0;
      pcIsha.TabIndex:=0;
    end;
end;

end.

