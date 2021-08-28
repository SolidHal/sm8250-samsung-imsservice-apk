.class public Lcom/sec/internal/constants/ims/os/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkEvent"


# instance fields
.field public csOutOfService:Z

.field public isDataRoaming:Z

.field public isDataStateConnected:Z

.field public isEpdgAvailable:Z

.field public isEpdgConnected:Z

.field public isPsOnlyReg:Z

.field public isVoiceRoaming:Z

.field public isVopsUpdated:Z

.field public isWifiConnected:Z

.field public network:I

.field public operatorNumeric:Ljava/lang/String;

.field public outOfService:Z

.field public voiceNetwork:I

.field public voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 55
    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 57
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    .line 58
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 60
    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    .line 62
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 63
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    .line 64
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .locals 10
    .param p1, "network"    # I

    .line 107
    sget-object v6, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "00101"

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(IZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZLjava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(IIZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZZLjava/lang/String;ZZ)V
    .locals 0
    .param p1, "network"    # I
    .param p2, "voiceNetwork"    # I
    .param p3, "oos"    # Z
    .param p4, "csOos"    # Z
    .param p5, "dataRoaming"    # Z
    .param p6, "voiceRoaming"    # Z
    .param p7, "vops"    # Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .param p8, "wifi"    # Z
    .param p9, "epdgConn"    # Z
    .param p10, "epdgAvail"    # Z
    .param p11, "operatornumeric"    # Ljava/lang/String;
    .param p12, "psOnlyReg"    # Z
    .param p13, "dataStateConnected"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 91
    iput p2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    .line 92
    iput-boolean p3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 93
    iput-boolean p5, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    .line 94
    iput-boolean p6, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 95
    iput-object p7, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 96
    iput-boolean p4, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    .line 97
    iput-boolean p8, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    .line 98
    iput-boolean p9, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 99
    iput-boolean p10, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    .line 100
    iput-object p11, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 101
    iput-boolean p12, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 102
    iput-boolean p13, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    .line 103
    return-void
.end method

.method public constructor <init>(IZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZLjava/lang/String;)V
    .locals 14
    .param p1, "network"    # I
    .param p2, "oos"    # Z
    .param p3, "csOos"    # Z
    .param p4, "dataRoaming"    # Z
    .param p5, "voiceRoaming"    # Z
    .param p6, "vops"    # Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .param p7, "wifi"    # Z
    .param p8, "epdg"    # Z
    .param p9, "operatornumeric"    # Ljava/lang/String;

    .line 114
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v13}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(IIZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZZLjava/lang/String;ZZ)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 71
    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    .line 72
    iget-object v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 73
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 74
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    .line 75
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    .line 76
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    .line 77
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 78
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    .line 79
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 80
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    .line 81
    iget-object v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 82
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 83
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    .line 84
    return-void
.end method

.method public static blurNetworkType(I)I
    .locals 2
    .param p0, "network"    # I

    .line 317
    const/4 v0, 0x1

    const/16 v1, 0x10

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 328
    return p0

    .line 326
    :cond_0
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 321
    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static buildNetworkEvent(IZIIIZZZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkState;)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 28
    .param p0, "phoneId"    # I
    .param p1, "handle2GCallForHandOver"    # Z
    .param p2, "network"    # I
    .param p3, "voiceNetworkType"    # I
    .param p4, "callState"    # I
    .param p5, "isWifiConnected"    # Z
    .param p6, "isEpdgConnected"    # Z
    .param p7, "isEpdgAvailable"    # Z
    .param p8, "oldNetwork"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p9, "ns"    # Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 274
    move-object/from16 v0, p8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 275
    .local v3, "outOfService":Z
    :goto_1
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 276
    .local v4, "csOutOfService":Z
    :goto_2
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v19

    .line 277
    .local v19, "voiceNetwork":I
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v20

    .line 278
    .local v20, "isDataRoaming":Z
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v21

    .line 279
    .local v21, "dataConnectionState":Z
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v22

    .line 280
    .local v22, "isVoiceRoaming":Z
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v23

    .line 281
    .local v23, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v24

    .line 282
    .local v24, "vops":Lcom/sec/internal/constants/ims/os/VoPsIndication;
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v25

    .line 284
    .local v25, "isPsOnlyReg":Z
    if-gez p2, :cond_3

    .line 285
    iget v5, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 286
    .end local p2    # "network":I
    .local v5, "network":I
    iget-boolean v3, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    goto :goto_3

    .line 284
    .end local v5    # "network":I
    .restart local p2    # "network":I
    :cond_3
    move/from16 v5, p2

    .line 289
    .end local p2    # "network":I
    .restart local v5    # "network":I
    :goto_3
    invoke-static {v5}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v5

    .line 291
    if-eqz p1, :cond_4

    .line 294
    move/from16 v15, p3

    move/from16 v14, p4

    invoke-static {v5, v3, v4, v15, v14}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->is2GNetworkInCall(IZZII)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 295
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v5

    .line 296
    const/4 v3, 0x0

    move/from16 v26, v5

    goto :goto_4

    .line 291
    :cond_4
    move/from16 v15, p3

    move/from16 v14, p4

    .line 299
    :cond_5
    move/from16 v26, v5

    .end local v5    # "network":I
    .local v26, "network":I
    :goto_4
    new-instance v27, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-object/from16 v5, v27

    move/from16 v6, v26

    move/from16 v7, v19

    move v8, v3

    move v9, v4

    move/from16 v10, v20

    move/from16 v11, v22

    move-object/from16 v12, v24

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, v23

    move/from16 v17, v25

    move/from16 v18, v21

    invoke-direct/range {v5 .. v18}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(IIZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZZLjava/lang/String;ZZ)V

    .line 301
    .local v5, "event":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    invoke-virtual {v5, v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->KEEP:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-eq v6, v7, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    .line 302
    return-object v5
.end method

.method private equalsInternal(Ljava/lang/Object;Z)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "ignoreEpdg"    # Z

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 136
    return v0

    .line 138
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 139
    return v1

    .line 141
    :cond_1
    instance-of v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    if-nez v2, :cond_2

    .line 142
    return v1

    .line 144
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 145
    .local v2, "other":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    iget v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v3

    iget v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 146
    return v1

    .line 148
    :cond_3
    iget v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    iget v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    if-eq v3, v4, :cond_4

    .line 149
    return v1

    .line 151
    :cond_4
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eq v3, v4, :cond_5

    .line 152
    return v1

    .line 154
    :cond_5
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v3, v4, :cond_6

    .line 155
    return v1

    .line 157
    :cond_6
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eq v3, v4, :cond_7

    .line 158
    return v1

    .line 160
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v3, v4, :cond_8

    .line 161
    return v1

    .line 163
    :cond_8
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-eq v3, v4, :cond_9

    .line 164
    return v1

    .line 166
    :cond_9
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eq v3, v4, :cond_a

    .line 167
    return v1

    .line 169
    :cond_a
    if-nez p2, :cond_c

    .line 170
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eq v3, v4, :cond_b

    .line 171
    return v1

    .line 173
    :cond_b
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    if-eq v3, v4, :cond_c

    .line 174
    return v1

    .line 177
    :cond_c
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-eq v3, v4, :cond_d

    .line 178
    return v1

    .line 180
    :cond_d
    iget-object v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 181
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 182
    return v1

    .line 184
    :cond_e
    iget-boolean v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    iget-boolean v4, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-ne v3, v4, :cond_f

    goto :goto_0

    :cond_f
    move v0, v1

    :goto_0
    return v0
.end method

.method private static is2GNetworkInCall(IZZII)Z
    .locals 3
    .param p0, "network"    # I
    .param p1, "outOfService"    # Z
    .param p2, "csOutOfService"    # Z
    .param p3, "voiceNetworkType"    # I
    .param p4, "callState"    # I

    .line 307
    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 308
    move p0, p3

    .line 309
    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz p4, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 313
    :cond_1
    return v0
.end method


# virtual methods
.method public changedEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/String;
    .locals 5
    .param p1, "newEvent"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 188
    const-string v0, "Changed Event: "

    .line 189
    .local v0, "ret":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const-string v3, "=>"

    const-string v4, "), "

    if-eq v1, v2, :cond_0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DataRoaming("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v1, v2, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VoiceRoaming("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_1
    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v1}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v1

    iget v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v2}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Network type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_2
    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    iget v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    if-eq v1, v2, :cond_3

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Voice network("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eq v1, v2, :cond_4

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OoS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v1, v2, :cond_5

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VoPS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_5
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-eq v1, v2, :cond_6

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CS_OoS("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_6
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eq v1, v2, :cond_7

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isWifiConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_7
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-eq v1, v2, :cond_8

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isPsOnlyReg("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_8
    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eq v1, v2, :cond_9

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isDataConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Operator("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_a
    const-string v1, ", $"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->equalsInternal(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public equalsIgnoreEpdg(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->equalsInternal(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 120
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    .line 121
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 122
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 120
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEpdgHOEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 6
    .param p1, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 251
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0xe

    const/16 v2, 0x12

    const/16 v3, 0xd

    const/4 v4, 0x1

    const-string v5, "NetworkEvent"

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "isEpdgHOEvent: From IWLAN to LTE."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v4

    .line 257
    :cond_1
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v2, :cond_3

    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_3

    .line 260
    :cond_2
    const-string v0, "isEpdgHOEvent: From LTE to IWLAN."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v4

    .line 264
    :cond_3
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eq v0, v1, :cond_4

    .line 265
    const-string v0, "isEpdgHOEvent: Only wifi connection is changed."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v4

    .line 269
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;
    .locals 3
    .param p1, "old"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 238
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v0, v1, :cond_3

    .line 243
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->DISABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    .line 244
    .local v0, "enabled":Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoPS changed. enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkEvent"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v0

    .line 247
    .end local v0    # "enabled":Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->KEEP:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkEvent [network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceOverPs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outOfService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVoiceRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", csOutOfService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWifiConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEpdgConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEpdgAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPsOnlyReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDataConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
