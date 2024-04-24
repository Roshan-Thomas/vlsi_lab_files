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
(NMOS4) MOS                                       6       6           0       0
(PMOS4) MOS                                       6       6           0       0
                                             ------  ------      ------  ------
Total                                            12      12           0       0

Match Statistics for Nets                        11      14           0       3

=========================================================================[xorc]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  vdd!
S       4   of PMOS4 {D S}
S       6   of PMOS4 B

Layout Net:  vdd!
L       4   of PMOS4 {D S}
L      *2   of PMOS4 B

=========================================================================[xorc]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avC6
L ?avS59
L ?avC12

=========================================================================[xorc]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net6
S       1   of NMOS4 {D S}
S      *1   of NMOS4 G
S       1   of PMOS4 {D S}
S      *1   of PMOS4 G

Layout Net:  avC9
L       1   of NMOS4 {D S}
L       1   of PMOS4 {D S}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  net5
S      *1   of NMOS4 {D S}
S       1   of NMOS4 G
S      *1   of PMOS4 {D S}
S       1   of PMOS4 G

Layout Net:  avS57
L       1   of NMOS4 G
L       1   of PMOS4 G

=========================================================================[xorc]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'G' of instance avD5_4 probably should connect to net 
avC9 instead of net avS59.
This makes a better match between layout net avC9 and schematic net net6.

In the layout, terminal 'G' of instance avD1_4 probably should connect to net 
avC9 instead of net avS59.
This makes a better match between layout net avC9 and schematic net net6.

In the layout, terminal 'D' of instance avD1_1 probably should connect to net 
avS57 instead of net avC6.
This makes a better match between layout net avS57 and schematic net net5.

In the layout, terminal 'B' of instance avD5_2 probably should connect to net 
vdd! instead of net avC12.
This makes a better match between layout net vdd! and schematic net vdd!.

In the layout, terminal 'B' of instance avD5_3 probably should connect to net 
vdd! instead of net avC12.
This makes a better match between layout net vdd! and schematic net vdd!.

In the layout, terminal 'B' of instance avD5_5 probably should connect to net 
vdd! instead of net avC12.
This makes a better match between layout net vdd! and schematic net vdd!.

In the layout, terminal 'B' of instance avD5_4 probably should connect to net 
vdd! instead of net avC12.
This makes a better match between layout net vdd! and schematic net vdd!.


=========================================================================[xorc]
====== Open Internal Nets =====================================================
===============================================================================

These layout nets should connect together:
L        avC6
L        avS57

These layout nets should connect together:
L        avS59
L        avC9

=========================================================================[xorc]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?vdd!
S       4   of PMOS4 {D S}
S       6   of PMOS4 B
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
L ?avC12
L       4   of PMOS4 B
L
L ?avC6 ?avC9
L (total 2) with:
L       1   of NMOS4 {D S}
L       1   of PMOS4 {D S}
L
L ?avS57 ?avS59
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
S ?net6
S      PMOS4 I1/MP0 {D S}
S      NMOS4 I1/MN0 {D S}
S      PMOS4 MP3 G
S      NMOS4 MN3 G
S
S ?net5
S      PMOS4 I0/MP0 {D S}
S      NMOS4 I0/MN0 {D S}
S      PMOS4 MP0 G
S      NMOS4 MN0 G
S
S ?vdd!
S      PMOS4 I1/MP0 B
S      PMOS4 I1/MP0 {D S}
S      PMOS4 I0/MP0 B
S      PMOS4 I0/MP0 {D S}
S      PMOS4 MP0 B
S      PMOS4 MP0 {D S}
S      PMOS4 MP1 B
S      PMOS4 MP1 {D S}
S      PMOS4 MP2 B
S      PMOS4 MP3 B

=========================================================================[xorc]
====== Unmatched or Badly-Matched Layout Net Details ==========================
===============================================================================
L
L ?avC6
L      PMOS4 I0/MP0 {D S}
L      NMOS4 I0/MN0 {D S}
L
L ?avS57
L      PMOS4 MP0 G
L      NMOS4 MN0 G
L
L ?avS59
L      PMOS4 MP3 G
L      NMOS4 MN3 G
L
L ?avC9
L      PMOS4 I1/MP0 {D S}
L      NMOS4 I1/MN0 {D S}
L
L ?avC12
L      PMOS4 MP2 B
L      PMOS4 MP3 B
L      PMOS4 MP1 B
L      PMOS4 MP0 B
L
L ?vdd!
L      PMOS4 I1/MP0 B
L      PMOS4 I1/MP0 {D S}
L      PMOS4 MP1 {D S}
L      PMOS4 MP0 {D S}
L      PMOS4 I0/MP0 B
L      PMOS4 I0/MP0 {D S}

=========================================================================[xorc]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: MN3  NMOS4
Layout Instance:    avD1_4  NMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
G          net6                        : ?avS59

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: MP3  PMOS4
Layout Instance:    avD5_4  PMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
G          net6                        : ?avS59
B          vdd!                        : ?avC12

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 3)
Schematic Instance: MP2  PMOS4
Layout Instance:    avD5_5  PMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
B          vdd!                        : ?avC12

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 4)
Schematic Instance: MP1  PMOS4
Layout Instance:    avD5_3  PMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
B          vdd!                        : ?avC12

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 5)
Schematic Instance: MP0  PMOS4
Layout Instance:    avD5_2  PMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
B          vdd!                        : ?avC12

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 6)
Schematic Instance: I0/MN0  NMOS4
Layout Instance:    avD1_1  NMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net5                        : ?avC6
S          gnd!                        : gnd!

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 7)
Schematic Instance: I0/MP0  PMOS4
Layout Instance:    avD5_1  PMOS4

Pin        SchNet                      : LayNet
---        ------                      : ------
D          net5                        : ?avC6
S          vdd!                        : vdd!

=========================================================================[xorc]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 1          1         Bad Initial Net Bindings
 2          2         Bad Matched Nets
 -          7         Suggested Terminal Rewire
 -          3         Unmatched Internal Nets
 -          2         Open Internal Nets
 7          7         Matched Instances with Bad Net Connections

