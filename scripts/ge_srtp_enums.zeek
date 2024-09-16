##! Copyright (c) 2024 Battelle Energy Alliance, LLC.

module GE_SRTP_ENUMS;

export{

    #
    # Leveraging the SRTP Protocol for Over the Network Memory Acquistion of a GE Fanuc Series 90-30.pdf
    #    Table 1 - Request message structure
    #    Table 4 - ACK reply message structure
    #
    const SRTP_TYPE = {
        [GE_SRTP_ENUMS::SrtpType_REQUEST] = "Request",
        [GE_SRTP_ENUMS::SrtpType_REPLY]   = "Reply"
    } &default = "Unknown";

    #
    # Leveraging the SRTP Protocol for Over the Network Memory Acquistion of a GE Fanuc Series 90-30.pdf
    #    Table 2 - Type of service request codes
    #
    const SERVICE_REQUEST_CODES = {
        [GE_SRTP_ENUMS::ServiceRequestCodes_PLC_SHORT_STATUS_REQUEST]                  = "PLC short status request",
        [GE_SRTP_ENUMS::ServiceRequestCodes_RETURN_CONTROL_PROGRAM_NAMES]              = "Return control program names",
        [GE_SRTP_ENUMS::ServiceRequestCodes_READ_SYSTEM_MEMORY]                        = "Read system memory",
        [GE_SRTP_ENUMS::ServiceRequestCodes_READ_TASK_MEMORY]                          = "Read task memory",
        [GE_SRTP_ENUMS::ServiceRequestCodes_READ_PROGRAM_MEMORY]                       = "Read program memory",
        [GE_SRTP_ENUMS::ServiceRequestCodes_WRITE_SYSTEM_MEMORY]                       = "Write system memory",
        [GE_SRTP_ENUMS::ServiceRequestCodes_WRITE_TASK_MEMORY]                         = "Write task memory",
        [GE_SRTP_ENUMS::ServiceRequestCodes_WRITE_PROGRAM_BLOCK_MEMORY]                = "Write program block memory",
        [GE_SRTP_ENUMS::ServiceRequestCodes_PROGRAMMER_LOGON]                          = "Programmer logon",
        [GE_SRTP_ENUMS::ServiceRequestCodes_CHANGE_PLC_CPU_PRIVILEGE_LEVEL]            = "Change PLC CPU privilege level",
        [GE_SRTP_ENUMS::ServiceRequestCodes_SET_CONTROL_ID_CPU_ID]                     = "Set control ID (CPU ID)",
        [GE_SRTP_ENUMS::ServiceRequestCodes_SET_PLC_RUN_VS_STOP]                       = "Set PLC (run vs stop)",
        [GE_SRTP_ENUMS::ServiceRequestCodes_SET_PLC_TIME_DATE]                         = "Set PLC time/date",
        [GE_SRTP_ENUMS::ServiceRequestCodes_RETURN_PLC_TIME_DATE]                      = "Return PLC time/date",
        [GE_SRTP_ENUMS::ServiceRequestCodes_RETURN_FAULT_TABLE]                        = "Return fault table",
        [GE_SRTP_ENUMS::ServiceRequestCodes_CLEAR_FAULT_TABLE]                         = "Clear fault table",
        [GE_SRTP_ENUMS::ServiceRequestCodes_PROGRAM_STORE_UPLOAD_FROM_PLC]             = "Program store (upload from PLC)",
        [GE_SRTP_ENUMS::ServiceRequestCodes_PROGRAM_LOAD_DOWNLOAD_TO_PLC]              = "Program load (download to PLC)",
        [GE_SRTP_ENUMS::ServiceRequestCodes_RETURN_CONTROLLER_TYPE_AND_ID_INFORMATION] = "Return controller type and ID information",
        [GE_SRTP_ENUMS::ServiceRequestCodes_TOGGLE_FORCE_SYSTEM_MEMORY]                = "Toggle force system memory",
    } &default = "Unknown";

    #
    # Leveraging the SRTP Protocol for Over the Network Memory Acquistion of a GE Fanuc Series 90-30.pdf
    #    Table 3 - Segment selectors overview
    #
    const SEGMENT_SELECTORS = {
        [GE_SRTP_ENUMS::SegmentSelectors_DISCRETE_INPUTS_BIT_SELECTOR]       = "Discrete Inputs (%I) Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_DISCRETE_INPUTS_BYTE_SELECTOR]      = "Discrete Inputs (%I) Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_DISCRETE_OUTPUTS_BIT_SELECTOR]      = "Discrete Outputs (%Q) Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_DISCRETE_OUTPUTS_BYTE_SELECTOR]     = "Discrete Outputs (%Q) Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_DISCRETE_INTERNALS_BIT_SELECTOR]    = "Discrete Internals (%M) Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_DISCRETE_INTERNALS_BYTE_SELECTOR]   = "Discrete Internals (%M) Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_DISCRETE_TEMPORARIES_BIT_SELECTOR]  = "Discrete Temporaries (%T) Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_DISCRETE_TEMPORARIES_BYTE_SELECTOR] = "Discrete Temporaries (%T) Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_SA_DISCRETE_BIT_SELECTOR]           = "%SA Discrete Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_SA_DISCRETE_BYTE_SELECTOR]          = "%SA Discrete Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_SB_DISCRETE_BIT_SELECTOR]           = "%SB Discrete Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_SB_DISCRETE_BYTE_SELECTOR]          = "%SB Discrete Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_SC_DISCRETE_BIT_SELECTOR]           = "%SC Discrete Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_SC_DISCRETE_BYTE_SELECTOR]          = "%SC Discrete Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_S_DISCRETE_BIT_SELECTOR]            = "%S Discrete Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_S_DISCRETE_BYTE_SELECTOR]           = "%S Discrete Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_GENIUS_GLOBAL_DATA_BIT_SELECTOR]    = "Genius Global Data (%G) Bit-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_GENIUS_GLOBAL_DATA_BYTE_SELECTOR]   = "Genius Global Data (%G) Byte-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_ANALOG_INPUTS_WORD_SELECTOR]        = "Analog Inputs (%AI) Word-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_ANALOG_OUTPUTS_WORD_SELECTOR]       = "Analog Outputs (%AQ) Word-selector",
        [GE_SRTP_ENUMS::SegmentSelectors_REGISTERS_WORD_SELECTOR]            = "Registers (%R) Word-selector",
    } &default = "Unknown";

    #
    # General Electric 1998 Series 90 PLC SNP Communications gfk-0529
    #    Table 3-8. Bits of the PLC Status Word
    #
    const OVERSWEEP_FLAG = {
        [1] = "Constant sweep value exceeded",
        [0] = "No oversweep condition exists"
    } &default = "Unknown";

    const CONSTANT_SWEEP_MODE = {
        [1] = "Constant sweep mode active",
        [0] = "Constant sweep mode is not active"
    } &default = "Unknown";

    const PLC_FAULT_ENTRY_SINCE_LAST_READ = {
        [1] = "PLC fault table has changed since last read by this device",
        [0] = "PLC fault table unchanged since last read"
    } &default = "Unknown";

    const IO_FAULT_ENTRY_SINCE_LAST_READ = {
        [1] = "I/O fault table has changed since last read by this device",
        [0] = "I/O fault table unchanged since last read"
    } &default = "Unknown";

    const PLC_FAULT_ENTRY_PRESENT = {
        [1] = "One or more fault entries in PLC fault table",
        [0] = "PLC fault table is empty"
    } &default = "Unknown";

    const IO_FAULT_ENTRY_PRESENT = {
        [1] = "One or more fault entries in I/O fault table",
        [0] = "I/O fault table is empty"
    } &default = "Unknown";

    const PROGRAMMER_ATTACHMENT_FLAG = {
        [1] = "Programmer attachment found",
        [0] = "No programmer attachment found"
    } &default = "Unknown";

    const FRONT_PANEL_ENABLE_SWITCH_SETTING = {
        [1] = "Outputs disabled",
        [0] = "Outputs enabled"
    } &default = "Unknown";

    const FRONT_PANEL_RUN_SWITCH_SETTING = {
        [1] = "RUN",
        [0] = "STOP"
    } &default = "Unknown";

    const OEM_PROTECTED = {
        [1] = "OEM protection in effect",
        [0] = "No OEM protection"
    } &default = "Unknown";

    const PLC_STATE = {
        [GE_SRTP_ENUMS::PLC_State_RUN_IO_ENABLED]   = "Run I/O enabled",
        [GE_SRTP_ENUMS::PLC_State_RUN_IO_DISABLED]  = "Run I/O disabled",
        [GE_SRTP_ENUMS::PLC_State_STOP_IO_DISABLED] = "Stop I/O disabled",
        [GE_SRTP_ENUMS::PLC_State_CPU_STOP_FAULTED] = "CPU stop faulted",
        [GE_SRTP_ENUMS::PLC_State_CPU_HALTED]       = "CPU halted",
        [GE_SRTP_ENUMS::PLC_State_CPU_SUSPENDED]    = "CPU suspended",
        [GE_SRTP_ENUMS::PLC_State_STOP_IO_ENABLED]  = "Stop I/O enabled",
    } &default = "Unknown";

    #
    # General Electric 1998 Series 90 PLC SNP Communications
    #    Mailbox Message types
    #
    const MESSAGE_TYPE = {
        [GE_SRTP_ENUMS::MessageType_REQUEST_MAILBOX_MESSAGE]                  = "Initial Request Mailbox message (0xC0)",
        [GE_SRTP_ENUMS::MessageType_REQUEST_MAILBOX_MESSAGE_WITH_TEXT_BUFFER] = "Initial Request Mailbox message with text buffer (0x80)",
        [GE_SRTP_ENUMS::MessageType_ACK_MAILBOX_MESSAGE]                      = "Completion ACK Mailbox message (0xD4)",
        [GE_SRTP_ENUMS::MessageType_ACK_MAILBOX_MESSAGE_WITH_TEXT_BUFFER]     = "Completion ACK Mailbox message with text buffer (0x94)",
        [GE_SRTP_ENUMS::MessageType_ERROR_NACK_MAILBOX_MESSAGE]               = "Error Nack Mailbox message (0xD1)",
    } &default = "Unknown";

    #
    # General Electric 1998 Series 90 PLC SNP Communications
    #    Table 3-12 Major Error Status Codes
    #
    const ERROR_STATUS = {
        [GE_SRTP_ENUMS::ErrorStatus_NO_ERROR_OCCURRED]       = "No Error Occurred",
        [GE_SRTP_ENUMS::ErrorStatus_ILLEGAL_SERVICE_REQUEST] = "Illegal Service Request: not defined/supported",
        [GE_SRTP_ENUMS::ErrorStatus_INSUFFICIENT_PRIVILEGE]  = "Insufficient Privilege for request",
        [GE_SRTP_ENUMS::ErrorStatus_PROTOCOL_SEQUENCE_ERROR] = "Protocol Sequence Error: message is out of order",
        [GE_SRTP_ENUMS::ErrorStatus_SERVICE_REQUEST_ERROR]   = "Service Request Error",
        [GE_SRTP_ENUMS::ErrorStatus_ILLEGAL_MAILBOX_TYPE]    = "Illegal Mailbox Type: type undefined/unexpected",
        [GE_SRTP_ENUMS::ErrorStatus_REQUEST_QUEUE_FULL]      = "Request Queue Full: PLC request queue is full",
    } &default = "Unknown";


    #
    # General Electric 1998 Series 90 PLC SNP Communications
    #    Table 3-13 and Table 3-14 Minor Error Status Codes
    #
    const MINOR_ERROR_STATUS = {
        [GE_SRTP_ENUMS::MinorErrorStatus_NO_MINOR_ERROR_OCCURRED]                            = "No Minor Error Occurred",
        [GE_SRTP_ENUMS::MinorErrorStatus_SERVICE_REQUEST_ABORTED]                            = "Service request has been aborted.",
        [GE_SRTP_ENUMS::MinorErrorStatus_NO_PRIVILEGE_FOR_OPERATION]                         = "No privilege for attempted operation.",
        [GE_SRTP_ENUMS::MinorErrorStatus_UNABLE_TO_PERFORM_AUTO_CONFIG]                      = "Unable to perform auto configuration.",
        [GE_SRTP_ENUMS::MinorErrorStatus_IO_CONFIG_INVALID]                                  = "I/O configuration is invalid.",
        [GE_SRTP_ENUMS::MinorErrorStatus_CANNOT_CLEAR_IO_CONFIG]                             = "Cannot clear I/O configuration.",
        [GE_SRTP_ENUMS::MinorErrorStatus_CANNOT_REPLACE_IO_MODULE]                           = "Cannot replace I/O module.",
        [GE_SRTP_ENUMS::MinorErrorStatus_TASK_ADDRESS_OUT_OF_RANGE]                          = "Task address out of range.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_TASK_NAME_REFERENCED]                       = "Invalid task name referenced.",
        [GE_SRTP_ENUMS::MinorErrorStatus_REQUIRED_TO_LOG_IN_TO_A_TASK_FOR_SERVICE]           = "Required to log in to a task for service.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_SWEEP_STATE_TO_SET]                         = "Invalid sweep state to set.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_PASSWORD]                                   = "Invalid password.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_INPUT_PARAMETER]                            = "Invalid input parameter in request.",
        [GE_SRTP_ENUMS::MinorErrorStatus_IO_CONFIG_MISMATCH]                                 = "I/O configuration mismatch.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_PROGRAM_CANNOT_LOG_IN]                      = "Invalid program cannot log in.",
        [GE_SRTP_ENUMS::MinorErrorStatus_REQUEST_ONLY_VALID_FROM_PROGRAMMER]                 = "Request only valid from programmer.",
        [GE_SRTP_ENUMS::MinorErrorStatus_REQUEST_ONLY_VALID_IN_STOP_MODE]                    = "Request only valid in stop mode.",
        [GE_SRTP_ENUMS::MinorErrorStatus_PROGRAMMER_IS_ALREADY_ATTACHED]                     = "Programmer is already attached.",
        [GE_SRTP_ENUMS::MinorErrorStatus_COULD_NOT_RETURN_BLOCK_SIZES]                       = "Could not return block sizes.",
        [GE_SRTP_ENUMS::MinorErrorStatus_VMEBUS_ERROR_ENCOUNTERED]                           = "VMEbus error encountered.",
        [GE_SRTP_ENUMS::MinorErrorStatus_TASK_UNABLE_TO_BE_CREATED]                          = "Task unable to be created.",
        [GE_SRTP_ENUMS::MinorErrorStatus_TASK_UNABLE_TO_BE_DELETED]                          = "Task unable to be deleted.",
        [GE_SRTP_ENUMS::MinorErrorStatus_NOT_LOGGED_INTO_PROCESS_SERVICE_REQUEST]            = "Not logged in to process service request.",
        [GE_SRTP_ENUMS::MinorErrorStatus_SEGMENT_SELECTOR_NOT_VALID_IN_CONTEXT]              = "Segment selector not valid in context.",
        [GE_SRTP_ENUMS::MinorErrorStatus_NO_USER_MEMORY_AVAILABLE_TO_ALLOCATE]               = "No user memory is available to allocate.",
        [GE_SRTP_ENUMS::MinorErrorStatus_CONFIG_IS_NOT_VALID]                                = "Configuration is not valid.",
        [GE_SRTP_ENUMS::MinorErrorStatus_CPU_MODEL_DOES_NOT_MATCH]                           = "CPU model number does not match.",
        [GE_SRTP_ENUMS::MinorErrorStatus_DOS_FILE_AREA_NOT_FORMATTED]                        = "DOS file area not formatted.",
        [GE_SRTP_ENUMS::MinorErrorStatus_SEGMENT_FOR_SELECTOR_DOES_NOT_EXIST]                = "Segment for this selector does not exist.",
        [GE_SRTP_ENUMS::MinorErrorStatus_CPU_REVISION_NUMBER_DOES_NOT_MATCH]                 = "CPU revision number does not match.",
        [GE_SRTP_ENUMS::MinorErrorStatus_IOS_COULD_NOT_DELETE_CONFIG]                        = "IOS could not delete configuration or bad type.",
        [GE_SRTP_ENUMS::MinorErrorStatus_NO_IO_CONFIG_TO_READ_OR_DELETE]                     = "No I/O configuration to read or delete.",
        [GE_SRTP_ENUMS::MinorErrorStatus_SERVICE_IN_PROCESS_CANNOT_LOGIN]                    = "Service in process cannot login.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_DATAGRAM_CONNECITON_INVALID]                = "Invalid Datagram connection address.",
        [GE_SRTP_ENUMS::MinorErrorStatus_SIZE_OF_DATAGRAM_CONNECITON_INVALID]                = "Size of Datagram connection invalid.",
        [GE_SRTP_ENUMS::MinorErrorStatus_UNABLE_TO_LOCATE_CONNECTION_ID]                     = "Unable to locate given connection ID.",
        [GE_SRTP_ENUMS::MinorErrorStatus_UNABLE_TO_FIND_CONNECTION_ADDRESS]                  = "Unable to find connection address.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_SEGMENT_SELECTOR_IN_DATAGRAM]               = "Invalid segment selector in Datagram.",
        [GE_SRTP_ENUMS::MinorErrorStatus_NULL_POINTER_TO_DATA_SEGMENT_SELECTOR]              = "Null pointer to data in segment selector.",
        [GE_SRTP_ENUMS::MinorErrorStatus_TRANSFER_TYPE_INVALID_FOR_SELECTOR]                 = "Transfer type invalid for this selector.",
        [GE_SRTP_ENUMS::MinorErrorStatus_POINT_LENGTH_NOT_ALLOWED]                           = "Point length not allowed.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_DATAGRAM_TYPE_SPECIFIED]                    = "Invalid Datagram type specified.",
        [GE_SRTP_ENUMS::MinorErrorStatus_DATAGRAM_CONNECTION_BOUNDARY_EXCEEDED]              = "Datagram connection boundary exceeded.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_BLOCK_NAME_SPECIFIED]                       = "Invalid block name specified in Datagram.",
        [GE_SRTP_ENUMS::MinorErrorStatus_MISMATCH_OF_CONFIG_CHECKSUM]                        = "Mismatch of configuration checksum.",
        [GE_SRTP_ENUMS::MinorErrorStatus_UPM_EXCEEDED_BLOCK_END]                             = "User Program Module (UPM) read or write exceeded block end.",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_WRITE_MODE_PARAMETER]                       = "Invalid write mode parameter.",
        [GE_SRTP_ENUMS::MinorErrorStatus_PACKET_SIZE_DOES_NOT_MATCH_INPUT]                   = "Packet size or total program size does not match input.",
        [GE_SRTP_ENUMS::MinorErrorStatus_PLC_MODULES_CONFIGURED_HAVE_UNSUPPORTED_REVISION]   = "One or more PLC modules configured have unsupported revision.",
        [GE_SRTP_ENUMS::MinorErrorStatus_SPECIFIED_DEVICE_IS_NOT_AVAILABLE]                  = "Specified device is not available in the system (not present).",
        [GE_SRTP_ENUMS::MinorErrorStatus_SPECIFIED_DEVICE_HAS_INSUFFICENT_MEMORY]            = "Specified device has insufficient memory to handle request.",
        [GE_SRTP_ENUMS::MinorErrorStatus_ATTEMPT_TO_READ_DEVICE_BUT_NO_DATA_STORED_ON_IT]    = "Attempt was made to read a device but no data has been stored on it.",
        [GE_SRTP_ENUMS::MinorErrorStatus_DATA_STORED_ON_DEVICE_CORRUPTED_AND_NOT_AVAILABLE]  = "Data stored on device has been corrupted and is no longer reliable.",
        [GE_SRTP_ENUMS::MinorErrorStatus_COMM_WRITE_VERIFY_ERROR_OCCURRED_DURING_SAVE]       = "A comm or write verify error occurred during save or restore.",
        [GE_SRTP_ENUMS::MinorErrorStatus_DEVICE_IS_WRITE_PROTECTED]                          = "Device is write protected.",
        [GE_SRTP_ENUMS::MinorErrorStatus_LOGIN_USING_NON_ZERO_BUFFER_SIZE_REQUIRED]          = "Login using non-zero buffer size required for block commands.",
        [GE_SRTP_ENUMS::MinorErrorStatus_PASSWORD_ALREADY_ENABLED]                           = "Password(s) already enabled and cannot be forced inactive.",
        [GE_SRTP_ENUMS::MinorErrorStatus_PASSWORD_SET_TO_INACTIVE]                           = "Passwords are set to inactive and cannot be enabled or disabled.",
        [GE_SRTP_ENUMS::MinorErrorStatus_REQUESTOR_NOT_LOGGED_INTO_MAIN_CONTROL_PROGRAM]     = "Control Program (CP) tasks exist but requestor not logged into main CP.",
        [GE_SRTP_ENUMS::MinorErrorStatus_NO_TASK_LEVEL_RACK_CONFIG_TO_READ]                  = "No task-level Rack/Slot configuration to read or delete.",
        [GE_SRTP_ENUMS::MinorErrorStatus_VERIFY_WITH_FA_CARD_OR_EEPROM_FAILED]               = "Verify with FA Card or EEPROM failed.",
        [GE_SRTP_ENUMS::MinorErrorStatus_TEXT_LENGTH_DOES_NOT_MATCH_TRAFFIC_TYPE]            = "Text length does not match traffic type.",
        [GE_SRTP_ENUMS::MinorErrorStatus_THE_OEM_KEY_IS_NULL]                                = "The OEM key is NULL (inactive).",
        [GE_SRTP_ENUMS::MinorErrorStatus_INVALID_BLOCK_STATE_TRANSITION]                     = "Invalid block state transition.",
        [GE_SRTP_ENUMS::MinorErrorStatus_BAD_OMF_RECORD_CHECKSUM_IN_STORE]                   = "Bad OMF record checksum in store.",
        [GE_SRTP_ENUMS::MinorErrorStatus_ILLEGAL_OMF_RECORD_TYPE_CONTENTS]                   = "Illegal OMF record type/data contents.",
        [GE_SRTP_ENUMS::MinorErrorStatus_BAD_BLOCK_TYPE_GIVEN_IN_LOAD]                       = "Bad Block Type given in Load/Store.",
        [GE_SRTP_ENUMS::MinorErrorStatus_BLOCK_SET_NOT_FOUND]                                = "Block Set (subblock name) not found.",
        [GE_SRTP_ENUMS::MinorErrorStatus_BLOCK_TYPE_NOT_FOUND]                               = "Block Type (e.g., data) not found.",
        [GE_SRTP_ENUMS::MinorErrorStatus_MAX_LENGTH_OF_A_PARTIAL_STORE_EXCEEDED]             = "Maximum length of a partial store exceeded.",
        [GE_SRTP_ENUMS::MinorErrorStatus_BLOCK_SET_ALREADY_EXISTS]                           = "Block Set already exists, cannot create.",
        [GE_SRTP_ENUMS::MinorErrorStatus_EXECUTABLE_FLAG_TYPEDER_RECORD_NOT_SET]             = "Executable flag in TYPDEF record not set.",
        [GE_SRTP_ENUMS::MinorErrorStatus_SIZE_OF_SEGMENT_SELECTOR_TABLE_RECORD_NOT_CORRECT]  = "Size of the Segment Selector Table in TYPDEF record is not correct.",
        [GE_SRTP_ENUMS::MinorErrorStatus_SEGMENT_LENGTH_NOT_EQUAL_TO_SEGMENT_BLOCK]          = "Segment length in Verify not equal to the segment length of block in the PLC.",
        [GE_SRTP_ENUMS::MinorErrorStatus_CRC_CHECKSUM_COMPARISON_IN_VERIFY_FAILED]           = "Cyclic Redundancy Check (CRC) checksum comparison in Verify failed.",
        [GE_SRTP_ENUMS::MinorErrorStatus_ADDITIVE_CHECKSUM_CMOPARISION_IN_VERIFY_FAILED]     = "Additive checksum comparison in Verify failed.",
        [GE_SRTP_ENUMS::MinorErrorStatus_ALTER_INTERRUPT_LIST_IN_DECL_BLOCK_DURING_RUNTIME]  = "Attempt to alter interrupt list in MAIN DECL BLOCK during RUN MODE.",
        [GE_SRTP_ENUMS::MinorErrorStatus_LENGTH_LIMIT_EXCEEDED]                              = "Length limit exceeded; includes read past end of transferred data, writes past end of program block.",
        [GE_SRTP_ENUMS::MinorErrorStatus_PROGRAM_BLOCK_ALREADY_EXISTS]                       = "Program block already exists and cannot be replaced.",
        [GE_SRTP_ENUMS::MinorErrorStatus_PROBLEM_SENDING_MAIL_TO_SLAVE_SERVICE_REQ_TASK]     = "Problem with sending mail to the slave Service Request task. (Series 90-70 PLC CPUs only).",
        [GE_SRTP_ENUMS::MinorErrorStatus_PROBLEM_GETTING_MAIL_FROM_SLAVE_SERVICE_REQ_TASK]   = "Problem with getting mail from the slave Service Request task. (Series 90-70 PLC CPUs only).",
        [GE_SRTP_ENUMS::MinorErrorStatus_SLAVE_TASK_TIMED_OUT]                               = "Slave SNP task timed out before receiving SRP response. (Series 90-70 PLC CPUs only).",
        [GE_SRTP_ENUMS::MinorErrorStatus_SLAVE_TASK_COULD_NOT_FIND_REQUESTED_CONNECTION]     = "Slave SNP task could not find the requested Datagram connection. (Series 90-70 PLC CPUs only).",
        [GE_SRTP_ENUMS::MinorErrorStatus_SLAVE_TASK_ENCOUNTERED_AN_ERROR_WRITING_DATAGRAM]   = "Slave SNP task encountered an error in trying to write the Datagram. (Series 90- 70 PLC CPUs only).",
        [GE_SRTP_ENUMS::MinorErrorStatus_SLAVE_TASK_ENCOUNTERED_AN_ERROR_UPDATING_DATAGRAM]  = "Slave SNP task encountered an error in trying to update the Datagram. (Series 90- 70 PLC CPUs only).",
    } &default = "Unknown";




}
