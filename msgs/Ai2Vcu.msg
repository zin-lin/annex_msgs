# Refer to the link below for more information
# built with FS-AE-AI in mind
# https://github.com/FS-AI/FS-AI_API/blob/main/Docs/ADS-DV_Software_Interface_Specification_v4.0.pdf

uint8   mission_status
uint8   direction_request
bool    estop_request
bool    handshake_send_bit
float32 steer_angle_request_deg
float32 axle_speed_request_rpm
float32 axle_torque_request_nm
float32 brake_press_request_pct