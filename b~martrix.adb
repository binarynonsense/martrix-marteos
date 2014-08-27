pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~martrix.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~martrix.adb");
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E112 : Short_Integer; pragma Import (Ada, E112, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "ada__io_exceptions_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "ada__numerics_E");
   E087 : Short_Integer; pragma Import (Ada, E087, "ada__tags_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__streams_E");
   E046 : Short_Integer; pragma Import (Ada, E046, "interfaces__c_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "interfaces__c__strings_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "system__finalization_root_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__finalization_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "system__os_interface_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "system__interrupt_management_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__storage_pools_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "system__finalization_masters_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "system__storage_pools__subpools_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "system__task_info_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "system__task_primitives_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "system__task_primitives__operations_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__calendar_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__calendar__delays_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "system__pool_global_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "system__file_control_block_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "system__file_io_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "system__random_seed_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__secondary_stack_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__real_time_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__text_io_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "blocks_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "intro_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "sound_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "subblocks_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "config_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "draw_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "logic_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E099 := E099 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         F1;
      end;
      E117 := E117 - 1;
      E127 := E127 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E106 := E106 - 1;
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__file_control_block__finalize_spec");
      begin
         E115 := E115 - 1;
         F3;
      end;
      E123 := E123 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__pool_global__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__storage_pools__subpools__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__finalization_masters__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      Finalize_Library_Objects := finalize_library'access;

      if E015 = 0 then
         System.Soft_Links'Elab_Spec;
      end if;
      if E025 = 0 then
         System.Exception_Table'Elab_Body;
      end if;
      E025 := E025 + 1;
      if E102 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E102 := E102 + 1;
      if E142 = 0 then
         Ada.Numerics'Elab_Spec;
      end if;
      E142 := E142 + 1;
      if E087 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E101 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E101 := E101 + 1;
      if E046 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      if E133 = 0 then
         Interfaces.C.Strings'Elab_Spec;
      end if;
      if E027 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E027 := E027 + 1;
      if E110 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E110 := E110 + 1;
      if E108 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E108 := E108 + 1;
      if E059 = 0 then
         System.Os_Interface'Elab_Spec;
      end if;
      E059 := E059 + 1;
      if E121 = 0 then
         System.Storage_Pools'Elab_Spec;
      end if;
      E121 := E121 + 1;
      if E117 = 0 then
         System.Finalization_Masters'Elab_Spec;
      end if;
      if E127 = 0 then
         System.Storage_Pools.Subpools'Elab_Spec;
      end if;
      if E075 = 0 then
         System.Task_Info'Elab_Spec;
      end if;
      E075 := E075 + 1;
      if E057 = 0 then
         System.Task_Primitives'Elab_Spec;
      end if;
      E057 := E057 + 1;
      if E068 = 0 then
         System.Interrupt_Management'Elab_Body;
      end if;
      E068 := E068 + 1;
      if E064 = 0 then
         System.Task_Primitives.Operations'Elab_Body;
      end if;
      E064 := E064 + 1;
      if E008 = 0 then
         Ada.Calendar'Elab_Spec;
      end if;
      if E008 = 0 then
         Ada.Calendar'Elab_Body;
      end if;
      E008 := E008 + 1;
      if E006 = 0 then
         Ada.Calendar.Delays'Elab_Body;
      end if;
      E006 := E006 + 1;
      if E123 = 0 then
         System.Pool_Global'Elab_Spec;
      end if;
      E123 := E123 + 1;
      if E115 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E115 := E115 + 1;
      if E150 = 0 then
         System.Random_Seed'Elab_Body;
      end if;
      E150 := E150 + 1;
      if E106 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E106 := E106 + 1;
      E127 := E127 + 1;
      if E117 = 0 then
         System.Finalization_Masters'Elab_Body;
      end if;
      E117 := E117 + 1;
      E133 := E133 + 1;
      E046 := E046 + 1;
      if E087 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E087 := E087 + 1;
      if E015 = 0 then
         System.Soft_Links'Elab_Body;
      end if;
      E015 := E015 + 1;
      if E112 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E112 := E112 + 1;
      if E019 = 0 then
         System.Secondary_Stack'Elab_Body;
      end if;
      E019 := E019 + 1;
      if E052 = 0 then
         Ada.Real_Time'Elab_Spec;
      end if;
      if E052 = 0 then
         Ada.Real_Time'Elab_Body;
      end if;
      E052 := E052 + 1;
      if E099 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E099 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E099 := E099 + 1;
      if E130 = 0 then
         blocks'elab_spec;
      end if;
      E130 := E130 + 1;
      E144 := E144 + 1;
      if E137 = 0 then
         subblocks'elab_spec;
      end if;
      E137 := E137 + 1;
      if E131 = 0 then
         Config'Elab_Spec;
      end if;
      E131 := E131 + 1;
      E139 := E139 + 1;
      E136 := E136 + 1;
      E141 := E141 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_martrix");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   ./blocks.o
   --   ./sound.o
   --   ./subblocks.o
   --   ./vga_marte.o
   --   ./config.o
   --   ./intro.o
   --   ./draw.o
   --   ./logic.o
   --   ./martrix.o
   --   -L./
   --   -L/home/alvaro/bin/marte_1.9_21Aug2014/lib/
   --   -L../../lib/
   --   -L/home/alvaro/bin/gnat_gpl_2014/lib/gcc/i686-pc-linux-gnu/4.7.4/rts-marteuc_x86/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -lmarte
   --   -lgnat
--  END Object file/option list   

end ada_main;
