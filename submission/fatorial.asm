@ /000              ; Início do programa na memória 0x100
        SC Y        ;
        HM =0       ; Halta a execução

@ /100
N       K /0003
VAL     K /1     ; resultado
TEMP    K /0
UM      K/0001   ; const1


@ /200
Y       k/0000   ; Retorno
        LD N ;
        MM TEMP;
        LV =1;
        MM UM;
        MM VAL;
        LD TEMP;
        JZ /021E;
        LD VAL
        ML TEMP;
        MM VAL;
        LD TEMP;
        SB UM;
        MM TEMP;
        JP /020C;
        RS Y;

