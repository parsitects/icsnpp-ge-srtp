## Copyright (c) 2024 Battelle Energy Alliance, LLC. 

module GE_SRTP;


hook set_session_general_log(c: connection) {
    if ( ! c?$ge_srtp_general_log )
        c$ge_srtp_general_log = general_log(
            $ts=network_time(),
            $uid=c$uid,
            $id=c$id,
            $proto="ge_srtp");
}

event GE_SRTP::SRTP_MessageEvt (c: connection, is_orig: bool, message: GE_SRTP::Message) {
    hook set_session_general_log(c);

    local info_general_log = c$ge_srtp_general_log;

    info_general_log$srtp_type                    = GE_SRTP_ENUMS::SRTP_TYPE[message$srtp_type];

    if (message$srtp_type == GE_SRTP_ENUMS::SrtpType_REQUEST) {             

        # Request
        info_general_log$sequence_number_1        = message$request$sequence_number_1;
        info_general_log$text_length              = message$request$text_length;
        info_general_log$time_seconds             = message$request$time_seconds;
        info_general_log$time_minutes             = message$request$time_minutes;
        info_general_log$time_hours               = message$request$time_hours;
        info_general_log$sequence_number_2        = message$request$sequence_number_2;
        info_general_log$message_type             = GE_SRTP_ENUMS::MESSAGE_TYPE[message$request$message_type];
        info_general_log$mailbox_source           = message$request$mailbox_source;
        info_general_log$mailbox_destination      = message$request$mailbox_destination;
        info_general_log$packet_number            = message$request$packet_number;
        info_general_log$total_packet_number      = message$request$total_packet_number;

        info_general_log$service_request_code     = GE_SRTP_ENUMS::SERVICE_REQUEST_CODES[message$request$service_request_code];
        info_general_log$segment_selector         = GE_SRTP_ENUMS::SEGMENT_SELECTORS[message$request$segment_selector];
        info_general_log$memory_offset            = message$request$memory_offset;
        info_general_log$data_length              = message$request$data_length;

    } else if (message$srtp_type == GE_SRTP_ENUMS::SrtpType_REPLY) {    
    
        # Reply 
        info_general_log$sequence_number_1        = message$reply$sequence_number_1;
        info_general_log$text_length              = message$reply$text_length;
        info_general_log$time_seconds             = message$reply$time_seconds;
        info_general_log$time_minutes             = message$reply$time_minutes;
        info_general_log$time_hours               = message$reply$time_hours;
        info_general_log$message_type             = GE_SRTP_ENUMS::MESSAGE_TYPE[message$reply$message_type];
        info_general_log$mailbox_source           = message$reply$mailbox_source;
        info_general_log$mailbox_destination      = message$reply$mailbox_destination;
        info_general_log$packet_number            = message$reply$packet_number;
        info_general_log$total_packet_number      = message$reply$total_packet_number;

        info_general_log$status_code              = GE_SRTP_ENUMS::ERROR_STATUS[message$reply$status_code];
        info_general_log$minor_status_code        = GE_SRTP_ENUMS::MINOR_ERROR_STATUS[message$reply$minor_status_code];
        info_general_log$data_requested           = message$reply$data_requested;
        info_general_log$control_program_number   = message$reply$control_program_number;
        info_general_log$current_privilege_level  = message$reply$current_privilege_level;
        info_general_log$last_sweep_time          = message$reply$last_sweep_time;

        info_general_log$oversweep_flag            = GE_SRTP_ENUMS::OVERSWEEP_FLAG[message$reply$plc_status$oversweep_flag];
        info_general_log$constant_sweep_mode       = GE_SRTP_ENUMS::CONSTANT_SWEEP_MODE[message$reply$plc_status$constant_sweep_mode];
        info_general_log$plc_fault_entry_last_read = GE_SRTP_ENUMS::PLC_FAULT_ENTRY_SINCE_LAST_READ[message$reply$plc_status$plc_fault_entry_last_read];
        info_general_log$io_fault_entry_last_read  = GE_SRTP_ENUMS::IO_FAULT_ENTRY_SINCE_LAST_READ[message$reply$plc_status$io_fault_entry_last_read];
        info_general_log$plc_fault_entry_present   = GE_SRTP_ENUMS::PLC_FAULT_ENTRY_PRESENT[message$reply$plc_status$plc_fault_entry_present];
        info_general_log$io_fault_entry_present    = GE_SRTP_ENUMS::IO_FAULT_ENTRY_PRESENT[message$reply$plc_status$io_fault_entry_present];
        info_general_log$programmer_attachment     = GE_SRTP_ENUMS::PROGRAMMER_ATTACHMENT_FLAG[message$reply$plc_status$programmer_attachement];
        info_general_log$front_panel_enable_switch = GE_SRTP_ENUMS::FRONT_PANEL_ENABLE_SWITCH_SETTING[message$reply$plc_status$front_panel_enable_switch];
        info_general_log$front_panel_run_switch    = GE_SRTP_ENUMS::FRONT_PANEL_RUN_SWITCH_SETTING[message$reply$plc_status$front_panel_run_switch];
        info_general_log$oem_protected             = GE_SRTP_ENUMS::OEM_PROTECTED[message$reply$plc_status$oem_protected];
        info_general_log$plc_state                 = GE_SRTP_ENUMS::PLC_STATE[message$reply$plc_status$plc_state];
    }

    emit_ge_srtp_general_log(c);
}


