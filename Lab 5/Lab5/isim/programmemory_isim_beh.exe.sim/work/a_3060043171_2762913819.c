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
static const char *ng0 = "C:/Users/Robin Andersson/OneDrive/Skola/D0011E/Lab 5/Lab5/programmemory.vhd";



static void work_a_3060043171_2762913819_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    int t59;
    char *t60;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;

LAB0:    t1 = (t0 + 2352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(13, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4488);
    t5 = xsi_mem_cmp(t2, t3, 32U);
    if (t5 == 1)
        goto LAB5;

LAB25:    t6 = (t0 + 4520);
    t8 = xsi_mem_cmp(t6, t3, 32U);
    if (t8 == 1)
        goto LAB6;

LAB26:    t9 = (t0 + 4552);
    t11 = xsi_mem_cmp(t9, t3, 32U);
    if (t11 == 1)
        goto LAB7;

LAB27:    t12 = (t0 + 4584);
    t14 = xsi_mem_cmp(t12, t3, 32U);
    if (t14 == 1)
        goto LAB8;

LAB28:    t15 = (t0 + 4616);
    t17 = xsi_mem_cmp(t15, t3, 32U);
    if (t17 == 1)
        goto LAB9;

LAB29:    t18 = (t0 + 4648);
    t20 = xsi_mem_cmp(t18, t3, 32U);
    if (t20 == 1)
        goto LAB10;

LAB30:    t21 = (t0 + 4680);
    t23 = xsi_mem_cmp(t21, t3, 32U);
    if (t23 == 1)
        goto LAB11;

LAB31:    t24 = (t0 + 4712);
    t26 = xsi_mem_cmp(t24, t3, 32U);
    if (t26 == 1)
        goto LAB12;

LAB32:    t27 = (t0 + 4744);
    t29 = xsi_mem_cmp(t27, t3, 32U);
    if (t29 == 1)
        goto LAB13;

LAB33:    t30 = (t0 + 4776);
    t32 = xsi_mem_cmp(t30, t3, 32U);
    if (t32 == 1)
        goto LAB14;

LAB34:    t33 = (t0 + 4808);
    t35 = xsi_mem_cmp(t33, t3, 32U);
    if (t35 == 1)
        goto LAB15;

LAB35:    t36 = (t0 + 4840);
    t38 = xsi_mem_cmp(t36, t3, 32U);
    if (t38 == 1)
        goto LAB16;

LAB36:    t39 = (t0 + 4872);
    t41 = xsi_mem_cmp(t39, t3, 32U);
    if (t41 == 1)
        goto LAB17;

LAB37:    t42 = (t0 + 4904);
    t44 = xsi_mem_cmp(t42, t3, 32U);
    if (t44 == 1)
        goto LAB18;

LAB38:    t45 = (t0 + 4936);
    t47 = xsi_mem_cmp(t45, t3, 32U);
    if (t47 == 1)
        goto LAB19;

LAB39:    t48 = (t0 + 4968);
    t50 = xsi_mem_cmp(t48, t3, 32U);
    if (t50 == 1)
        goto LAB20;

LAB40:    t51 = (t0 + 5000);
    t53 = xsi_mem_cmp(t51, t3, 32U);
    if (t53 == 1)
        goto LAB21;

LAB41:    t54 = (t0 + 5032);
    t56 = xsi_mem_cmp(t54, t3, 32U);
    if (t56 == 1)
        goto LAB22;

LAB42:    t57 = (t0 + 5064);
    t59 = xsi_mem_cmp(t57, t3, 32U);
    if (t59 == 1)
        goto LAB23;

LAB43:
LAB24:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5704);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(13, ng0);

LAB47:    t2 = (t0 + 2672);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB48;

LAB1:    return;
LAB5:    xsi_set_current_line(43, ng0);
    t60 = (t0 + 5096);
    t62 = (t0 + 2752);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    memcpy(t66, t60, 32U);
    xsi_driver_first_trans_fast_port(t62);
    goto LAB4;

LAB6:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5128);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5160);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5192);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5224);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5256);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5288);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5320);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5352);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5384);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5416);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5448);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5480);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB18:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5512);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB19:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5544);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB20:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5576);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB21:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5608);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB22:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5640);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB23:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5672);
    t4 = (t0 + 2752);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 32U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB44:;
LAB45:    t3 = (t0 + 2672);
    *((int *)t3) = 0;
    goto LAB2;

LAB46:    goto LAB45;

LAB48:    goto LAB46;

}


extern void work_a_3060043171_2762913819_init()
{
	static char *pe[] = {(void *)work_a_3060043171_2762913819_p_0};
	xsi_register_didat("work_a_3060043171_2762913819", "isim/programmemory_isim_beh.exe.sim/work/a_3060043171_2762913819.didat");
	xsi_register_executes(pe);
}
