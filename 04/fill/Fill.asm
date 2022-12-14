// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
//p[i]=screen
//while (p[i] < 24576(KBD)){
//M[p[i]] = -1
//p=p+1}
//參考資料:https://www.youtube.com/watch?v=4_bmvT-h8Zs&feature=youtu.be
//複製資料:https://www.cnblogs.com/YjmStr/p/15371886.html

(LOOP)
@KBD
D=M 
@BLACK 

D;JNE //不相等時跳躍
@WHITE 
D;JEQ //相等時跳躍
@LOOP 
0;JMP //無條件跳出
(BLACK)
@SCREEN 
D=A
@P 
M=D //P=SCREEN 
(BLACKLOOP)
@P 
D=M 
@KBD 
D=D-A //D=P-KBD 
@LOOP
D;JEQ //相等時跳躍
D=-1 //黑色
@P 
A=M     
M=D
D=1 
@P
D=D+M 
M=D   
@BLACKLOOP 
0;JMP 
(WHITE) 
@SCREEN 
D=A 
@P //P=SCREEN 
M=D 
(WHITELOOP)
@P 
D=M 
@KBD 
D=D-A //P-KBD 
@LOOP 
D;JEQ 
D=0 
@P 
A=M 
M=D 
D=1  
@P
D=D+M 
M=D 
@WHITELOOP
0;JMP  