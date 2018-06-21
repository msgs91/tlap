------------------------------- MODULE Stack -------------------------------
EXTENDS Integers
VARIABLES top, size, capacity, action

Init == /\ size = 0
        /\ top = -1 

push == /\ (action = "push")
        /\ size < capacity
        /\ top' = top + 1
        /\ size' = size + 1
        /\ capacity' = capacity
       
pop ==  /\ (action == "pop")
        /\ size > 0
        /\ top' = top - 1
        /\ size' = size -1 
        /\ capacity' = capacity

Next == push \/ pop



=============================================================================
\* Modification History
\* Last modified Tue May 29 19:20:13 IST 2018 by ganapathys
\* Created Tue May 29 19:13:13 IST 2018 by ganapathys
