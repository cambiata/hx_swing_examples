/*
* Copyright (c) 2013 Justinfront Ltd
* author: Justin L Mills
* email: JLM at Justinfront dot net
* created: 14 August 2014
* language: Haxe 3
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
* * Redistributions of source code must retain the above copyright
* notice, this list of conditions and the following disclaimer.
* * Redistributions in binary form must reproduce the above copyright
* notice, this list of conditions and the following disclaimer in the
* documentation and/or other materials provided with the distribution.
* * Neither the name of the Justinfront Ltd nor the
* names of its contributors may be used to endorse or promote products
* derived from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY Justinfront Ltd ''AS IS'' AND ANY
* EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL Justinfront Ltd BE LIABLE FOR ANY
* DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
* LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
* SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

package hxswing;

import hxswing.WindowFrame;
import java.awt.Graphics2D;
import java.awt.Color;


class TwoWindowsExample
{
    
    public static function main() { new TwoWindowsExample(); } public function new()
    {
        
        var windowFrame = WindowFrame.Create( "Haxe Java Example - windom 1", 700, 500 );
        windowFrame.paintView = function( g2D: Graphics2D )
        {
                // set drawing color
                g2D.setColor(Color.red);
                // draw a fill oval, x, y, wide, hi
                g2D.fillOval( 300, 120, 150, 150 );
        }
        windowFrame.firstrender();
        
        var windowFrame2 = WindowFrame.Create( "Haxe Java Example - window 2", 700, 500 );
        windowFrame2.paintView = function( g2D: Graphics2D )
        {
                // set drawing color
                g2D.setColor(Color.green);
                // draw a fill oval, x, y, wide, hi
                g2D.fillOval( 300, 120, 150, 150 );
        }
        windowFrame2.firstrender();
    }
    
}