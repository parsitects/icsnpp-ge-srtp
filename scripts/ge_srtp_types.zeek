##! Copyright (c) 2024 Battelle Energy Alliance, LLC.

module GE_SRTP;

export {
    type general_log: record {
        ts      : time &log;
        uid     : string &log;
        id      : conn_id &log;
        proto   : string &log;

        srtp_type                 : string &log &optional;
        sequence_number_1         : count  &log &optional;
        text_length               : count  &log &optional;
        time_seconds              : count  &log &optional;
        time_minutes              : count  &log &optional;
        time_hours                : count  &log &optional;
        sequence_number_2         : count  &log &optional;
        message_type              : string &log &optional;
        mailbox_source            : string &log &optional;
        mailbox_destination       : string &log &optional;
        packet_number             : count  &log &optional;
        total_packet_number       : count  &log &optional;
        service_request_code      : string &log &optional;
        segment_selector          : string &log &optional;
        memory_offset             : count  &log &optional;
        data_length               : count  &log &optional;
        status_code               : string &log &optional;
        minor_status_code         : string &log &optional;
        data_requested            : string &log &optional;
        control_program_number    : count  &log &optional;
        current_privilege_level   : count  &log &optional;
        last_sweep_time           : count  &log &optional;
        oversweep_flag            : string &log &optional;
        constant_sweep_mode       : string &log &optional;
        plc_fault_entry_last_read : string &log &optional;
        io_fault_entry_last_read  : string &log &optional;
        plc_fault_entry_present   : string &log &optional;
        io_fault_entry_present    : string &log &optional;
        programmer_attachment     : string &log &optional;
        front_panel_enable_switch : string &log &optional;
        front_panel_run_switch    : string &log &optional;
        oem_protected             : string &log &optional;
        plc_state                 : string &log &optional;
    };

}
