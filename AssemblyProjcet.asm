.model large
.stack 1000h
.data

;welcome page
a1 db 10,13,'                   <<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>$'
a2 db 10,13,'                   <<<        Welcome To Restaurant SYSTEM     >>>$'
a3 db 10,13,'                   <<<              #FREE_Palestine            >>>$'
a4 db 10,13,'                   <<<        Now you can place an order       >>>$'
a5 db 10,13,'                   <<< Made BY:Mohamed Hussein & Mohamed Reda  >>>$'
a6 db 10,13,'                   <<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>$'

;choose
a7 db 10,13,'                    MENU$'
a8 db 10,13,'                    Enter Your Choise: $'
a19 db 10,13,'                            Enter 1 to Display MENU: $'
a34 db 10,13,'                            Peak Your Item: $'
a35 db 10,13,'                            Enter Quantity: $'
a36 db 10,13,'                            Invalid Input !! Rerun the Program$' 
a37 db 10,13,'                            Total Price: $'
a38 db 10,13,'                   1.Return To Menu: $'
a39 db 10,13,'                   2.Exit $'


;Schedulelist
a9 db 10,13,'                         1. Breakfast$'
a10 db 10,13,'                        2.  Lunch$'
a11 db 10,13,'                        3.  Dinner$'

;Breakfast List
a12 db 10,13,'                  <<<<<<      Breakfast List      >>>>>>$'
a13 db 10,13,'                       1.Eggs with sausage      50/-$'
a14 db 10,13,'                       2.Beans with tahinil     50/-$'
a15 db 10,13,'                       3.Meat manoushe          50/-$'
a16 db 10,13,'                       4.Big Breakfast          50/-$'
a17 db 10,13,'                       5.Hot Tea                50/-$'
a18 db 10,13,'                       6.Espresso               50/-$'


;Lunch List
a20 db 10,13,'                  <<<<<<        Lunch List       >>>>>>$'
a21 db 10,13,'                       1.Half a chicken          100/-$'
a22 db 10,13,'                       2.Double Chicken burger   100/-$'
a23 db 10,13,'                       3.Big Tasty Chicken       100/-$'
a24 db 10,13,'                       4.Chicken Fillet          100/-$'
a25 db 10,13,'                       5.Spicy Chicken Fillet    100/-$'
a26 db 10,13,'                       6.Cheddar Cheese Fries    100/-$'


;Dinner List
a27 db 10,13,'                  <<<<<<        Dinner List       >>>>>>$'
a28 db 10,13,'                       1.Mix 2 Meal              200/-$'
a29 db 10,13,'                       2.Dinner Box              200/-$'
a30 db 10,13,'                       3.Big Meals 6 Pieces      200/-$'
a31 db 10,13,'                       4.Chicken Caesar Salad    200/-$'
a32 db 10,13,'                       5.Nuggets 6 Pieces        200/-$'
a33 db 10,13,'                       6.Triple Beefburger       200/-$'


.code
main proc

mov ax,@data
mov ds,ax

;welcome page
mov ah,9
lea dx,a1
int 21h
lea dx,a2
int 21h
lea dx,a3
int 21h
lea dx,a4
int 21h
lea dx,a5
int 21h
lea dx,a6
int 21h

;new line
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

;take input to start
mov ah,9
lea dx,a19
int 21h
mov ah,1
int 21h
mov bh,al
sub bh,48

cmp bh,1
je Schedule
jmp Invalid


Schedule:
;new line
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,9
lea dx,a7
int 21h
lea dx,a9
int 21h
lea dx,a10
int 21h
lea dx,a11
int 21h

;list choose
lea dx,a8
int 21h

mov ah,1
int 21h
mov bh,al
sub bh,48

cmp bh,1
je Breakfast

cmp bh,2
je Lunch

cmp bh,3
je Dinner

jmp Invalid


;Breakfast list
Breakfast:

;new line
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

;List Start
mov ah,9
lea dx,a12
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,9
lea dx,a13
int 21h
lea dx,a14
int 21h
lea dx,a15
int 21h
lea dx,a16
int 21h
lea dx,a17
int 21h
lea dx,a18
int 21h

;condition checking
lea dx,a34
int 21h

mov ah,1
int 21h
mov bl,al
sub bl,48

cmp bl,1
je Fifty

cmp bl,2
je fifty

cmp bl,3
je fifty

cmp bl,4
je fifty

cmp bl,5
je fifty

cmp bl,6
je fifty

jmp Invalid



Lunch:
;new line
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

;List Start
mov ah,9
lea dx,a20
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,9
lea dx,a21
int 21h
lea dx,a22
int 21h
lea dx,a23
int 21h
lea dx,a24
int 21h
lea dx,a25
int 21h
lea dx,a26
int 21h

;condition checking
lea dx,a34
int 21h

mov ah,1
int 21h
mov bl,al
sub bl,48

cmp bl,1
je Hundred

cmp bl,2
je Hundred

cmp bl,3
je Hundred

cmp bl,4
je Hundred

cmp bl,5
je Hundred

cmp bl,6
je Hundred

jmp Invalid

;for exit
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,9
lea dx,a38
int 21h

mov ah,1
int 21h
mov bh,al

cmp bh,1
jmp Exit


Dinner:
;new line
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

;List Start
mov ah,9
lea dx,a27
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,9
lea dx,a28
int 21h
lea dx,a29
int 21h
lea dx,a30
int 21h
lea dx,a31
int 21h
lea dx,a32
int 21h
lea dx,a33
int 21h

;condition checking
lea dx,a34
int 21h

mov ah,1
int 21h
mov bl,al
sub bl,48

cmp bl,1
je TwoHundred

cmp bl,2
je TwoHundred

cmp bl,3
je TwoHundred

cmp bl,4
je TwoHundred

cmp bl,5
je TwoHundred

cmp bl,6
je TwoHundred

jmp Invalid


Fifty:
mov bl,5
lea dx,a35
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48

mul bl
aam

mov cx,ax
add ch,48
add cl,48


lea dx,a37
mov ah,9
int 21h

mov ah,2
mov dl,ch
int 21h

mov dl,cl
int 21h

mov dl,'0'
int 21h

mov dl,47
int 21h
mov dl,45
int 21h

;for exit or main menu
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,9
lea dx,a38
int 21h

mov ah,9
lea dx,a39
int 21h

mov ah,9
lea dx,a8
int 21h

mov ah,1
int 21h
sub al,48

cmp al,1
je Schedule

cmp al,2
je Exit

jmp Invalid


Hundred:
mov bl,10
lea dx,a35
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48

mul bl
aam

mov cx,ax
add ch,48
add cl,48


lea dx,a37
mov ah,9
int 21h

mov ah,2
mov dl,ch
int 21h

mov dl,cl
int 21h

mov dl,'0'
int 21h

mov dl,47
int 21h
mov dl,45
int 21h

;for exit
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,9
lea dx,a38
int 21h

mov ah,9
lea dx,a39
int 21h

mov ah,9
lea dx,a8
int 21h

mov ah,1
int 21h
sub al,48

cmp al,1
je Schedule

cmp al,2
je Exit

jmp Invalid


TwoHundred:
mov bl,20
lea dx,a35
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48

mul bl
aam

mov cx,ax
add ch,48
add cl,48


lea dx,a37
mov ah,9
int 21h

mov ah,2
mov dl,ch
int 21h

mov dl,cl
int 21h

mov dl,'0'
int 21h

mov dl,47
int 21h
mov dl,45
int 21h

;for exit
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,9
lea dx,a38
int 21h

mov ah,9
lea dx,a39
int 21h

mov ah,9
lea dx,a8
int 21h

mov ah,1
int 21h
sub al,48

cmp al,1
je Schedule

cmp al,2
je Exit

jmp Invalid


Invalid:
;new line
mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h

mov ah,2
mov dl,0ah
int 21h
mov dl,0dh
int 21h


mov ah,9
lea dx,a36
int 21h
jmp Exit


Exit:
mov ah,4ch
int 21h
main endp
end main
