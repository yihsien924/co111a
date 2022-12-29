// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
//參考:https://www.youtube.com/watch?v=4_bmvT-h8Zs&feature=youtu.be
//照著老師2017年的教學影片邏輯一步一步打
//R2=R1*R0

//R2=0
//while(R1>R0){
//    R2=R2+0
//    R1=R1-1
//}
@R2	
M=0	
@0
D=M //R2 = 0
@END
D;JEQ //無條件跳出

@R1
D=M  
@END
D;JEQ
(LOOP)
@R0	
D=M	
@R2	
M=D+M //R2+R0
@R1	
M=M-1
D=M	//R1=R1-1
@LOOP
D;JGT
(END)
@END
0;JMP
