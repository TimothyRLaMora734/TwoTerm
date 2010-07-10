//
//  CharacterGenerator.mm
//  2Term
//
//  Created by Kelvin Sherlock on 7/4/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CharacterGenerator.h"


static uint16_t chars[] = {    
    
    // [space]
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
    
    // !
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000000000000000,
    
    // "      
	0b0000110011000000,
	0b0000110011000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
    
    // #
	0b0000110011000000,
	0b0000110011000000,
	0b0011111111110000,
	0b0000110011000000,
	0b0011111111110000,
	0b0000110011000000,
	0b0000110011000000,
	0b0000000000000000,
    
    // $
	0b0000001100000000,
	0b0000111111110000,
	0b0011001100000000,
	0b0000111111000000,
	0b0000001100110000,
	0b0011111111000000,
	0b0000001100000000,
	0b0000000000000000,
    
    // %
	0b0011110000000000,
	0b0011110000110000,
	0b0000000011000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0011000011110000,
	0b0000000011110000,
	0b0000000000000000,
    
    
    // &
	0b0000110000000000,
	0b0011001100000000,
	0b0011001100000000,
	0b0000110000000000,
	0b0011001100110000,
	0b0011000011000000,
	0b0000111100110000,
	0b0000000000000000,
    
    // '
	0b0000001100000000,
	0b0000001100000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
    // (
    
	0b0000001100000000,
	0b0000110000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0000110000000000,
	0b0000001100000000,
	0b0000000000000000,
    
    // )
    
	0b0000001100000000,
	0b0000000011000000,
	0b0000000000110000,
	0b0000000000110000,
	0b0000000000110000,
	0b0000000011000000,
	0b0000001100000000,
	0b0000000000000000,
    
    
    //*
    
	0b0000001100000000,
	0b0011001100110000,
	0b0000111111000000,
	0b0000001100000000,
	0b0000111111000000,
	0b0011001100110000,
	0b0000001100000000,
	0b0000000000000000,
    
    //+
    
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0011111111110000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000000000000000,
    
    // ,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0000000000000000,
    
    
    
    // -
    
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0011111111110000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
    
    // .
    
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000000000000000,
    
    // /
	0b0000000000000000,
	0b0000000000110000,
	0b0000000011000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0011000000000000,
	0b0000000000000000,
	0b0000000000000000,
    
    
    //0
	0b0000111111000000,
	0b0011000000110000,
	0b0011000011110000,
	0b0011001100110000,
	0b0011110000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //1
	0b0000001100000000,
	0b0000111100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000111111000000,
	0b0000000000000000,
    
    //2
	0b0000111111000000,
	0b0011000000110000,
	0b0000000000110000,
	0b0000001111000000,
	0b0000110000000000,
	0b0011000000000000,
	0b0011111111110000,
	0b0000000000000000,
    
    
    //3
	0b0011111111110000,
	0b0000000000110000,
	0b0000000011000000,
	0b0000001111000000,
	0b0000000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //4
	0b0000000011000000,
	0b0000001111000000,
	0b0000110011000000,
	0b0011000011000000,
	0b0011111111110000,
	0b0000000011000000,
	0b0000000011000000,
	0b0000000000000000,
    
    //5
	0b0011111111110000,
	0b0011000000000000,
	0b0011111111000000,
	0b0000000000110000,
	0b0000000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //6
	0b0000001111110000,
	0b0000110000000000,
	0b0011000000000000,
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //7
	0b0011111111110000,
	0b0000000000110000,
	0b0000000011000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0000110000000000,
	0b0000110000000000,
	0b0000000000000000,
    
    //8
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
	
    //9
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111110000,
	0b0000000000110000,
	0b0000000011000000,
	0b0011111100000000,
	0b0000000000000000,
    
    //:
	0b0000000000000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
    
    //;
	0b0000000000000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0000000000000000,
    
    //<
	0b0000000011000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0011000000000000,
	0b0000110000000000,
	0b0000001100000000,
	0b0000000011000000,
	0b0000000000000000,
    
    //=
	0b0000000000000000,
	0b0000000000000000,
 	0b0011111111110000,
	0b0000000000000000,
	0b0011111111110000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
    
    //>
	0b0000110000000000,
	0b0000001100000000,
	0b0000000011000000,
	0b0000000000110000,
	0b0000000011000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0000000000000000,
    
    //?
	0b0000111111000000,
	0b0011000000110000,
	0b0000000011000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000000000000000,
    
    
    //@
    
	0b0000111111000000,
	0b0011000000110000,
	0b0011001100110000,
	0b0011001100110000,
	0b0011001111000000,
	0b0011000000000000,
	0b0000111111110000,
	0b0000000000000000,
    
    
    
    //CHAR_A	START
	0b0000001100000000,
	0b0000110011000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000000000000000,
    
    
    //CHAR_B	START
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111000000,
	0b0000000000000000,
    
    //CHAR_C	START
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //CHAR_D	START
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111000000,
	0b0000000000000000,
    
    //CHAR_E	START
	0b0011111111110000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011111111000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011111111110000,
	0b0000000000000000,
    
    //CHAR_F	START
	0b0011111111110000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011111111000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0000000000000000,
    
    //CHAR_G	START
	0b0000111111110000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000011110000,
	0b0011000000110000,
	0b0000111111110000,
	0b0000000000000000,
    
    //CHAR_H	START
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000000000000000,
    
    //CHAR_I	START
	0b0000111111000000,
	0b0000001100000000,
   	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000111111000000,
	0b0000000000000000,
    
    //CHAR_J	START
    0b0000000000110000,
    0b0000000000110000,
	0b0000000000110000,
	0b0000000000110000,
	0b0000000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //CHAR_K	START
	0b0011000011000000,
	0b0011001100000000,
	0b0011110000000000,
	0b0011000000000000,
	0b0011110000000000,
	0b0011001100000000,
	0b0011000011000000,
	0b0000000000000000,
    
    //CHAR_L	START
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011111111110000,
	0b0000000000000000,
    
    //CHAR_M	START
	0b0011000000110000,
	0b0011110011110000,
	0b0011001100110000,
	0b0011001100110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000000000000000,
    
    //CHAR_N	START
	0b0011000000110000,
	0b0011000000110000,
	0b0011110000110000,
	0b0011001100110000,
	0b0011000011110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000000000000000,
    
    //CHAR_O	START
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //CHAR_P	START
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0000000000000000,
    
    //CHAR_Q	START
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011001100110000,
	0b0011000011000000,
	0b0000111100110000,
	0b0000000000000000,
    
    //CHAR_R	START
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111000000,
	0b0011001100000000,
	0b0011000011000000,
	0b0011000000110000,
	0b0000000000000000,
    
    //CHAR_S	START
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000000000,
	0b0000111111000000,
	0b0000000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //CHAR_T	START
	0b0011111111110000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000000000000000,
    
    //CHAR_U	START
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //CHAR_V	START
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000110011000000,
	0b0000001100000000,
	0b0000000000000000,
    
    //CHAR_W	START
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011001100110000,
	0b0011001100110000,
	0b0011110011110000,
	0b0011000000110000,
	0b0000000000000000,           
    
    // X
	0b0011000000110000,
	0b0011000000110000,
	0b0000110011000000,
	0b0000001100000000,
	0b0000110011000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000000000000000,
    
    //CHAR_Y	START
	0b0011000000110000,
	0b0011000000110000,
	0b0000110011000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000000000000000,
    
    //CHAR_Z	START
	0b0011111111110000,
	0b0000000000110000,
	0b0000000011000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0011000000000000,
	0b0011111111110000,
	0b0000000000000000,
    
    // _[_
	0b0011111111110000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011111111110000,
	0b0000000000000000,
    
    // backslash
	0b0000000000000000,
	0b0011000000000000,
	0b0000110000000000,
	0b0000001100000000,
	0b0000000011000000,
	0b0000000000110000,
	0b0000000000000000,
	0b0000000000000000,
    
    // ]
	0b0011111111110000,
	0b0000000000110000,
	0b0000000000110000,
	0b0000000000110000,
	0b0000000000110000,
	0b0000000000110000,
	0b0011111111110000,
	0b0000000000000000,
    
    // ^
    
	0b0000000000000000,
	0b0000000000000000,
	0b0000001100000000,
	0b0000110011000000,
	0b0011000000110000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
    
    // _
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b1111111111111100,
    
    // `
	0b0000110000000000,
	0b0000001100000000,
	0b0000000011000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
    
    
    // a
	0b0000000000000000,
	0b0000000000000000,
	0b0000111111000000,
	0b0000000000110000,
	0b0000111111110000,
	0b0011000000110000,
	0b0000111111110000,
	0b0000000000000000,
    
    //b
	0b0011000000000000,
	0b0011000000000000,
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111000000,
	0b0000000000000000,
    
    //c
 	0b0000000000000000,
	0b0000000000000000,
	0b0000111111110000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0000111111110000,
	0b0000000000000000,
    
    //d
	0b0000000000110000,
	0b0000000000110000,
	0b0000111111110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111110000,
	0b0000000000000000,
    
    //e
 	0b0000000000000000,
	0b0000000000000000,
	0b0000111111000000,
	0b0011000000110000,
	0b0011111111110000,
	0b0011000000000000,
	0b0000111111110000,
	0b0000000000000000,
    
    //f
 	0b0000001111000000,
	0b0000110000110000,
	0b0000110000000000,
	0b0011111111000000,
	0b0000110000000000,
	0b0000110000000000,
	0b0000110000000000,
	0b0000000000000000,
    
    // g
    0b0000000000000000,
	0b0000000000000000,
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111110000,
	0b0000000000110000,
	0b0000111111000000,
    
    //h
 	0b0011000000000000,
	0b0011000000000000,
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000000000000000,
    
    //i
 	0b0000001100000000,
	0b0000000000000000,
	0b0000111100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000111111000000,
	0b0000000000000000,
    
    // j
    
 	0b0000000011000000,
	0b0000000000000000,
	0b0000001111000000,
	0b0000000011000000,
	0b0000000011000000,
	0b0000000011000000,
	0b0000110011000000,
	0b0000001100000000,
    
    // k
    
 	0b0011000000000000,
	0b0011000000000000,
	0b0011000011000000,
	0b0011001100000000,
	0b0011111100000000,
	0b0011000011000000,
	0b0011000000110000,
	0b0000000000000000,
    
    //l
 	0b0000111100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000111111000000,
	0b0000000000000000,
    
    //m
    
 	0b0000000000000000,
	0b0000000000000000,
	0b0011110011110000,
	0b0011001100110000,
	0b0011001100110000,
	0b0011001100110000,
	0b0011000000110000,
	0b0000000000000000,
    
    //n
 	0b0000000000000000,
	0b0000000000000000,
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000000000000000,
    
    
    //o
 	0b0000000000000000,
	0b0000000000000000,
	0b0000111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111000000,
	0b0000000000000000,
    
    //p
    
 	0b0000000000000000,
	0b0000000000000000,
	0b0011111111000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011111111000000,
	0b0011000000000000,
	0b0011000000000000,
    
    //q
    
 	0b0000000000000000,
	0b0000000000000000,
	0b0000111111110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111110000,
	0b0000000000110000,
	0b0000000000110000,
    
    //r
 	0b0000000000000000,
	0b0000000000000000,
	0b0011001111110000,
	0b0011110000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0011000000000000,
	0b0000000000000000,
    
    //s
    
 	0b0000000000000000,
	0b0000000000000000,
	0b0000111111110000,
	0b0011000000000000,
	0b0000111111000000,
	0b0000000000110000,
	0b0011111111000000,
	0b0000000000000000,
    
    //t
 	0b0000110000000000,
	0b0000110000000000,
	0b0011111111000000,
	0b0000110000000000,
	0b0000110000000000,
	0b0000110000110000,
	0b0000001111000000,
	0b0000000000000000,
    
    //u
    
 	0b0000000000000000,
	0b0000000000000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000011110000,
	0b0000111100110000,
	0b0000000000000000,
    
    //v
    
 	0b0000000000000000,
	0b0000000000000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000110011000000,
	0b0000001100000000,
	0b0000000000000000,
    
    // w
 	0b0000000000000000,
	0b0000000000000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011001100110000,
	0b0011001100110000,
	0b0011110011110000,
	0b0000000000000000,
    
    //x
 	0b0000000000000000,
	0b0000000000000000,
	0b0011000000110000,
	0b0000110011000000,
	0b0000001100000000,
	0b0000110011000000,
	0b0011000000110000,
	0b0000000000000000,
    
    //y
    
 	0b0000000000000000,
	0b0000000000000000,
	0b0011000000110000,
	0b0011000000110000,
	0b0011000000110000,
	0b0000111111110000,
	0b0000000000110000,
	0b0000111111000000,
    
    //z
 	0b0000000000000000,
	0b0000000000000000,
	0b0011111111110000,
	0b0000000011000000,
	0b0000001100000000,
	0b0000110000000000,
	0b0011111111110000,
	0b0000000000000000,
    
    //{
    
 	0b0000001111110000,
	0b0000111100000000,
	0b0000111100000000,
	0b0011110000000000,
	0b0000111100000000,
	0b0000111100000000,
	0b0000001111110000,
	0b0000000000000000,
    
    
    //|                   
 	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
    
    //}               
 	0b0011111100000000,
	0b0000001111000000,
	0b0000001111000000,
	0b0000000011110000,
	0b0000001111000000,
	0b0000001111000000,
	0b0011111100000000,
	0b0000000000000000,
    
    //~
    
 	0b0000111100110000,
	0b0011001111000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000
	
};


// mousetext 0x40--0x5f (incomplete)
static uint16_t mousetext[] = {
    
    // @ -- closed apple
    0b0000000011000000,
    0b0000001100000000,
    0b0011110011110000,
    0b1111111111111100,
    0b1111111111110000,
    0b1111111111110000,
    0b0011111111111100,
    0b0011110011110000,
    
    // A -- open apple
    0b0000000011000000,
    0b0000001100000000,
    0b0011110011110000,
    0b1100000000001100,
    0b1100000000110000,
    0b1100000000110000,
    0b0011001100001100,
    0b0011110011110000,    
    
    // B -- mouse arrow
	0b0000000000000000,
	0b0000000000000000,    
	0b0011000000000000,
	0b0011110000000000,
	0b0011111100000000,
	0b0011111111000000,
	0b0011110011110000,
	0b0011000000001100,
    
    // C - X
	0b0000000000000000,    
	0b0011000000110000,
	0b0000110011000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000110011000000,
	0b0011001100110000,
	0b0000000000000000,
    
    
    // D - checkmark
	0b0000000000000000,
	0b0000000000001100,
	0b0000000000110000,
	0b1100000011000000,
	0b0011001100000000,
	0b0000110000000000,
	0b0000110000000000,
	0b0000000000000000,    
    
    
    // E - checkmark (inverted)
    
	0b1111111111111100,
	0b1111111111110000,
	0b1111111111001100,
	0b0000111100111100,
	0b1100110011111100,
	0b1111001111111100,
	0b1111001111111100,
	0b1111111111111100,     
    
    // F - running man (part 1)
    
	0b0000000011111100,
	0b0000000000111100,
	0b0011111111111100,
	0b1100000011110000,
	0b1100001111111100,
	0b0000000011110000,
	0b1111111111110000,
	0b0011000000000000,     
    
    
    // G - running man (part 2)
	0b0000000000000000,
	0b0000001111000000,
	0b1111110000000000,
	0b0000000000000000,
	0b1111110000000000,
	0b0000111100000000,
	0b0000001100000000,
	0b0000000011111100,        
    
    // H - left arrow
    
	0b0000001100000000,
	0b0000110000000000,
	0b0011000000000000,
	0b1111111111111100,
	0b0011000000000000,
	0b0000110000000000,
	0b0000001100000000,
	0b0000000000000000,     
    
    // I - ...
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0011001100110000,     
    
    // J - down arrow
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b1100001100001100,
	0b0011001100110000,
	0b0000111111000000,
	0b0000001100000000,      
    
    
    // K - up arrow
	0b0000001100000000,
	0b0000111111000000,
	0b0011001100110000,
	0b1100001100001100,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,
	0b0000001100000000,   
    
    
    
    //L
	0b1111111111111100,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b1111111111111100,
    
    // M - return
	0b0000000000001100,
	0b0000000000001100,
	0b0000000000001100,
	0b0000110000001100,
	0b0011110000001100,
	0b1111111111111100,
	0b0011110000000000,
	0b0000110000000000,       
    
    // N
	0b1111111111110000,
	0b1111111111110000,
	0b1111111111110000,
	0b1111111111110000,
	0b1111111111110000,
	0b1111111111110000,
	0b1111111111110000,
	0b1111111111110000,
    
    
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,
	0b0000000000000000,        
    
};




const unsigned NumChars = sizeof(chars) / sizeof(chars[0]) / 8;


static void NullRelease(void *info, const void *data, size_t size)
{
}


/*
 * 40 character mode.  Double the height of each line.
 *
 *
 */
static uint8_t *char_40()
{
    uint8_t *data;
    uint8_t *out;
    
    unsigned i;
    unsigned max = NumChars * 8;    
    
    out = data = (uint8_t *)malloc(NumChars * 16);
    
    for (i = 0; i < max; ++i)
    {
        uint16_t x = ~chars[i];
        
        
        *out++ = x >> 8;
        *out++ = x & 0x0f;
        
        *out++ = x >> 8;
        *out++ = x & 0x0f;
    }
    
    return data;
}





static NSData *Data_Char80_7x16 = nil;
static NSData *Data_Char40_14x16 = nil;

static NSArray *Array_Char80_7x16 = nil;
static NSArray *Array_Char40_14x16 = nil;


void CreateArray_Char80_7x16()
{

        
    NSImage *images[NumChars];
        
    unsigned i;
    unsigned mallocSize = NumChars * 16;
    unsigned max = NumChars * 8;
    
    
    uint8_t *bytes;
    uint8_t *ptr;
    
    bytes = ptr = (uint8_t *)malloc(mallocSize);
 
    for (i = 0; i < max; ++i)
    {
        unsigned j;
        uint16_t x = ~chars[i];
        uint8_t y = 0;
        
        for (j = 0; j < 8; ++j)
        {
            y <<= 1;
            if (x & 0x8000) y |= 0x01;
            x <<= 2;
        }
        
        
        *ptr++ = y;
        *ptr++ = y;
    }
    
        
        
    Data_Char80_7x16 = [[NSData alloc] initWithBytesNoCopy: bytes length: mallocSize freeWhenDone: YES];
        
    for (i = 0; i < NumChars; ++i)
    {
        CGImageRef img;
        CGDataProviderRef provider;
        
        provider = CGDataProviderCreateWithData(NULL, &bytes[i * 16], 16, &NullRelease);

        img = CGImageMaskCreate(7,      // width
                                16,     // height
                                1,      // bits per component
                                1,      // bits per pixel
                                1,      // bytes per row.
                                provider, 
                                NULL,   // decode array
                                false   // should interpolate
                                );
        
        images[i] = [[[NSImage alloc] initWithCGImage: img size: NSZeroSize] autorelease];
        //[images[i] setFlipped: YES];
        
        CGDataProviderRelease(provider);
        CGImageRelease(img);
        
    }

    
    Array_Char80_7x16 = [[NSArray alloc] initWithObjects: images count: NumChars];
    
}



@implementation CharacterGenerator


+(CharacterGenerator *)generatorWithArray: (NSArray *)array base: (unsigned)base
{
    CharacterGenerator *rv = [self new];
    rv->_base = base;
    rv->_characters = [array retain];
    
    return [rv autorelease];
}

+(CharacterGenerator *)generator
{
    @synchronized (self)
    {
        if (!Array_Char80_7x16) CreateArray_Char80_7x16();

        return [CharacterGenerator generatorWithArray: Array_Char80_7x16 base: ' '];        
    }
}

-(NSImage *)imageForCharacter:(unsigned)character
{
    //id o;
    if (character < _base) return nil;
    
    character -= _base;
    
    if (character >= [_characters count]) return nil;
    
    //o = [_characters objectAtIndex: character];

    return [_characters objectAtIndex: character];
}


-(void)dealloc 
{
    [_characters release];
    [super dealloc];
}







@end