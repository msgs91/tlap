---- MODULE MC ----
EXTENDS TCommit, TLC

\* CONSTANT definitions @modelParameterConstants:0RM
const_152690016055244000 == 
{"r1", "r2", "r3"}
----

\* INIT definition @modelBehaviorInit:0
init_152690016055245000 ==
TCInit
----
\* NEXT definition @modelBehaviorNext:0
next_152690016055246000 ==
TCNext
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_152690016055247000 ==
TCTypeOK
----
=============================================================================
\* Modification History
\* Created Mon May 21 16:26:00 IST 2018 by ganapathys
