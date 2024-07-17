spicy_add_analyzer(
    NAME GE_SRTP
    PACKAGE_NAME GE_SRTP
    SOURCES zeek_ge_srtp.spicy ge_srtp_enums.spicy ge_srtp_functions.spicy ge_srtp_functions.cc ge_srtp.spicy ge_srtp.evt
    SCRIPTS __load__.zeek main.zeek ge_srtp_types.zeek ge_srtp_processing.zeek ge_srtp_enums.zeek
)
