/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Robin Andersson/OneDrive/Skola/D0011E/Lab 5/Lab5/DataMemory.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3261551314_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    int t18;
    int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t18 = (31 - 31);
    t6 = (t18 * -1);
    t9 = (1U * t6);
    t20 = (0 + t9);
    t1 = (t2 + t20);
    t4 = *((unsigned char *)t1);
    t8 = (t4 == (unsigned char)2);
    if (t8 == 1)
        goto LAB18;

LAB19:    t3 = (unsigned char)0;

LAB20:    if (t3 != 0)
        goto LAB15;

LAB17:
LAB16:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(20, ng0);
    t1 = xsi_get_transient_memory(1024U);
    memset(t1, 0, 1024U);
    t5 = t1;
    t6 = (32U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3552);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 1024U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t9 = (1024U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB12;

LAB14:
LAB13:    goto LAB3;

LAB9:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t15 = (t8 == (unsigned char)3);
    t3 = t15;
    goto LAB11;

LAB12:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1672U);
    t10 = *((char **)t2);
    t2 = (t0 + 1512U);
    t11 = *((char **)t2);
    t2 = (t0 + 6112U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t11, t2);
    t19 = (t18 - 31);
    t6 = (t19 * -1);
    t9 = (32U * t6);
    t20 = (0U + t9);
    t12 = (t0 + 3552);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t21 = (t14 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t10, 32U);
    xsi_driver_first_trans_delta(t12, t20, 32U, 0LL);
    goto LAB13;

LAB15:    xsi_set_current_line(27, ng0);
    t10 = (t0 + 1992U);
    t11 = *((char **)t10);
    t10 = (t0 + 1512U);
    t12 = *((char **)t10);
    t10 = (t0 + 6112U);
    t23 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t10);
    t24 = (t23 - 31);
    t25 = (t24 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t23);
    t26 = (32U * t25);
    t27 = (0 + t26);
    t13 = (t11 + t27);
    t14 = (t0 + 3616);
    t21 = (t14 + 56U);
    t22 = *((char **)t21);
    t28 = (t22 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t13, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB16;

LAB18:    t5 = (t0 + 1512U);
    t7 = *((char **)t5);
    t5 = (t0 + 6112U);
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t5);
    t15 = (t19 <= 31);
    t3 = t15;
    goto LAB20;

}


extern void work_a_3261551314_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3261551314_3212880686_p_0};
	xsi_register_didat("work_a_3261551314_3212880686", "isim/FirstMipsVersion_tb_isim_beh.exe.sim/work/a_3261551314_3212880686.didat");
	xsi_register_executes(pe);
}
