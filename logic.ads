-----------------------------------------------------------------------------
--                               MaRTrix                                   -- 
-----------------------------------------------------------------------------
--                                                                         --
--  MarTRix is a tetris-like game for MaRTE OS.                            --
--  This code is distributed for educational purposes only.                --
--                                                                         --
--  author:   Alvaro Garcia Cuesta                                         --
--  email:    alvaro@binarynonsense.com                                    --
--  website:  www.binarynonsense.com                                       --
--                                                                         --
--  file: logic.ads                                                        --
-----------------------------------------------------------------------------
--                               License                                  -- 
-----------------------------------------------------------------------------
--                                                                         --
-- MarTRix is free software; you can redistribute it and/or modify it      --
-- under the terms of the GNU General Public License version 2 as          -- 
-- published by the Free Software Foundation.                              --
-- See COPYING file for more info about the license                        --
--                                                                         --
-----------------------------------------------------------------------------
--                        last update: 16 Feb 09                           --
-----------------------------------------------------------------------------
with VGA_Marte;
use VGA_Marte;
with Interfaces.C;
with Interfaces.C.Strings;

package Logic is

        use type Interfaces.C.Unsigned;
        use type Interfaces.C.int;
        
        procedure CheckForMovement(blockNumber:integer);
        procedure CheckMapLines;
        procedure MoveMapLinesDown(line:integer);
        procedure MoveBlockDown(blockNumber:integer);
        function IsSpaceFree(blockNumber:integer;posX:integer;posY:integer) return boolean;
        procedure ChooseNewBlock(first:boolean);

end Logic;
