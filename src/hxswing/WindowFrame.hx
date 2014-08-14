/*
* Copyright (c) 2013 Justinfront Ltd
* author: Justin L Mills
* email: JLM at Justinfront dot net
* created: 19 April 2014
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

import javax.swing.JFrame;
import java.awt.Color;
import java.lang.System;
import java.awt.Container;

// swing user interactions
import java.awt.Cursor;
import java.awt.event.MouseEvent;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;

import java.awt.Graphics;
import java.awt.Graphics2D;

// Surface specific imports
import java.awt.RenderingHints;
import javax.swing.JPanel;


class WindowFrame extends JFrame
implements KeyListener 
implements MouseListener 
implements MouseMotionListener
{
    public var surface:         Surface;
    public var pane:            Container;
    public var paintView:       Graphics2D -> Void;
    
    public static inline function Create( title: String, ?width: Int = 700, ?height: Int = 500 ): WindowFrame
    {
        var wf: WindowFrame = new WindowFrame();
        wf.setTitle( title );
        wf.setSize( width, height );
        return wf;
    }
    
    private function new(){
        super();
        System.setProperty( "sun.java2d.opengl", "True" );
        setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
        surface = new Surface();
        setBackground( Color.black );
        
        pane = getContentPane();
        pane.add( surface );
    }
    
    public function firstrender()
    {
        surface.paintFunction = paintView;
        surface.addKeyListener( this );
        surface.setFocusable( true );
        surface.requestFocusInWindow();
        addMouseListener( this );
        addMouseMotionListener( this );
        
        setVisible( true );
    }
    
    public var onMouseMoved:    MouseEvent -> Void; 
    public var onOverCheck:     MouseEvent -> Void; 
    public var onMousePressed:  MouseEvent -> Void; 
    public var onMouseDragged:  MouseEvent -> Void; 
    public var onMouseClicked:  MouseEvent -> Void; 
    public var onMouseReleased: MouseEvent -> Void; 
    public var onMouseExited:   MouseEvent -> Void; 
    public var onMouseEntered:  MouseEvent -> Void; 
    public var onKeyTyped:      KeyEvent   -> Void;
    public var onKeyReleased:   KeyEvent   -> Void;
    public var onKeyPressed:    KeyEvent   -> Void;
    public function mouseMoved(     e: MouseEvent ) { if( onMouseMoved != null ) onMouseMoved( e );    } 
    public function overCheck(      e: MouseEvent ) { if( onOverCheck != null ) onOverCheck( e );     }
    public function mousePressed(   e: MouseEvent ) { if( onMousePressed != null ) onMousePressed( e );  }
    public function mouseDragged(   e: MouseEvent ) { if( onMouseDragged != null ) onMouseDragged( e );  }
    public function mouseClicked(   e: MouseEvent ) { if( onMouseClicked != null ) onMouseClicked( e );  }
    public function mouseReleased(  e: MouseEvent ) { if( onMouseReleased != null ) onMouseReleased( e ); }
    public function mouseExited(    e: MouseEvent ) { if( onMouseExited != null ) onMouseExited( e );   }
    public function mouseEntered(   e: MouseEvent ) { if( onMouseExited != null ) onMouseEntered( e );  }  
    public function keyTyped(       e: KeyEvent   ) { if( onKeyTyped != null ) onKeyTyped( e );      }
    public function keyReleased(    e: KeyEvent   ) { if( onKeyReleased != null ) onKeyReleased( e );   }
    public function keyPressed(     e: KeyEvent   ) { if( onKeyPressed != null ) onKeyPressed( e );    }
}

class Surface extends JPanel {
    public var g:               Graphics2D;
    public var paintFunction:   Graphics2D -> Void;
    
    public function new(){ super( true ); }
    
    @:overload public function paintComponent( g: Graphics ){
        super.paintComponent( g );
        var g2D: Graphics2D = cast g;
        g2D.setRenderingHint( RenderingHints.KEY_ANTIALIASING
                            , RenderingHints.VALUE_ANTIALIAS_ON );
        g2D.setRenderingHint( RenderingHints.KEY_RENDERING
                            , RenderingHints.VALUE_RENDER_QUALITY );
        paintFunction( g2D );
        g2D.dispose();
    }
  
}