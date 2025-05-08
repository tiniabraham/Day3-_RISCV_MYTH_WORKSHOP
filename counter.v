\m5_TLV_version 1d: tl-x.org
\m5
   
   // ============================================
   // Welcome, new visitors! Try the "Learn" menu.
   // ============================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   $num[31:0] = $reset ? 1 : (>>1$num + >>2$num);
 // $val1[31:0] = $rand1[3:0];
 // $val1[31:0] = $rand2[3:0];
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;

\SV
   endmodule
