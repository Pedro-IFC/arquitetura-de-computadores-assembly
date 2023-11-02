.text
    li $t1, 2
    li $t2, 7
    
    ble $t2, $t1, t1menor 
    j t1maior
    
t1maior:
    move $t0, $t1
    j end
    
t1menor:
    move $t0, $t2
    
end:

