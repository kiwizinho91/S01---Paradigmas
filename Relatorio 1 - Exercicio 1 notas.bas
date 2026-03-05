DIM np1 AS SINGLE
DIM np2 AS SINGLE
DIM np3 AS SINGLE
DIM p1 AS INTEGER
DIM p2 AS INTEGER
DIM p3 AS INTEGER
DIM media AS SINGLE

INPUT np1
INPUT np2
INPUT np3

INPUT p1
INPUT p2
INPUT p3

media = (np1*p1 + np2*p2 + np3*p3) / (p1 + p2 + p3)

PRINT "Media = "; media

IF media > 70 THEN
    PRINT "Aprovado direto"
ELSE
    PRINT "Reprovado direto"
END IF

SLEEP