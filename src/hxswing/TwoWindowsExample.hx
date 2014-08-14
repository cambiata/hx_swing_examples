
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
