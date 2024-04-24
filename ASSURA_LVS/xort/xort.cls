*******************************************************************************
****** xort schematic lab2024  <vs>  xort layout lab2024
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(invParam schematic lab2024, _) Cell              1       0*
(NMOS4) MOS                                       2       3*
(PMOS4) MOS                                       2       3*
                                             ------  ------
Total                                             5       6

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(NMOS4) MOS                                       3       3           3       3
(PMOS4) MOS                                       3       3           3       3

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(NMOS4) MOS                                       3       3           1       1
(PMOS4) MOS                                       3       3           2       2
                                             ------  ------      ------  ------
Total                                             6       6           3       3

Match Statistics for Nets                         6       9           0       3

=========================================================================[xort]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  A
S      *1   of PMOS4 {D S}
S       1   of PMOS4 G
S      *1   of NMOS4 {D S}
S       1   of NMOS4 G

Layout Net:  A
L       1   of PMOS4 G
L       1   of NMOS4 G

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  B
S      *1   of PMOS4 {D S}
S       2   of PMOS4 G
S       1   of NMOS4 G

Layout Net:  B
L       2   of PMOS4 G
L       1   of NMOS4 G

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 3)
Schematic Net:  vdd!
S       1   of PMOS4 {D S}
S       3   of PMOS4 B

Layout Net:  vdd!
L       1   of PMOS4 {D S}
L      *1   of PMOS4 B

=========================================================================[xort]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avC8
L ?avS43
L ?avC6

=========================================================================[xort]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net1
S       1   of PMOS4 {D S}
S       2   of NMOS4 {D S}
S      *1   of NMOS4 G

Layout Net:  avC7
L       1   of PMOS4 {D S}
L       2   of NMOS4 {D S}

=========================================================================[xort]
====== Open Internal Nets =====================================================
===============================================================================

These layout nets should connect together:
L        avC7
L        avS43

=========================================================================[xort]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?vdd!
S       1   of PMOS4 {D S}
S       3   of PMOS4 B
S
S ?B
S       1   of PMOS4 {D S}
S       2   of PMOS4 G
S       1   of NMOS4 G
S
S ?net1
S       1   of PMOS4 {D S}
S       2   of NMOS4 {D S}
S       1   of NMOS4 G
S
S ?A
S       1   of PMOS4 {D S}
S       1   of PMOS4 G
S       1   of NMOS4 {D S}
S       1   of NMOS4 G

=========================================================================[xort]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avS43
L       1   of NMOS4 G
L
L ?vdd!
L       1   of PMOS4 {D S}
L       1   of PMOS4 B
L
L ?avC6
L       1   of PMOS4 {D S}
L       2   of PMOS4 B
L
L ?avC8
L       1   of PMOS4 {D S}
L       1   of NMOS4 {D S}
L
L ?avC7
L       1   of PMOS4 {D S}
L       2   of NMOS4 {D S}
L
L ?A
L       1   of PMOS4 G
L       1   of NMOS4 G
L
L ?B
L       2   of PMOS4 G
L       1   of NMOS4 G

=========================================================================[xort]
====== Unmatched or Badly-Matched Schematic Net Details =======================
===============================================================================
S
S ?net1
S      NMOS4 I0/MN0 {D S}
S      PMOS4 I0/MP0 {D S}
S      NMOS4 ?MN0 G
S      NMOS4 MN1 {D S}
S
S ?A
S      NMOS4 ?MN0 {D S}
S      NMOS4 MN1 G
S      PMOS4 ?MP0 {D S}
S      PMOS4 ?MP1 G
S
S ?B
S      NMOS4 I0/MN0 G
S      PMOS4 I0/MP0 G
S      PMOS4 ?MP0 G
S      PMOS4 ?MP1 {D S}
S
S ?vdd!
S      PMOS4 I0/MP0 B
S      PMOS4 I0/MP0 {D S}
S      PMOS4 ?MP0 B
S      PMOS4 ?MP1 B

=========================================================================[xort]
====== Unmatched or Badly-Matched Layout Net Details ==========================
===============================================================================
L
L ?avC7
L      PMOS4 I0/MP0 {D S}
L      NMOS4 MN1 {D S}
L      NMOS4 I0/MN0 {D S}
L
L ?avC8
L      PMOS4 ?avD5_3 {D S}
L      NMOS4 ?avD1_3 {D S}
L
L ?avS43
L      NMOS4 ?avD1_3 G
L
L ?avC6
L      PMOS4 ?avD5_3 B
L      PMOS4 ?avD5_2 B
L      PMOS4 ?avD5_2 {D S}
L
L ?vdd!
L      PMOS4 I0/MP0 B
L      PMOS4 I0/MP0 {D S}
L
L ?A
L      PMOS4 ?avD5_2 G
L      NMOS4 MN1 G
L
L ?B
L      PMOS4 ?avD5_3 G
L      PMOS4 I0/MP0 G
L      NMOS4 I0/MN0 G

=========================================================================[xort]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: MP1  PMOS4

S Pin        Net
S ---        ---
S D          out
S G          A
S S          B
S B          vdd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: MP0  PMOS4

S Pin        Net
S ---        ---
S D          A
S G          B
S S          out
S B          vdd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 3)
Schematic Instance: MN0  NMOS4

S Pin        Net
S ---        ---
S D          A
S G          net1
S S          out
S B          gnd!

=========================================================================[xort]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    avD1_3  NMOS4

L Pin        Net
L ---        ---
L D          ?avC8
L G          ?avS43
L S          out
L B          gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    avD5_2  PMOS4

L Pin        Net
L ---        ---
L D          out
L G          A
L S          ?avC6
L B          ?avC6

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 3)
Layout Instance:    avD5_3  PMOS4

L Pin        Net
L ---        ---
L D          ?avC8
L G          B
L S          out
L B          ?avC6

=========================================================================[xort]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 3          3         Bad Initial Net Bindings
 1          1         Bad Matched Nets
 -          3         Unmatched Internal Nets
 -          1         Open Internal Nets
 3          3         Unmatched Instances

