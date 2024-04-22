*******************************************************************************
****** xorc schematic lab2024  <vs>  xorc layout lab2024
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(NMOS4) MOS                                       4       6*
(PMOS4) MOS                                       4       6*
(invParam schematic lab2024, _) Cell              2       0*
                                             ------  ------
Total                                            10      12

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(NMOS4) MOS                                       6       6           6       6
(PMOS4) MOS                                       6       6           6       6

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(NMOS4) MOS                                       6       6           1       1
(PMOS4) MOS                                       6       6           1       1
                                             ------  ------      ------  ------
Total                                            12      12           2       2

Match Statistics for Nets                        11      14           3       6

=========================================================================[xorc]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  vdd!
S       4   of PMOS4 {D S}
S       4   of PMOS4 B

Layout Net:  vdd!
L       4   of PMOS4 {D S}
L      *2   of PMOS4 B

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  gnd!
S       4   of NMOS4 {D S}
S       4   of NMOS4 B

Layout Net:  gnd!
L       4   of NMOS4 {D S}
L      *6   of NMOS4 B

=========================================================================[xorc]
====== Unmatched Internal Nets ================================================
===============================================================================

S ?net1
S ?net3
S ?net4

L ?avC6
L ?avC7
L ?avS65
L ?avC10
L ?avC12
L ?avC11

=========================================================================[xorc]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net2
S       2   of NMOS4 {D S}
S      *1   of NMOS4 B

Layout Net:  avC8
L       2   of NMOS4 {D S}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  net6
S       1   of NMOS4 {D S}
S      *1   of NMOS4 G
S       1   of PMOS4 {D S}
S      *1   of PMOS4 G

Layout Net:  avC9
L       1   of NMOS4 {D S}
L       1   of PMOS4 {D S}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 3)
Schematic Net:  net5
S      *1   of NMOS4 {D S}
S       1   of NMOS4 G
S      *1   of PMOS4 {D S}
S       1   of PMOS4 G

Layout Net:  avS63
L       1   of NMOS4 G
L       1   of PMOS4 G

=========================================================================[xorc]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'B' of instance avD1_5 probably should connect to net 
avC8 instead of net gnd!.
This makes a better match between layout net avC8 and schematic net net2.

In the layout, terminal 'G' of instance avD5_4 probably should connect to net 
avC9 instead of net avS65.
This makes a better match between layout net avC9 and schematic net net6.

In the layout, terminal 'G' of instance avD1_4 probably should connect to net 
avC9 instead of net avS65.
This makes a better match between layout net avC9 and schematic net net6.

In the layout, terminal 'B' of instance avD5_2 probably should connect to net 
vdd! instead of net avC12.
This makes a better match between layout net vdd! and schematic net vdd!.

In the layout, terminal 'B' of instance avD1_2 probably should connect to net 
avC7 instead of net gnd!.
This makes a better match between layout net avC7 and schematic net net1.

In the layout, terminal 'S' of instance avD5_4 probably should connect to net 
avC12 instead of net avC11.
This makes a better match between layout net avC12 and schematic net net3.

In the layout, terminal 'B' of instance avD5_5 probably should connect to net 
avC10 instead of net avC12.
This makes a better match between layout net avC10 and schematic net net4.


=========================================================================[xorc]
====== Open Internal Nets =====================================================
===============================================================================

These layout nets should connect together:
L        avC6
L        avS63

These layout nets should connect together:
L        avS65
L        avC9

=========================================================================[xorc]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?net2 ?net1
S (total 2) with:
S       2   of NMOS4 {D S}
S       1   of NMOS4 B
S
S ?gnd!
S       4   of NMOS4 {D S}
S       4   of NMOS4 B
S
S ?net3 ?net4
S (total 2) with:
S       2   of PMOS4 {D S}
S       1   of PMOS4 B
S
S ?vdd!
S       4   of PMOS4 {D S}
S       4   of PMOS4 B
S
S ?net6 ?net5
S (total 2) with:
S       1   of NMOS4 {D S}
S       1   of NMOS4 G
S       1   of PMOS4 {D S}
S       1   of PMOS4 G

=========================================================================[xorc]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avC7 ?avC8
L (total 2) with:
L       2   of NMOS4 {D S}
L
L ?avC10 ?avC11
L (total 2) with:
L       2   of PMOS4 {D S}
L
L ?avC12
L       4   of PMOS4 B
L
L ?avC6 ?avC9
L (total 2) with:
L       1   of NMOS4 {D S}
L       1   of PMOS4 {D S}
L
L ?gnd!
L       4   of NMOS4 {D S}
L       6   of NMOS4 B
L
L ?avS63 ?avS65
L (total 2) with:
L       1   of NMOS4 G
L       1   of PMOS4 G
L
L ?vdd!
L       4   of PMOS4 {D S}
L       2   of PMOS4 B

=========================================================================[xorc]
====== Unmatched or Badly-Matched Schematic Net Details =======================
===============================================================================
S
S ?net2
S      NMOS4 MN2 B
S      NMOS4 MN2 {D S}
S      NMOS4 MN3 {D S}
S
S ?net6
S      PMOS4 I1/MP0 {D S}
S      NMOS4 I1/MN0 {D S}
S      PMOS4 MP3 G
S      NMOS4 MN3 G
S
S ?net1
S      NMOS4 MN0 B
S      NMOS4 MN0 {D S}
S      NMOS4 MN1 {D S}
S
S ?net5
S      PMOS4 ?I0/MP0 {D S}
S      NMOS4 ?I0/MN0 {D S}
S      PMOS4 MP0 G
S      NMOS4 MN0 G
S
S ?net3
S      PMOS4 MP1 {D S}
S      PMOS4 MP3 B
S      PMOS4 MP3 {D S}
S
S ?net4
S      PMOS4 MP0 {D S}
S      PMOS4 MP2 B
S      PMOS4 MP2 {D S}
S
S ?vdd!
S      PMOS4 I1/MP0 B
S      PMOS4 I1/MP0 {D S}
S      PMOS4 ?I0/MP0 B
S      PMOS4 ?I0/MP0 {D S}
S      PMOS4 MP0 B
S      PMOS4 MP0 {D S}
S      PMOS4 MP1 B
S      PMOS4 MP1 {D S}
S
S ?gnd!
S      NMOS4 I1/MN0 B
S      NMOS4 I1/MN0 {D S}
S      NMOS4 ?I0/MN0 B
S      NMOS4 ?I0/MN0 {D S}
S      NMOS4 MN1 B
S      NMOS4 MN1 {D S}
S      NMOS4 MN3 B
S      NMOS4 MN3 {D S}

=========================================================================[xorc]
====== Unmatched or Badly-Matched Layout Net Details ==========================
===============================================================================
L
L ?avC6
L      PMOS4 MP1 {D S}
L      NMOS4 MN1 {D S}
L
L ?avC7
L      NMOS4 ?avD1_3 {D S}
L      NMOS4 MN0 {D S}
L
L ?avS63
L      PMOS4 MP0 G
L      NMOS4 MN0 G
L
L ?avC8
L      NMOS4 MN2 {D S}
L      NMOS4 MN3 {D S}
L
L ?avS65
L      PMOS4 MP3 G
L      NMOS4 MN3 G
L
L ?avC9
L      PMOS4 I1/MP0 {D S}
L      NMOS4 I1/MN0 {D S}
L
L ?avC10
L      PMOS4 MP2 {D S}
L      PMOS4 MP0 {D S}
L
L ?avC12
L      PMOS4 MP2 B
L      PMOS4 MP3 B
L      PMOS4 ?avD5_3 B
L      PMOS4 MP0 B
L
L ?avC11
L      PMOS4 MP3 {D S}
L      PMOS4 ?avD5_3 {D S}
L
L ?vdd!
L      PMOS4 I1/MP0 B
L      PMOS4 I1/MP0 {D S}
L      PMOS4 ?avD5_3 {D S}
L      PMOS4 MP0 {D S}
L      PMOS4 MP1 B
L      PMOS4 MP1 {D S}
L
L ?gnd!
L      NMOS4 I1/MN0 B
L      NMOS4 I1/MN0 {D S}
L      NMOS4 MN2 B
L      NMOS4 MN3 B
L      NMOS4 MN3 {D S}
L      NMOS4 ?avD1_3 B
L      NMOS4 ?avD1_3 {D S}
L      NMOS4 MN0 B
L      NMOS4 MN1 B
L      NMOS4 MN1 {D S}

=========================================================================[xorc]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: MN3  NMOS4
Layout Instance:    avD1_4  NMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
G          net6                        : ?avS65

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: MN2  NMOS4
Layout Instance:    avD1_5  NMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
B          net2                        : gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 3)
Schematic Instance: MP3  PMOS4
Layout Instance:    avD5_4  PMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
G          net6                        : ?avS65

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 4)
Schematic Instance: MP0  PMOS4
Layout Instance:    avD5_2  PMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
B          vdd!                        : ?avC12

=========================================================================[xorc]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: I0/MN0  NMOS4

S Pin        Net
S ---        ---
S D          net5
S G          A
S S          gnd!
S B          gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: I0/MP0  PMOS4

S Pin        Net
S ---        ---
S D          net5
S G          A
S S          vdd!
S B          vdd!

=========================================================================[xorc]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    avD1_3  NMOS4

L Pin        Net
L ---        ---
L D          gnd!
L G          A
L S          ?avC7
L B          gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 2)
Layout Instance:    avD5_3  PMOS4

L Pin        Net
L ---        ---
L D          ?avC11
L G          A
L S          vdd!
L B          ?avC12

=========================================================================[xorc]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 2          2         Bad Initial Net Bindings
 3          3         Bad Matched Nets
 -          7         Suggested Terminal Rewire
 3          6         Unmatched Internal Nets
 -          2         Open Internal Nets
 4          4         Matched Instances with Bad Net Connections
 2          2         Unmatched Instances

