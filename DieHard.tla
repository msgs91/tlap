------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers
VARIABLES small, big
TypeOk == /\ small \in 0 .. 3
          /\ big \in 0 .. 5
          
Init == /\ small = 0
        /\ big = 0
        
        
FillSmall == /\ small' = 3
             /\ big' = big

FillBig == /\ big' = 5
           /\ small' = small
          
EmptySmall == /\ small' = 0 
              /\ big' = big
              
EmptyBig == /\ big' = 0
            /\ small' = small 
          
SmallToBig == /\ big + small =< 5
              /\ big' = small + big
              /\ small' = 0
              \/ /\ big + small > 5
                 /\ big' = 5
                 /\ small' = small - ( 5 - big )

BigToSmall == /\ big + small =< 3
              /\ small' = small + big
              /\ big' = 0
              \/ /\ big + small > 3
                 /\ small' = 3
                 /\ big' = big - ( 3 - small) 
          
        
Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall  


=============================================================================
\* Modification History
\* Last modified Mon May 21 15:46:56 IST 2018 by ganapathys
\* Created Mon May 21 15:17:26 IST 2018 by ganapathys
