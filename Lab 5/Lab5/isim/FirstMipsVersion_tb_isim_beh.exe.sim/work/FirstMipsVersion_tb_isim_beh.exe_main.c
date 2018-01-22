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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1973193242_3212880686_init();
    work_a_3112044328_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_0640057841_3212880686_init();
    work_a_1573125876_2762913819_init();
    work_a_3325905209_3212880686_init();
    work_a_1111616105_2762913819_init();
    work_a_2750190074_3212880686_init();
    work_a_3620231494_3212880686_init();
    work_a_3934519173_3212880686_init();
    work_a_0129527778_3212880686_init();
    work_a_0123829269_3212880686_init();
    work_a_3950172454_3212880686_init();
    work_a_2304684704_3212880686_init();
    work_a_1173275566_3212880686_init();
    work_a_2096391741_3212880686_init();
    work_a_3261551314_3212880686_init();
    work_a_0162411442_3212880686_init();
    work_a_2251057367_3212880686_init();
    work_a_3958406017_3212880686_init();
    work_a_1460610702_3212880686_init();
    work_a_3698853433_2372691052_init();


    xsi_register_tops("work_a_3698853433_2372691052");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
