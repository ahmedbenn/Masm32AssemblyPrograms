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
mov ebx, 100
cmp eax, ebx
jng small_a
jg big_a

small_a:
print chr$("Value is smaller than 100"),13,10
mov ebx, 900
cmp eax, ebx
jng small_b
jg big_b

big_a:
print chr$("Value is greater than 100"),13,10
mov ebx, 900
cmp eax, ebx
jng small_b
jg big_b

small_b:
print chr$("Value is smaller 900"),13,10
jmp finish

big_b:
print chr$("Value is greater 900"),13,10
jmp finish

finish:
exit
end start