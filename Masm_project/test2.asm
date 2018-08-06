       include \masm32\include\masm32rt.inc
    include \masm32\macros\macros.asm       
    includelib \masm32\lib\masm32.lib
    includelib \masm32\lib\gdi32.lib
    includelib \masm32\lib\user32.lib
    includelib \masm32\lib\kernel32.lib

.data
num1 dd 0
num2 dd 0
result dd 0
travel dd 0

.code

start:
mov num1, sval(input("Enter first number = "))
mov num2, sval(input("Enter second number = "))
mov eax, num1
mov result, eax
mov travel, eax
print str$(travel)

second:
print chr$(" + ")
add travel, 3
print str$(travel)
mov eax, travel
add result, eax
mov ebx, num2
cmp travel, ebx
jne second
je finish

finish:
print chr$(" "),13,10
print chr$("Result = ")
print str$(result),13,10
exit
end start