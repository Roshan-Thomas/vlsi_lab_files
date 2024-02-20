*******************************************************************************
****** NAND3 schematic lab2024  <vs>  NAND3 layout lab2024
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(PMOS4) MOS                                       3       3
(NMOS4) MOS                                       3       3
                                             ------  ------
Total                                             6       6

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(NMOS4) MOS                                       3       3           3       3
(PMOS4) MOS                                       3       3           3       3

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(NMOS4) MOS                                       3       3           0       0
(PMOS4) MOS                                       3       3           0       0
                                             ------  ------      ------  ------
Total                                             6       6           0       0

Match Statistics for Nets                         8       8           1       1

========================================================================[NAND3]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  gnd!
S       1   of NMOS4 {D S}
S       1   of NMOS4 B

Layout Net:  gnd!
L       1   of NMOS4 {D S}
L      *3   of NMOS4 B

========================================================================[NAND3]
====== Unmatched Internal Nets ================================================
===============================================================================

S ?net1

L ?avC7

========================================================================[NAND3]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net2
S       2   of NMOS4 {D S}
S      *1   of NMOS4 B

Layout Net:  avC8
L       2   of NMOS4 {D S}

========================================================================[NAND3]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'B' of instance avD1_2 probably should connect to net 
avC8 instead of net gnd!.
This makes a better match between layout net avC8 and schematic net net2.

In the layout, terminal 'B' of instance avD1_3 probably should connect to net 
avC7 instead of net gnd!.
This makes a better match between layout net avC7 and schematic net net1.


========================================================================[NAND3]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?gnd!
S       1   of NMOS4 {D S}
S       1   of NMOS4 B
S
S ?net2 ?net1
S (total 2) with:
S       2   of NMOS4 {D S}
S       1   of NMOS4 B

========================================================================[NAND3]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC8 ?avC7
L (total 2) with:
L       2   of NMOS4 {D S}
L
L ?gnd!
L       1   of NMOS4 {D S}
L       3   of NMOS4 B

========================================================================[NAND3]
====== Unmatched or Badly-Matched Schematic Net Details =======================
===============================================================================
S
S ?net2
S      NMOS4 MN1 B
S      NMOS4 MN1 {D S}
S      NMOS4 MN2 {D S}
S
S ?net1
S      NMOS4 MN0 B
S      NMOS4 MN0 {D S}
S      NMOS4 MN1 {D S}
S
S ?gnd!
S      NMOS4 MN2 B
S      NMOS4 MN2 {D S}

========================================================================[NAND3]
====== Unmatched or Badly-Matched Layout Net Details ==========================
===============================================================================
L
L ?avC8
L      NMOS4 MN1 {D S}
L      NMOS4 MN2 {D S}
L
L ?avC7
L      NMOS4 MN0 {D S}
L      NMOS4 MN1 {D S}
L
L ?gnd!
L      NMOS4 MN0 B
L      NMOS4 MN1 B
L      NMOS4 MN2 B
L      NMOS4 MN2 {D S}

========================================================================[NAND3]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: MN1  NMOS4
Layout Instance:    avD1_2  NMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
B          net2                        : gnd!

========================================================================[NAND3]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 1          1         Bad Initial Net Bindings
 1          1         Bad Matched Nets
 -          2         Suggested Terminal Rewire
 1          1         Unmatched Internal Nets
 1          1         Matched Instances with Bad Net Connections

