       include \masm32\include\masm32rt.inc
    include \masm32\macros\macros.asm       
    includelib \masm32\lib\masm32.lib
    includelib \masm32\lib\gdi32.lib
    includelib \masm32\lib\user32.lib
    includelib \masm32\lib\kernel32.lib

.data
num dd 0
counth dd 0
countv dd 0

.code
start:
mov num, sval(input("Input size = "))
mov countv, 1

increase:
mov counth, 0

increase_print:

ccout "*"
inc counth
mov ecx, counth
cmp ecx, countv
jne increase_print
je increase_nextline

increase_nextline:
 print chr$(" "),13,10
 inc countv
 mov eax, countv
 cmp eax, num
 jng increase
 jg decrease

decrease:
mov countv, 1
mov counth, 0

decrease_print:
ccout "*"
inc counth
mov ecx, counth
cmp ecx, num
jne decrease_print
je decrease_nextline

decrease_nextline:
print chr$(" "),13,10
inc countv
mov eax, countv
dec num
cmp num, 0
jne decrease
je finish

finish:
exit
end start