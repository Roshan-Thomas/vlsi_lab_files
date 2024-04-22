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
(NMOS4) MOS                                       3       3           2       2
(PMOS4) MOS                                       3       3           1       1
                                             ------  ------      ------  ------
Total                                             6       6           3       3

Match Statistics for Nets                         6       8           0       2

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
Schematic Net:  out
S       2   of PMOS4 {D S}
S       2   of PMOS4 B
S       2   of NMOS4 {D S}
S      *1   of NMOS4 B

Layout Net:  out
L      *3   of PMOS4 {D S}
L       2   of PMOS4 B
L       2   of NMOS4 {D S}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 4)
Schematic Net:  gnd!
S       1   of NMOS4 {D S}
S       1   of NMOS4 B

Layout Net:  gnd!
L       1   of NMOS4 {D S}
L      *3   of NMOS4 B

=========================================================================[xort]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avC7
L ?avS43

=========================================================================[xort]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net2
S       1   of PMOS4 {D S}
S       2   of NMOS4 {D S}
S      *1   of NMOS4 G
S      *1   of NMOS4 B

Layout Net:  avC6
L       1   of PMOS4 {D S}
L       2   of NMOS4 {D S}

=========================================================================[xort]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?gnd!
S       1   of NMOS4 {D S}
S       1   of NMOS4 B
S
S ?B
S       1   of PMOS4 {D S}
S       2   of PMOS4 G
S       1   of NMOS4 G
S
S ?A
S       1   of PMOS4 {D S}
S       1   of PMOS4 G
S       1   of NMOS4 {D S}
S       1   of NMOS4 G
S
S ?net2
S       1   of PMOS4 {D S}
S       2   of NMOS4 {D S}
S       1   of NMOS4 G
S       1   of NMOS4 B
S
S ?out
S       2   of PMOS4 {D S}
S       2   of PMOS4 B
S       2   of NMOS4 {D S}
S       1   of NMOS4 B

=========================================================================[xort]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avS43
L       1   of NMOS4 G
L
L ?avC7
L       1   of PMOS4 {D S}
L       1   of NMOS4 {D S}
L
L ?avC6
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
L
L ?gnd!
L       1   of NMOS4 {D S}
L       3   of NMOS4 B
L
L ?out
L       3   of PMOS4 {D S}
L       2   of PMOS4 B
L       2   of NMOS4 {D S}

=========================================================================[xort]
====== Unmatched or Badly-Matched Schematic Net Details =======================
===============================================================================
S
S ?net2
S      NMOS4 I0/MN0 {D S}
S      PMOS4 I0/MP0 {D S}
S      NMOS4 ?MN0 G
S      NMOS4 ?MN1 B
S      NMOS4 ?MN1 {D S}
S
S ?A
S      NMOS4 ?MN0 {D S}
S      NMOS4 ?MN1 G
S      PMOS4 ?MP0 {D S}
S      PMOS4 MP1 G
S
S ?B
S      NMOS4 I0/MN0 G
S      PMOS4 I0/MP0 G
S      PMOS4 ?MP0 G
S      PMOS4 MP1 {D S}
S
S ?out
S      NMOS4 ?MN0 B
S      NMOS4 ?MN0 {D S}
S      NMOS4 ?MN1 {D S}
S      PMOS4 ?MP0 B
S      PMOS4 ?MP0 {D S}
S      PMOS4 MP1 B
S      PMOS4 MP1 {D S}
S
S ?gnd!
S      NMOS4 I0/MN0 B
S      NMOS4 I0/MN0 {D S}

=========================================================================[xort]
====== Unmatched or Badly-Matched Layout Net Details ==========================
===============================================================================
L
L ?avC6
L      PMOS4 I0/MP0 {D S}
L      NMOS4 ?avD1_2 {D S}
L      NMOS4 I0/MN0 {D S}
L
L ?avC7
L      PMOS4 ?avD5_3 {D S}
L      NMOS4 ?avD1_3 {D S}
L
L ?avS43
L      NMOS4 ?avD1_3 G
L
L ?gnd!
L      NMOS4 ?avD1_3 B
L      NMOS4 ?avD1_2 B
L      NMOS4 I0/MN0 B
L      NMOS4 I0/MN0 {D S}
L
L ?A
L      PMOS4 MP1 G
L      NMOS4 ?avD1_2 G
L
L ?B
L      PMOS4 ?avD5_3 G
L      PMOS4 I0/MP0 G
L      NMOS4 I0/MN0 G
L
L ?out
L      PMOS4 ?avD5_3 B
L      PMOS4 ?avD5_3 {D S}
L      PMOS4 MP1 B
L      PMOS4 MP1 {D S}
L      PMOS4 MP1 {D S}
L      NMOS4 ?avD1_3 {D S}
L      NMOS4 ?avD1_2 {D S}

=========================================================================[xort]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: MP1  PMOS4
Layout Instance:    avD5_2  PMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
D          out                         : out
S          B                           : out

=========================================================================[xort]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: MP0  PMOS4

S Pin        Net
S ---        ---
S D          A
S G          B
S S          out
S B          out

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: MN1  NMOS4

S Pin        Net
S ---        ---
S D          out
S G          A
S S          net2
S B          net2

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 3)
Schematic Instance: MN0  NMOS4

S Pin        Net
S ---        ---
S D          A
S G          net2
S S          out
S B          out

=========================================================================[xort]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    avD1_2  NMOS4

L Pin        Net
L ---        ---
L D          out
L G          A
L S          net2
L B          gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    avD1_3  NMOS4

L Pin        Net
L ---        ---
L D          ?avC7
L G          ?avS43
L S          out
L B          gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 3)
Layout Instance:    avD5_3  PMOS4

L Pin        Net
L ---        ---
L D          ?avC7
L G          B
L S          out
L B          out

=========================================================================[xort]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 4          4         Bad Initial Net Bindings
 1          1         Bad Matched Nets
 -          2         Unmatched Internal Nets
 1          1         Matched Instances with Bad Net Connections
 3          3         Unmatched Instances

