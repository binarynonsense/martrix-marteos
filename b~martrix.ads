pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2014 (20140331)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_martrix" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#0f89260a#;
   pragma Export (C, u00001, "martrixB");
   u00002 : constant Version_32 := 16#fbff4c67#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#81ea5798#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#7bf4f215#;
   pragma Export (C, u00005, "ada__calendar__delaysB");
   u00006 : constant Version_32 := 16#474dd4b1#;
   pragma Export (C, u00006, "ada__calendar__delaysS");
   u00007 : constant Version_32 := 16#65712768#;
   pragma Export (C, u00007, "ada__calendarB");
   u00008 : constant Version_32 := 16#e791e294#;
   pragma Export (C, u00008, "ada__calendarS");
   u00009 : constant Version_32 := 16#108bcef8#;
   pragma Export (C, u00009, "ada__exceptionsB");
   u00010 : constant Version_32 := 16#b7e3d12a#;
   pragma Export (C, u00010, "ada__exceptionsS");
   u00011 : constant Version_32 := 16#032105bb#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerB");
   u00012 : constant Version_32 := 16#2b293877#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerS");
   u00013 : constant Version_32 := 16#820bee89#;
   pragma Export (C, u00013, "systemS");
   u00014 : constant Version_32 := 16#daf76b33#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#c8d48bbb#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#c8ed38da#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#84d1763b#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#c96bf39e#;
   pragma Export (C, u00018, "system__secondary_stackB");
   u00019 : constant Version_32 := 16#296a21e0#;
   pragma Export (C, u00019, "system__secondary_stackS");
   u00020 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00020, "system__storage_elementsB");
   u00021 : constant Version_32 := 16#afc8a48d#;
   pragma Export (C, u00021, "system__storage_elementsS");
   u00022 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#0cb48561#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#393398c1#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#2c12889c#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#ea68837f#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#b895431d#;
   pragma Export (C, u00028, "system__exceptions_debugB");
   u00029 : constant Version_32 := 16#31e9f737#;
   pragma Export (C, u00029, "system__exceptions_debugS");
   u00030 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00030, "system__img_intB");
   u00031 : constant Version_32 := 16#80d00e4b#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#ff5c7695#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#aa0f71d4#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00034, "system__wch_conB");
   u00035 : constant Version_32 := 16#9976cc5b#;
   pragma Export (C, u00035, "system__wch_conS");
   u00036 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00036, "system__wch_stwB");
   u00037 : constant Version_32 := 16#b467e05a#;
   pragma Export (C, u00037, "system__wch_stwS");
   u00038 : constant Version_32 := 16#9b29844d#;
   pragma Export (C, u00038, "system__wch_cnvB");
   u00039 : constant Version_32 := 16#96c176a8#;
   pragma Export (C, u00039, "system__wch_cnvS");
   u00040 : constant Version_32 := 16#69adb1b9#;
   pragma Export (C, u00040, "interfacesS");
   u00041 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00041, "system__wch_jisB");
   u00042 : constant Version_32 := 16#16b16f89#;
   pragma Export (C, u00042, "system__wch_jisS");
   u00043 : constant Version_32 := 16#8cb17bcd#;
   pragma Export (C, u00043, "system__traceback_entriesB");
   u00044 : constant Version_32 := 16#371a8e1b#;
   pragma Export (C, u00044, "system__traceback_entriesS");
   u00045 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00045, "interfaces__cB");
   u00046 : constant Version_32 := 16#3b563890#;
   pragma Export (C, u00046, "interfaces__cS");
   u00047 : constant Version_32 := 16#22d03640#;
   pragma Export (C, u00047, "system__os_primitivesB");
   u00048 : constant Version_32 := 16#32da62a0#;
   pragma Export (C, u00048, "system__os_primitivesS");
   u00049 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00049, "system__tracesB");
   u00050 : constant Version_32 := 16#70168623#;
   pragma Export (C, u00050, "system__tracesS");
   u00051 : constant Version_32 := 16#95dd9521#;
   pragma Export (C, u00051, "ada__real_timeB");
   u00052 : constant Version_32 := 16#42a49de8#;
   pragma Export (C, u00052, "ada__real_timeS");
   u00053 : constant Version_32 := 16#1607bce4#;
   pragma Export (C, u00053, "system__arith_64B");
   u00054 : constant Version_32 := 16#abebfac2#;
   pragma Export (C, u00054, "system__arith_64S");
   u00055 : constant Version_32 := 16#ca392521#;
   pragma Export (C, u00055, "system__taskingB");
   u00056 : constant Version_32 := 16#f5c19b9a#;
   pragma Export (C, u00056, "system__taskingS");
   u00057 : constant Version_32 := 16#33b3ce66#;
   pragma Export (C, u00057, "system__task_primitivesS");
   u00058 : constant Version_32 := 16#941b8271#;
   pragma Export (C, u00058, "system__os_interfaceB");
   u00059 : constant Version_32 := 16#537105aa#;
   pragma Export (C, u00059, "system__os_interfaceS");
   u00060 : constant Version_32 := 16#3cf531dc#;
   pragma Export (C, u00060, "system__linuxS");
   u00061 : constant Version_32 := 16#b02a62be#;
   pragma Export (C, u00061, "system__os_constantsS");
   u00062 : constant Version_32 := 16#d30d7c26#;
   pragma Export (C, u00062, "system__unsigned_typesS");
   u00063 : constant Version_32 := 16#0d37206f#;
   pragma Export (C, u00063, "system__task_primitives__operationsB");
   u00064 : constant Version_32 := 16#cf8dfb31#;
   pragma Export (C, u00064, "system__task_primitives__operationsS");
   u00065 : constant Version_32 := 16#ea8d9160#;
   pragma Export (C, u00065, "system__bit_opsB");
   u00066 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00066, "system__bit_opsS");
   u00067 : constant Version_32 := 16#903909a4#;
   pragma Export (C, u00067, "system__interrupt_managementB");
   u00068 : constant Version_32 := 16#35ded653#;
   pragma Export (C, u00068, "system__interrupt_managementS");
   u00069 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00069, "system__multiprocessorsB");
   u00070 : constant Version_32 := 16#baa771fa#;
   pragma Export (C, u00070, "system__multiprocessorsS");
   u00071 : constant Version_32 := 16#3c04b2bf#;
   pragma Export (C, u00071, "system__stack_checking__operationsB");
   u00072 : constant Version_32 := 16#64c2cb2b#;
   pragma Export (C, u00072, "system__stack_checking__operationsS");
   u00073 : constant Version_32 := 16#a8d053ac#;
   pragma Export (C, u00073, "system__crtlS");
   u00074 : constant Version_32 := 16#375a3ef7#;
   pragma Export (C, u00074, "system__task_infoB");
   u00075 : constant Version_32 := 16#0d7a5b9c#;
   pragma Export (C, u00075, "system__task_infoS");
   u00076 : constant Version_32 := 16#9eee2fc2#;
   pragma Export (C, u00076, "system__tasking__debugB");
   u00077 : constant Version_32 := 16#bb93797c#;
   pragma Export (C, u00077, "system__tasking__debugS");
   u00078 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00078, "system__address_imageB");
   u00079 : constant Version_32 := 16#23e773b3#;
   pragma Export (C, u00079, "system__address_imageS");
   u00080 : constant Version_32 := 16#d0432c8d#;
   pragma Export (C, u00080, "system__img_enum_newB");
   u00081 : constant Version_32 := 16#e347e849#;
   pragma Export (C, u00081, "system__img_enum_newS");
   u00082 : constant Version_32 := 16#4bc4ed76#;
   pragma Export (C, u00082, "system__stack_usageB");
   u00083 : constant Version_32 := 16#09222097#;
   pragma Export (C, u00083, "system__stack_usageS");
   u00084 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00084, "system__ioB");
   u00085 : constant Version_32 := 16#1c4919c6#;
   pragma Export (C, u00085, "system__ioS");
   u00086 : constant Version_32 := 16#034d7998#;
   pragma Export (C, u00086, "ada__tagsB");
   u00087 : constant Version_32 := 16#ce72c228#;
   pragma Export (C, u00087, "ada__tagsS");
   u00088 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00088, "system__htableB");
   u00089 : constant Version_32 := 16#06c95d63#;
   pragma Export (C, u00089, "system__htableS");
   u00090 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00090, "system__string_hashB");
   u00091 : constant Version_32 := 16#a497361d#;
   pragma Export (C, u00091, "system__string_hashS");
   u00092 : constant Version_32 := 16#4266b2a8#;
   pragma Export (C, u00092, "system__val_unsB");
   u00093 : constant Version_32 := 16#c3a5911d#;
   pragma Export (C, u00093, "system__val_unsS");
   u00094 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00094, "system__val_utilB");
   u00095 : constant Version_32 := 16#2eab5877#;
   pragma Export (C, u00095, "system__val_utilS");
   u00096 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00096, "system__case_utilB");
   u00097 : constant Version_32 := 16#a602875e#;
   pragma Export (C, u00097, "system__case_utilS");
   u00098 : constant Version_32 := 16#d3ebeffa#;
   pragma Export (C, u00098, "ada__text_ioB");
   u00099 : constant Version_32 := 16#675daa57#;
   pragma Export (C, u00099, "ada__text_ioS");
   u00100 : constant Version_32 := 16#1b5643e2#;
   pragma Export (C, u00100, "ada__streamsB");
   u00101 : constant Version_32 := 16#2564c958#;
   pragma Export (C, u00101, "ada__streamsS");
   u00102 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00102, "ada__io_exceptionsS");
   u00103 : constant Version_32 := 16#9f23726e#;
   pragma Export (C, u00103, "interfaces__c_streamsB");
   u00104 : constant Version_32 := 16#bb1012c3#;
   pragma Export (C, u00104, "interfaces__c_streamsS");
   u00105 : constant Version_32 := 16#967994fc#;
   pragma Export (C, u00105, "system__file_ioB");
   u00106 : constant Version_32 := 16#3efb028f#;
   pragma Export (C, u00106, "system__file_ioS");
   u00107 : constant Version_32 := 16#b7ab275c#;
   pragma Export (C, u00107, "ada__finalizationB");
   u00108 : constant Version_32 := 16#19f764ca#;
   pragma Export (C, u00108, "ada__finalizationS");
   u00109 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00109, "system__finalization_rootB");
   u00110 : constant Version_32 := 16#cdf99d19#;
   pragma Export (C, u00110, "system__finalization_rootS");
   u00111 : constant Version_32 := 16#7f98a7e4#;
   pragma Export (C, u00111, "system__os_libB");
   u00112 : constant Version_32 := 16#94c13856#;
   pragma Export (C, u00112, "system__os_libS");
   u00113 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00113, "system__stringsB");
   u00114 : constant Version_32 := 16#fcb4ffef#;
   pragma Export (C, u00114, "system__stringsS");
   u00115 : constant Version_32 := 16#4dac4f57#;
   pragma Export (C, u00115, "system__file_control_blockS");
   u00116 : constant Version_32 := 16#a4371844#;
   pragma Export (C, u00116, "system__finalization_mastersB");
   u00117 : constant Version_32 := 16#f61dc7c9#;
   pragma Export (C, u00117, "system__finalization_mastersS");
   u00118 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00118, "system__img_boolB");
   u00119 : constant Version_32 := 16#77d29f62#;
   pragma Export (C, u00119, "system__img_boolS");
   u00120 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00120, "system__storage_poolsB");
   u00121 : constant Version_32 := 16#7750690d#;
   pragma Export (C, u00121, "system__storage_poolsS");
   u00122 : constant Version_32 := 16#e34550ca#;
   pragma Export (C, u00122, "system__pool_globalB");
   u00123 : constant Version_32 := 16#c88d2d16#;
   pragma Export (C, u00123, "system__pool_globalS");
   u00124 : constant Version_32 := 16#d6f619bb#;
   pragma Export (C, u00124, "system__memoryB");
   u00125 : constant Version_32 := 16#db7688bd#;
   pragma Export (C, u00125, "system__memoryS");
   u00126 : constant Version_32 := 16#7b002481#;
   pragma Export (C, u00126, "system__storage_pools__subpoolsB");
   u00127 : constant Version_32 := 16#e3b008dc#;
   pragma Export (C, u00127, "system__storage_pools__subpoolsS");
   u00128 : constant Version_32 := 16#63f11652#;
   pragma Export (C, u00128, "system__storage_pools__subpools__finalizationB");
   u00129 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00129, "system__storage_pools__subpools__finalizationS");
   u00130 : constant Version_32 := 16#2e62e2fb#;
   pragma Export (C, u00130, "blocksS");
   u00131 : constant Version_32 := 16#ae153182#;
   pragma Export (C, u00131, "configS");
   u00132 : constant Version_32 := 16#5ab8448f#;
   pragma Export (C, u00132, "interfaces__c__stringsB");
   u00133 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00133, "interfaces__c__stringsS");
   u00134 : constant Version_32 := 16#e6c16a02#;
   pragma Export (C, u00134, "vga_marteS");
   u00135 : constant Version_32 := 16#46b2744a#;
   pragma Export (C, u00135, "drawB");
   u00136 : constant Version_32 := 16#767e04e2#;
   pragma Export (C, u00136, "drawS");
   u00137 : constant Version_32 := 16#dfe10631#;
   pragma Export (C, u00137, "subblocksS");
   u00138 : constant Version_32 := 16#5cff459f#;
   pragma Export (C, u00138, "introB");
   u00139 : constant Version_32 := 16#7a40fc62#;
   pragma Export (C, u00139, "introS");
   u00140 : constant Version_32 := 16#7adc60a5#;
   pragma Export (C, u00140, "logicB");
   u00141 : constant Version_32 := 16#f67476a9#;
   pragma Export (C, u00141, "logicS");
   u00142 : constant Version_32 := 16#84ad4a42#;
   pragma Export (C, u00142, "ada__numericsS");
   u00143 : constant Version_32 := 16#a797f964#;
   pragma Export (C, u00143, "soundB");
   u00144 : constant Version_32 := 16#a483cd9b#;
   pragma Export (C, u00144, "soundS");
   u00145 : constant Version_32 := 16#fb675641#;
   pragma Export (C, u00145, "system__random_numbersB");
   u00146 : constant Version_32 := 16#b515603a#;
   pragma Export (C, u00146, "system__random_numbersS");
   u00147 : constant Version_32 := 16#22ab03a2#;
   pragma Export (C, u00147, "system__img_unsB");
   u00148 : constant Version_32 := 16#4cf940d1#;
   pragma Export (C, u00148, "system__img_unsS");
   u00149 : constant Version_32 := 16#7d397bc7#;
   pragma Export (C, u00149, "system__random_seedB");
   u00150 : constant Version_32 := 16#ea032403#;
   pragma Export (C, u00150, "system__random_seedS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.arith_64%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.linux%s
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_checking.operations%s
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.arith_64%b
   --  system.soft_links%s
   --  system.stack_checking.operations%b
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.strings%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.os_constants%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.interrupt_management%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.interrupt_management%b
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.task_primitives.operations%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.random_numbers%s
   --  system.random_seed%s
   --  system.random_seed%b
   --  system.secondary_stack%s
   --  system.file_io%b
   --  system.tasking.debug%b
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.random_numbers%b
   --  system.address_image%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  blocks%s
   --  intro%s
   --  sound%s
   --  sound%b
   --  subblocks%s
   --  vga_marte%s
   --  config%s
   --  intro%b
   --  draw%s
   --  draw%b
   --  logic%s
   --  logic%b
   --  martrix%b
   --  END ELABORATION ORDER


end ada_main;
