.class public Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;
.super Ljava/lang/Object;
.source "CdmaSmsUtil.java"


# static fields
.field public static final CONTENT_TYPE_3GPP2:Ljava/lang/String; = "application/vnd.3gpp2.sms"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARAM_ID_BEARER_DATA:I = 0x8

.field public static final PARAM_ID_BEARER_REPLY_OPTION:I = 0x6

.field public static final PARAM_ID_ORIGINATING_ADDRESS:I = 0x2

.field public static final PARAM_ID_SERVICE_CATEGORY:I = 0x1

.field public static final PARAM_ID_TELESERVICE:I = 0x0

.field public static final SMS_MSG_TYPE_PP:I = 0x0

.field public static final TELESERVICE_WAP:I = 0x1004


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAdminMsg([B)Z
    .locals 7
    .param p0, "tPdu"    # [B

    .line 221
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_5

    .line 226
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 227
    .local v1, "baisIn":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    .local v2, "disIn":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 231
    .local v3, "msgType":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 232
    .local v4, "paramId":I
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 233
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v5, v6

    .line 234
    .local v5, "teleservice":I
    const/16 v6, 0x1004

    if-ne v5, v6, :cond_1

    .line 235
    const/4 v0, 0x1

    .line 242
    nop

    .line 243
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception v6

    .line 246
    .local v6, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_0
    return v0

    .line 242
    .end local v3    # "msgType":I
    .end local v4    # "paramId":I
    .end local v5    # "teleservice":I
    :cond_1
    nop

    .line 243
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 241
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 238
    :catch_1
    move-exception v3

    .line 239
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 243
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 247
    :goto_1
    goto :goto_2

    .line 245
    :catch_2
    move-exception v3

    .line 246
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    .end local v3    # "ex":Ljava/io/IOException;
    nop

    .line 250
    :goto_2
    return v0

    .line 242
    :goto_3
    nop

    .line 243
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 247
    goto :goto_4

    .line 245
    :catch_3
    move-exception v3

    .line 246
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_4
    throw v0

    .line 223
    .end local v1    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "disIn":Ljava/io/DataInputStream;
    :cond_2
    :goto_5
    return v0
.end method

.method public static isValid3GPP2PDU([B)Z
    .locals 13
    .param p0, "tPdu"    # [B

    .line 30
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    array-length v1, p0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto/16 :goto_a

    .line 35
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    .local v1, "baisIn":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .local v3, "disIn":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 42
    .local v4, "verifiedParamId":I
    :cond_1
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-lez v6, :cond_b

    .line 44
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 45
    .local v6, "paramId":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-gtz v7, :cond_2

    .line 46
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v7, "isValid3GPP2PDU() no data after paramId"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    nop

    .line 90
    nop

    .line 91
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    return v0

    .line 49
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 50
    .local v7, "len":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v8

    if-lez v8, :cond_3

    if-nez v6, :cond_3

    .line 51
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    and-int/lit16 v7, v8, 0xff

    .line 53
    :cond_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v8

    if-ge v8, v7, :cond_4

    .line 54
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isValid3GPP2PDU() wrong after PARAM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    nop

    .line 90
    nop

    .line 91
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 95
    goto :goto_1

    .line 93
    :catch_1
    move-exception v2

    .line 94
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 55
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1
    return v0

    .line 57
    :cond_4
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_9

    if-eq v6, v5, :cond_8

    const/4 v10, 0x2

    if-eq v6, v10, :cond_7

    if-eq v6, v2, :cond_6

    const/16 v10, 0x8

    if-eq v6, v10, :cond_5

    .line 76
    :try_start_4
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isValid3GPP2PDU() Invalid paramID ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    nop

    .line 90
    nop

    .line 91
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 95
    goto :goto_2

    .line 93
    :catch_2
    move-exception v2

    .line 94
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_2
    return v0

    .line 73
    :cond_5
    or-int/lit8 v4, v4, 0x8

    .line 74
    goto :goto_4

    .line 67
    :cond_6
    int-to-long v10, v7

    :try_start_6
    invoke-virtual {v3, v10, v11}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    .local v10, "length":J
    cmp-long v12, v10, v8

    if-gez v12, :cond_a

    .line 69
    nop

    .line 90
    nop

    .line 91
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 95
    goto :goto_3

    .line 93
    :catch_3
    move-exception v2

    .line 94
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_3
    return v0

    .line 64
    .end local v10    # "length":J
    :cond_7
    or-int/lit8 v4, v4, 0x2

    .line 65
    goto :goto_4

    .line 62
    :cond_8
    goto :goto_4

    .line 59
    :cond_9
    or-int/lit8 v4, v4, 0x1

    .line 60
    nop

    .line 79
    :cond_a
    :goto_4
    if-eq v6, v2, :cond_1

    .line 80
    int-to-long v10, v7

    :try_start_8
    invoke-virtual {v3, v10, v11}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 81
    .local v10, "skipCount":J
    cmp-long v5, v10, v8

    if-gez v5, :cond_1

    .line 82
    nop

    .line 90
    nop

    .line 91
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 95
    goto :goto_5

    .line 93
    :catch_4
    move-exception v2

    .line 94
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_5
    return v0

    .line 90
    .end local v6    # "paramId":I
    .end local v7    # "len":I
    .end local v10    # "skipCount":J
    :cond_b
    nop

    .line 91
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 95
    :goto_6
    goto :goto_7

    .line 93
    :catch_5
    move-exception v2

    .line 94
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    .end local v2    # "ex":Ljava/io/IOException;
    goto :goto_7

    .line 89
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 86
    :catch_6
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 90
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 91
    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_6

    .line 97
    :goto_7
    const/16 v2, 0xb

    if-ne v4, v2, :cond_c

    .line 98
    return v5

    .line 100
    :cond_c
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v5, "isValid3GPP2PDU() PDU doesn\'t have mandatory paramId"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v0

    .line 90
    :goto_8
    nop

    .line 91
    :try_start_d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 95
    goto :goto_9

    .line 93
    :catch_7
    move-exception v2

    .line 94
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_9
    throw v0

    .line 32
    .end local v1    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v3    # "disIn":Ljava/io/DataInputStream;
    .end local v4    # "verifiedParamId":I
    :cond_d
    :goto_a
    return v0
.end method
