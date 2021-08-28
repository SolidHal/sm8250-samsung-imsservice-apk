.class synthetic Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;
.super Ljava/lang/Object;
.source "ImBigDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type:[I

.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 256
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ordinal()I

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
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ADVERTISEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ordinal()I

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
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PAYMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ordinal()I

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
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->SUBSCRIPTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ordinal()I

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
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PREMIUM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    .line 242
    :goto_4
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    :try_start_5
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    :goto_5
    :try_start_6
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v5

    :goto_6
    :try_start_7
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v2

    :goto_7
    :try_start_8
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v5

    aput v3, v2, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    :goto_8
    :try_start_9
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v3

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    :goto_9
    :try_start_a
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v2

    :goto_a
    :try_start_b
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    .line 168
    :goto_b
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type:[I

    :try_start_c
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type:[I

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    return-void
.end method
