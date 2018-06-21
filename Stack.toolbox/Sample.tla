------------------------------- MODULE Sample -------------------------------
EXTENDS Integers
VARIABLES i, pc   

Init == (pc = "start") /\ (i = 0)

Pick == /\ pc = "start"  
        /\ i' \in 0..1000
        /\ pc' = "middle"

Add1 == /\ pc = "middle" 
        /\ i' = i + 1
        /\ pc' = "done"
           
Next == Pick \/ Add1

=============================================================================
\* Modification History
\* Last modified Tue May 29 19:15:14 IST 2018 by ganapathys
\* Created Tue May 29 19:14:57 IST 2018 by ganapathys
