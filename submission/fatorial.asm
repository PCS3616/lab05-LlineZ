@ /0000              ; Início do programa na memória 0x0000
        SC Y         ; Chama a sub-rotina Y
        HM =0        ; Para a execução

@ /0100              ; Dados na memória 0x0100
N       K /0001      ; N = 1 (número para calcular o fatorial)
VAL     K /0001      ; VAL = 1 (resultado do fatorial)
TEMP    K /0000      ; TEMP = 0 (variável temporária)
UM      K /0001      ; UM = 1 (constante 1)

@ /0200              ; Sub-rotina Y na memória 0x0200
Y       K /0000      ; Endereço de retorno da sub-rotina
        LD N         ; Carrega N no acumulador
        MM TEMP      ; Armazena N em TEMP
        LV =1        ; Carrega 1 no acumulador
        MM UM        ; Armazena 1 em UM
        MM VAL       ; Armazena 1 em VAL (inicializa o resultado)
LOOP:
        LD TEMP      ; Carrega TEMP no acumulador
        JZ FIM       ; Se TEMP for zero, pula para o fim da sub-rotina
        LD VAL       ; Carrega VAL no acumulador
        ML TEMP      ; Multiplica VAL por TEMP
        MM VAL       ; Armazena o resultado em VAL
        LD TEMP      ; Carrega TEMP no acumulador
        SB UM        ; Subtrai 1 de TEMP
        MM TEMP      ; Armazena o novo valor de TEMP
        JP LOOP      ; Pula para o início do loop (LOOP)
FIM:
        RS Y         ; Retorna ao programa principal
