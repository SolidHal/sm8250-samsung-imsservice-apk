.class public Lcom/sec/internal/ims/core/iil/IilIpcMessage;
.super Lcom/sec/internal/ims/core/iil/IpcMessage;
.source "IilIpcMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IilIpcMessage"

.field private static final MAX_IIL_REGISTRATION:I = 0x10c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/iil/IpcMessage;-><init>(III)V

    .line 18
    return-void
.end method

.method public static ImsChangePreferredNetwork()Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 4

    .line 150
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v1, 0x70

    const/16 v2, 0x15

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 154
    .local v0, "msg":Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    const-string v1, "IilIpcMessage"

    const-string v2, "ImsChangePreferredNetwork()"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->mIpcBody:[B

    .line 157
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->createIpcMessage()[B

    .line 158
    return-object v0
.end method

.method public static encodeIilConnected()Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 4

    .line 21
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v1, 0x70

    const/16 v2, 0x12

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 22
    .local v0, "msg":Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->mIpcBody:[B

    .line 23
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->createIpcMessage()[B

    .line 24
    return-object v0
.end method

.method public static encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 4
    .param p0, "imsPreference"    # Lcom/sec/internal/ims/core/iil/IilImsPreference;
    .param p1, "notiType"    # I

    .line 87
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v1, 0x70

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 91
    .local v0, "msg":Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NotiType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilIpcMessage"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->toByteArray(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->mIpcBody:[B

    .line 94
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->createIpcMessage()[B

    .line 95
    return-object v0
.end method

.method public static encodeImsPreferenceResp(Lcom/sec/internal/ims/core/iil/IilImsPreference;)Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 4
    .param p0, "imsPreference"    # Lcom/sec/internal/ims/core/iil/IilImsPreference;

    .line 99
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v1, 0x70

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 103
    .local v0, "msg":Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilIpcMessage"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->toByteArray(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->mIpcBody:[B

    .line 106
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->createIpcMessage()[B

    .line 107
    return-object v0
.end method

.method public static encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 17
    .param p0, "regStatus"    # I
    .param p1, "isVoLte"    # Z
    .param p2, "isSmsIp"    # Z
    .param p3, "isRcs"    # Z
    .param p4, "isPsVT"    # Z
    .param p5, "isCdpn"    # Z
    .param p6, "networkType"    # I
    .param p7, "featureTag"    # I
    .param p8, "ecmp"    # I
    .param p9, "epdgMode"    # I
    .param p10, "errorCode"    # I
    .param p11, "sipErrCode"    # I
    .param p12, "impu"    # Ljava/lang/String;
    .param p13, "rat"    # I

    .line 30
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    move/from16 v6, p10

    move/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p13

    new-instance v10, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v11, 0x70

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 33
    .local v10, "msg":Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    const/4 v11, 0x0

    .line 34
    .local v11, "byteImpu":[B
    const/4 v12, 0x0

    .line 35
    .local v12, "lenImpu":I
    if-eqz v8, :cond_0

    .line 36
    const-string v13, "UTF-8"

    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 37
    array-length v12, v11

    .line 38
    const/16 v13, 0x100

    if-le v12, v13, :cond_0

    const/16 v12, 0x100

    .line 40
    :cond_0
    const/16 v13, 0x10c

    new-array v13, v13, [B

    .line 41
    .local v13, "data":[B
    const/4 v14, 0x0

    .line 43
    .local v14, "featureMask":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rat="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isVoLte="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isSmsIp="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isRcs="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isPsVT="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isCdpn="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", ecmp="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v15, "IilIpcMessage"

    invoke-static {v15, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz v0, :cond_1

    .line 47
    or-int/lit8 v14, v14, 0x1

    .line 49
    :cond_1
    if-eqz v1, :cond_2

    .line 50
    or-int/lit8 v14, v14, 0x2

    .line 52
    :cond_2
    if-eqz v2, :cond_3

    .line 53
    or-int/lit8 v14, v14, 0x4

    .line 55
    :cond_3
    if-eqz v3, :cond_4

    .line 56
    or-int/lit8 v14, v14, 0x8

    .line 58
    :cond_4
    if-eqz v4, :cond_5

    .line 59
    or-int/lit8 v14, v14, 0x20

    .line 62
    :cond_5
    const/4 v8, 0x0

    .line 63
    .local v8, "idx":I
    add-int/lit8 v15, v8, 0x1

    move/from16 v0, p0

    .end local v8    # "idx":I
    .local v15, "idx":I
    int-to-byte v1, v0

    aput-byte v1, v13, v8

    .line 64
    add-int/lit8 v1, v15, 0x1

    .end local v15    # "idx":I
    .local v1, "idx":I
    int-to-byte v8, v14

    aput-byte v8, v13, v15

    .line 65
    add-int/lit8 v8, v1, 0x1

    move/from16 v15, p6

    .end local v1    # "idx":I
    .restart local v8    # "idx":I
    int-to-byte v0, v15

    aput-byte v0, v13, v1

    .line 66
    add-int/lit8 v0, v8, 0x1

    move/from16 v1, p7

    .end local v8    # "idx":I
    .local v0, "idx":I
    int-to-byte v2, v1

    aput-byte v2, v13, v8

    .line 67
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "idx":I
    .local v2, "idx":I
    int-to-byte v8, v5

    aput-byte v8, v13, v0

    .line 68
    add-int/lit8 v0, v2, 0x1

    move/from16 v8, p9

    .end local v2    # "idx":I
    .restart local v0    # "idx":I
    int-to-byte v1, v8

    aput-byte v1, v13, v2

    .line 69
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    shr-int/lit8 v2, v6, 0x8

    int-to-byte v2, v2

    aput-byte v2, v13, v0

    .line 70
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    int-to-byte v2, v6

    aput-byte v2, v13, v1

    .line 71
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    shr-int/lit8 v2, v7, 0x8

    int-to-byte v2, v2

    aput-byte v2, v13, v0

    .line 72
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    int-to-byte v2, v7

    aput-byte v2, v13, v1

    .line 73
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    int-to-byte v2, v12

    aput-byte v2, v13, v0

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v12, :cond_6

    .line 75
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aget-byte v16, v11, v0

    aput-byte v16, v13, v1

    .line 74
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    :cond_6
    :goto_1
    const/16 v0, 0x10b

    if-ge v1, v0, :cond_7

    .line 78
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "idx":I
    .local v0, "idx":I
    const/4 v2, 0x0

    aput-byte v2, v13, v1

    move v1, v0

    goto :goto_1

    .line 80
    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    :cond_7
    int-to-byte v2, v9

    aput-byte v2, v13, v0

    .line 82
    iput-object v13, v10, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->mIpcBody:[B

    .line 83
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->createIpcMessage()[B

    .line 84
    return-object v10
.end method

.method public static encodeImsRetryOverNoti(IZZZZZII)Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 6
    .param p0, "regStatus"    # I
    .param p1, "isVoLte"    # Z
    .param p2, "isSmsIp"    # Z
    .param p3, "isRcs"    # Z
    .param p4, "isPsVT"    # Z
    .param p5, "isCdpn"    # Z
    .param p6, "networkType"    # I
    .param p7, "ecmp"    # I

    .line 114
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v1, 0x70

    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 117
    .local v0, "msg":Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 118
    .local v1, "data":[B
    const/4 v2, 0x0

    .line 120
    .local v2, "type":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoLte "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isSmsIp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isRcs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isPsVT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isCdpn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ecmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IilIpcMessage"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    or-int/lit8 v2, v2, 0x1

    .line 126
    :cond_0
    if-eqz p2, :cond_1

    .line 127
    or-int/lit8 v2, v2, 0x2

    .line 129
    :cond_1
    if-eqz p3, :cond_2

    .line 130
    or-int/lit8 v2, v2, 0x4

    .line 132
    :cond_2
    if-eqz p4, :cond_3

    .line 133
    or-int/lit8 v2, v2, 0x8

    .line 135
    :cond_3
    if-eqz p5, :cond_4

    .line 136
    or-int/lit8 v2, v2, 0x20

    .line 139
    :cond_4
    const/4 v4, 0x0

    int-to-byte v5, p0

    aput-byte v5, v1, v4

    .line 140
    int-to-byte v4, v2

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    .line 141
    int-to-byte v4, p6

    const/4 v5, 0x2

    aput-byte v4, v1, v5

    .line 142
    int-to-byte v4, p7

    aput-byte v4, v1, v3

    .line 144
    iput-object v1, v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->mIpcBody:[B

    .line 145
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->createIpcMessage()[B

    .line 146
    return-object v0
.end method
