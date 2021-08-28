.class synthetic Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;
.super Ljava/lang/Object;
.source "ProvisionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 462
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->values()[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_INITIAL_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ATS_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    :goto_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v7

    :goto_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v8

    :goto_7
    :try_start_8
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x9

    aput v10, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v8

    :goto_8
    :try_start_9
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0xa

    aput v10, v8, v9
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v8

    :goto_9
    :try_start_a
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0xb

    aput v10, v8, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v8

    :goto_a
    :try_start_b
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0xc

    aput v10, v8, v9
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v8

    :goto_b
    :try_start_c
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0xd

    aput v10, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v8

    :goto_c
    :try_start_d
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_RETIRE_SESSION:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0xe

    aput v10, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v8

    :goto_d
    :try_start_e
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->READY_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0xf

    aput v10, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v8

    :goto_e
    :try_start_f
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCOUNT_NOT_ELIGIBLE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x10

    aput v10, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v8

    :goto_f
    :try_start_10
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ZCODE_ERROR_201:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x11

    aput v10, v8, v9
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v8

    :goto_10
    :try_start_11
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x12

    aput v10, v8, v9
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v8

    :goto_11
    :try_start_12
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CPS_PROVISION_SHUTDOWN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x13

    aput v10, v8, v9
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v8

    :goto_12
    :try_start_13
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x14

    aput v10, v8, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v8

    :goto_13
    :try_start_14
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x15

    aput v10, v8, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v8

    :goto_14
    :try_start_15
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x16

    aput v10, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v8

    :goto_15
    :try_start_16
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->STOP_BACKUP_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x17

    aput v10, v8, v9
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v8

    :goto_16
    :try_start_17
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->DELETE_ACCOUNT_SUCCESS:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x18

    aput v10, v8, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v8

    :goto_17
    :try_start_18
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x19

    aput v10, v8, v9
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v8

    :goto_18
    :try_start_19
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->LAST_RETRY_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x1a

    aput v10, v8, v9
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v8

    :goto_19
    :try_start_1a
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x1b

    aput v10, v8, v9
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v8

    :goto_1a
    :try_start_1b
    sget-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->MAILBOX_MIGRATION_RESET:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v9

    const/16 v10, 0x1c

    aput v10, v8, v9
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v8

    .line 340
    :goto_1b
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->values()[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    :try_start_1c
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v1

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v0

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v0

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackup_PrmptMsg13:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v0

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    :goto_21
    :try_start_22
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    :goto_22
    :try_start_23
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    :goto_23
    return-void
.end method
