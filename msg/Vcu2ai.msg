# Refer to the link below for more information
# built with FS-AE-AI in mind
# https://github.com/FS-AI/FS-AI_API/blob/main/Docs/ADS-DV_Software_Interface_Specification_v4.0.pdf

bool	    handshake_receive_bit
bool	    res_go_signal
uint8       as_state
uint8       ami_state
float32     steer_angle_deg
float32     brake_press_f_pct
float32	    brake_press_r_pct
float32     fl_wheel_speed_rpm
float32	    fr_wheel_speed_rpm
float32	    rl_wheel_speed_rpm
float32	    rr_wheel_speed_rpm
uint16      fl_pulse_count
uint16	    fr_pulse_count
uint16	    rl_pulse_count
uint16  	rr_pulse_count