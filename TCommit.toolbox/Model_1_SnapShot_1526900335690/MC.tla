---- MODULE MC ----
EXTENDS TCommit, TLC

\* CONSTANT definitions @modelParameterConstants:0RM
const_152690033166453000 == 
{"r1", "r2", "r3"}
----

\* INIT definition @modelBehaviorInit:0
init_152690033166454000 ==
TCInit
----
\* NEXT definition @modelBehaviorNext:0
next_152690033166455000 ==
TCNext
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_152690033166456000 ==
TCTypeOK
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_152690033166457000 ==
TCConsistent
----
=============================================================================
\* Modification History
\* Created Mon May 21 16:28:51 IST 2018 by ganapathys
