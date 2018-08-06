        include \masm32\include\masm32rt.inc
    include \masm32\macros\macros.asm       
    includelib \masm32\lib\masm32.lib
    includelib \masm32\lib\gdi32.lib
    includelib \masm32\lib\user32.lib
    includelib \masm32\lib\kernel32.lib

.data
temp dd 0

.code

start:

mov eax, sval(input("Input One Value ="))
mov temp, eax
mov ebx, 100
cmp eax, ebx
jng small_a
jg big_a

small_a:
print chr$("Value is smaller than 100"),13,10
jmp second

big_a:
print chr$("Value is greater than 100"),13,10
jmp second

second:
mov eax, temp
mov ecx, 900
cmp eax, ecx
jng less_a
jg great_a


less_a:
print chr$("Value is smaller 900"),13,10
jmp finish

great_a:
print chr$("Value is greater 900"),13,10
jmp finish

finish:
exit
end start