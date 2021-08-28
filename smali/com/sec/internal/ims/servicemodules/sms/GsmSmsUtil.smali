.class public Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;
.super Ljava/lang/Object;
.source "GsmSmsUtil.java"


# static fields
.field public static final BIT_TP_DCS_CLASS2_SIM_MSG:I = 0x2

.field public static final BIT_TP_PID_SIM_DATA_DOWNLOAD:I = 0x3f

.field public static final CONTENT_TYPE_3GPP:Ljava/lang/String; = "application/vnd.3gpp.sms"

.field private static final IPC_ERR_MEM_CAP_EXCEED:I = 0x8016

.field private static final IPC_ERR_SMS_ME_FULL:I = 0x8080

.field private static final IPC_ERR_SMS_SIM_FULL:I = 0x8081

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_DATA_LEN:I = 0xff

.field private static final NANP_LENGTH:I = 0xa

.field private static final PREFIX_NUMBER_PLUS:Ljava/lang/String; = "011"

.field public static final RIL_CODE_RP_ERROR:I = 0x8000

.field public static final RIL_CODE_SMS_OK_:I = 0x0

.field public static final RP_ACK_N_MS:I = 0x3

.field public static final RP_DATA_MS_N:I = 0x0

.field public static final RP_DATA_N_MS:I = 0x1

.field public static final RP_ERROR_N_MS:I = 0x5

.field public static final RP_ERR_INVALID_MSG:I = 0x5f

.field public static final RP_SMMA:I = 0x6

.field public static final TP_PID_SIM_DATA_DOWNLOAD:I = 0x7f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get3gppPduFromTpdu([BILjava/lang/String;Ljava/lang/String;)[B
    .locals 15
    .param p0, "tPdu"    # [B
    .param p1, "msgRef"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "rpOA"    # Ljava/lang/String;

    .line 56
    move-object v1, p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xff

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v0

    .line 57
    .local v2, "baosOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 58
    .local v3, "dosOut":Ljava/io/DataOutputStream;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v0

    .line 59
    .local v4, "baisIn":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 62
    .local v5, "disIn":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    :try_start_0
    aget-byte v6, v1, v0

    .line 63
    .local v6, "scaLen":B
    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [B

    .line 65
    .local v7, "homeSMSC":[B
    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    .line 66
    .local v8, "len":I
    array-length v9, v7

    if-lt v8, v9, :cond_4

    .line 70
    array-length v9, v1

    add-int/lit8 v10, v6, 0x1

    sub-int/2addr v9, v10

    new-array v9, v9, [B

    .line 72
    .local v9, "pdu":[B
    invoke-virtual {v5, v9}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    .line 73
    .local v10, "readCount":I
    if-ltz v10, :cond_3

    .line 77
    array-length v11, v9

    int-to-byte v11, v11

    .line 78
    .local v11, "tpdu_len":B
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v3, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 81
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 82
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 85
    .local v0, "rp_oa":[B
    if-eqz v0, :cond_2

    .line 88
    array-length v13, v0

    invoke-virtual {v3, v13}, Ljava/io/DataOutputStream;->write(I)V

    .line 89
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 92
    .end local v0    # "rp_oa":[B
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    .local v0, "bcdSmsc":[B
    if-eqz v0, :cond_1

    .line 96
    array-length v13, v0

    invoke-virtual {v3, v13}, Ljava/io/DataOutputStream;->write(I)V

    .line 97
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 98
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 99
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 101
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 102
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 104
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    return-object v13

    .line 94
    :cond_1
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "smsc is null"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dosOut":Ljava/io/DataOutputStream;
    .end local v4    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v5    # "disIn":Ljava/io/DataInputStream;
    .end local p0    # "tPdu":[B
    .end local p1    # "msgRef":I
    .end local p2    # "smsc":Ljava/lang/String;
    .end local p3    # "rpOA":Ljava/lang/String;
    throw v13

    .line 86
    .local v0, "rp_oa":[B
    .restart local v2    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dosOut":Ljava/io/DataOutputStream;
    .restart local v4    # "baisIn":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "disIn":Ljava/io/DataInputStream;
    .restart local p0    # "tPdu":[B
    .restart local p1    # "msgRef":I
    .restart local p2    # "smsc":Ljava/lang/String;
    .restart local p3    # "rpOA":Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "rp_oa is null"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dosOut":Ljava/io/DataOutputStream;
    .end local v4    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v5    # "disIn":Ljava/io/DataInputStream;
    .end local p0    # "tPdu":[B
    .end local p1    # "msgRef":I
    .end local p2    # "smsc":Ljava/lang/String;
    .end local p3    # "rpOA":Ljava/lang/String;
    throw v13

    .line 74
    .end local v0    # "rp_oa":[B
    .end local v11    # "tpdu_len":B
    .restart local v2    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dosOut":Ljava/io/DataOutputStream;
    .restart local v4    # "baisIn":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "disIn":Ljava/io/DataInputStream;
    .restart local p0    # "tPdu":[B
    .restart local p1    # "msgRef":I
    .restart local p2    # "smsc":Ljava/lang/String;
    .restart local p3    # "rpOA":Ljava/lang/String;
    :cond_3
    move/from16 v12, p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v11, "Exception : Fail to Read TPDU from PDU"

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dosOut":Ljava/io/DataOutputStream;
    .end local v4    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v5    # "disIn":Ljava/io/DataInputStream;
    .end local p0    # "tPdu":[B
    .end local p1    # "msgRef":I
    .end local p2    # "smsc":Ljava/lang/String;
    .end local p3    # "rpOA":Ljava/lang/String;
    throw v0

    .line 67
    .end local v9    # "pdu":[B
    .end local v10    # "readCount":I
    .restart local v2    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dosOut":Ljava/io/DataOutputStream;
    .restart local v4    # "baisIn":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "disIn":Ljava/io/DataInputStream;
    .restart local p0    # "tPdu":[B
    .restart local p1    # "msgRef":I
    .restart local p2    # "smsc":Ljava/lang/String;
    .restart local p3    # "rpOA":Ljava/lang/String;
    :cond_4
    move/from16 v12, p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v9, "Exception : Fail to Read Sca from PDU"

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dosOut":Ljava/io/DataOutputStream;
    .end local v4    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v5    # "disIn":Ljava/io/DataInputStream;
    .end local p0    # "tPdu":[B
    .end local p1    # "msgRef":I
    .end local p2    # "smsc":Ljava/lang/String;
    .end local p3    # "rpOA":Ljava/lang/String;
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .end local v6    # "scaLen":B
    .end local v7    # "homeSMSC":[B
    .end local v8    # "len":I
    .restart local v2    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dosOut":Ljava/io/DataOutputStream;
    .restart local v4    # "baisIn":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "disIn":Ljava/io/DataInputStream;
    .restart local p0    # "tPdu":[B
    .restart local p1    # "msgRef":I
    .restart local p2    # "smsc":Ljava/lang/String;
    .restart local p3    # "rpOA":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v12, p1

    :goto_1
    move-object v6, v0

    .line 107
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 108
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    goto :goto_2

    .line 109
    :catch_2
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public static get3gppRPError(Ljava/lang/String;[B)I
    .locals 3
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 136
    if-eqz p0, :cond_2

    const-string v0, "application/vnd.3gpp.sms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    if-ne v0, v2, :cond_1

    .line 142
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x7f

    .line 143
    .local v0, "errorCode":I
    return v0

    .line 146
    .end local v0    # "errorCode":I
    :cond_1
    return v1

    .line 139
    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private static get3gppTpdu([B)[B
    .locals 13
    .param p0, "pdu"    # [B

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 189
    .local v0, "baosOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 190
    .local v1, "dosOut":Ljava/io/DataOutputStream;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    .local v2, "baisIn":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 193
    .local v3, "disIn":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 196
    .local v4, "len":I
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    aget-byte v8, p0, v6

    if-ne v5, v8, :cond_2

    .line 201
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 202
    .local v5, "tmpByte":B
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v5, v6

    .line 203
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v5, v6

    .line 204
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v5, v6

    .line 205
    and-int/lit16 v4, v5, 0xff

    .line 206
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v4, :cond_0

    .line 208
    nop

    .line 314
    nop

    .line 315
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v6

    .line 321
    .local v6, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_0
    return-object v7

    .line 211
    :cond_0
    :try_start_2
    new-array v6, v4, [B

    .line 213
    .local v6, "tb":[B
    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    .line 214
    .local v8, "length":I
    if-ltz v8, :cond_1

    .line 217
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 219
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    nop

    .line 315
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 322
    goto :goto_1

    .line 320
    :catch_1
    move-exception v9

    .line 321
    .local v9, "ex":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    .end local v9    # "ex":Ljava/io/IOException;
    :goto_1
    return-object v7

    .line 215
    :cond_1
    :try_start_4
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Fail to read TPDU from PDU"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dosOut":Ljava/io/DataOutputStream;
    .end local v2    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v3    # "disIn":Ljava/io/DataInputStream;
    .end local v4    # "len":I
    .end local p0    # "pdu":[B
    throw v9

    .line 220
    .end local v5    # "tmpByte":B
    .end local v6    # "tb":[B
    .end local v8    # "length":I
    .restart local v0    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "dosOut":Ljava/io/DataOutputStream;
    .restart local v2    # "baisIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "disIn":Ljava/io/DataInputStream;
    .restart local v4    # "len":I
    .restart local p0    # "pdu":[B
    :cond_2
    aget-byte v5, p0, v6

    const/4 v8, 0x1

    if-ne v8, v5, :cond_b

    .line 229
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 230
    .restart local v5    # "tmpByte":B
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    move v5, v9

    .line 231
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    move v5, v9

    .line 232
    and-int/lit16 v4, v5, 0xff

    .line 233
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v9
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v9, v4, :cond_3

    .line 235
    nop

    .line 314
    nop

    .line 315
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 322
    goto :goto_2

    .line 320
    :catch_2
    move-exception v6

    .line 321
    .local v6, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_2
    return-object v7

    .line 238
    :cond_3
    add-int/lit8 v9, v4, 0x1

    :try_start_6
    new-array v9, v9, [B

    .line 239
    .local v9, "ori_addr":[B
    invoke-virtual {v3, v9, v8, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 240
    .local v8, "readCount":I
    if-gez v8, :cond_4

    .line 242
    nop

    .line 314
    nop

    .line 315
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 322
    goto :goto_3

    .line 320
    :catch_3
    move-exception v6

    .line 321
    .restart local v6    # "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 242
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_3
    return-object v7

    .line 245
    :cond_4
    :try_start_8
    aput-byte v5, v9, v6

    .line 246
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-lez v6, :cond_a

    .line 250
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v5, v6

    .line 251
    and-int/lit16 v4, v5, 0xff

    .line 252
    if-lez v4, :cond_6

    .line 253
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v6
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ge v6, v4, :cond_5

    .line 255
    nop

    .line 314
    nop

    .line 315
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 322
    goto :goto_4

    .line 320
    :catch_4
    move-exception v6

    .line 321
    .restart local v6    # "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 255
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_4
    return-object v7

    .line 257
    :cond_5
    :try_start_a
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 260
    :cond_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v6
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-gtz v6, :cond_7

    .line 262
    nop

    .line 314
    nop

    .line 315
    :try_start_b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 322
    goto :goto_5

    .line 320
    :catch_5
    move-exception v6

    .line 321
    .restart local v6    # "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 262
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_5
    return-object v7

    .line 265
    :cond_7
    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v5, v6

    .line 266
    and-int/lit16 v4, v5, 0xff

    .line 267
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v6
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-ge v6, v4, :cond_8

    .line 269
    nop

    .line 314
    nop

    .line 315
    :try_start_d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 322
    goto :goto_6

    .line 320
    :catch_6
    move-exception v6

    .line 321
    .restart local v6    # "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 269
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_6
    return-object v7

    .line 272
    :cond_8
    :try_start_e
    new-array v6, v4, [B

    .line 273
    .local v6, "tpdu":[B
    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    .line 274
    .local v10, "count":I
    if-ltz v10, :cond_9

    .line 277
    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 278
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 280
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 314
    nop

    .line 315
    :try_start_f
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 322
    goto :goto_7

    .line 320
    :catch_7
    move-exception v11

    .line 321
    .local v11, "ex":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    .end local v11    # "ex":Ljava/io/IOException;
    :goto_7
    return-object v7

    .line 275
    :cond_9
    :try_start_10
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Exception : fail to read tpdu"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dosOut":Ljava/io/DataOutputStream;
    .end local v2    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v3    # "disIn":Ljava/io/DataInputStream;
    .end local v4    # "len":I
    .end local p0    # "pdu":[B
    throw v11

    .line 247
    .end local v6    # "tpdu":[B
    .end local v10    # "count":I
    .restart local v0    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "dosOut":Ljava/io/DataOutputStream;
    .restart local v2    # "baisIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "disIn":Ljava/io/DataInputStream;
    .restart local v4    # "len":I
    .restart local p0    # "pdu":[B
    :cond_a
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v10, "EOF RPDU. before reading RP-DA len"

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dosOut":Ljava/io/DataOutputStream;
    .end local v2    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v3    # "disIn":Ljava/io/DataInputStream;
    .end local v4    # "len":I
    .end local p0    # "pdu":[B
    throw v6

    .line 281
    .end local v5    # "tmpByte":B
    .end local v8    # "readCount":I
    .end local v9    # "ori_addr":[B
    .restart local v0    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "dosOut":Ljava/io/DataOutputStream;
    .restart local v2    # "baisIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "disIn":Ljava/io/DataInputStream;
    .restart local v4    # "len":I
    .restart local p0    # "pdu":[B
    :cond_b
    const/4 v5, 0x5

    aget-byte v6, p0, v6

    if-ne v5, v6, :cond_10

    .line 284
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 285
    .restart local v5    # "tmpByte":B
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v5, v6

    .line 286
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v5, v6

    .line 287
    and-int/lit16 v4, v5, 0xff

    .line 288
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v6
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-ge v6, v4, :cond_c

    .line 290
    nop

    .line 314
    nop

    .line 315
    :try_start_11
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 322
    goto :goto_8

    .line 320
    :catch_8
    move-exception v6

    .line 321
    .local v6, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 290
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_8
    return-object v7

    .line 293
    :cond_c
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    if-ge v6, v4, :cond_d

    .line 294
    :try_start_12
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    move v5, v8

    .line 293
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 296
    .end local v6    # "i":I
    :cond_d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v6

    move v4, v6

    .line 297
    if-lez v4, :cond_f

    .line 298
    new-array v6, v4, [B

    .line 299
    .local v6, "tpdu":[B
    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    .line 300
    .restart local v8    # "readCount":I
    if-ltz v8, :cond_e

    .line 303
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_a

    .line 301
    :cond_e
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Exception : Reading TPDU from RIL PDU"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dosOut":Ljava/io/DataOutputStream;
    .end local v2    # "baisIn":Ljava/io/ByteArrayInputStream;
    .end local v3    # "disIn":Ljava/io/DataInputStream;
    .end local v4    # "len":I
    .end local p0    # "pdu":[B
    throw v9

    .line 306
    .end local v6    # "tpdu":[B
    .end local v8    # "readCount":I
    .restart local v0    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "dosOut":Ljava/io/DataOutputStream;
    .restart local v2    # "baisIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "disIn":Ljava/io/DataInputStream;
    .restart local v4    # "len":I
    .restart local p0    # "pdu":[B
    :cond_f
    :goto_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 314
    nop

    .line 315
    :try_start_13
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 322
    goto :goto_b

    .line 320
    :catch_9
    move-exception v7

    .line 321
    .local v7, "ex":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    .end local v7    # "ex":Ljava/io/IOException;
    :goto_b
    return-object v6

    .line 314
    .end local v5    # "tmpByte":B
    :cond_10
    nop

    .line 315
    :try_start_14
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 322
    :goto_c
    goto :goto_d

    .line 320
    :catch_a
    move-exception v5

    .line 321
    .local v5, "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    .end local v5    # "ex":Ljava/io/IOException;
    goto :goto_d

    .line 313
    :catchall_0
    move-exception v5

    goto :goto_e

    .line 310
    :catch_b
    move-exception v5

    .line 311
    .local v5, "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 314
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 315
    :try_start_16
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_c

    .line 308
    :catch_c
    move-exception v5

    .line 309
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_17
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 314
    .end local v5    # "e":Ljava/lang/RuntimeException;
    nop

    .line 315
    :try_start_18
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    goto :goto_c

    .line 324
    :goto_d
    return-object v7

    .line 314
    :goto_e
    nop

    .line 315
    :try_start_19
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 317
    nop

    .line 318
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    .line 322
    goto :goto_f

    .line 320
    :catch_d
    move-exception v6

    .line 321
    .local v6, "ex":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_f
    throw v5
.end method

.method public static get3gppTpduFromPdu([B)[B
    .locals 2
    .param p0, "pdu"    # [B

    .line 179
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpdu([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverReportFromPdu(II[BII)[B
    .locals 10
    .param p0, "phoneId"    # I
    .param p1, "rpRef"    # I
    .param p2, "data"    # [B
    .param p3, "tpPid"    # I
    .param p4, "tpDcs"    # I

    .line 487
    const/4 v0, 0x0

    if-eqz p2, :cond_f

    array-length v1, p2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 490
    :cond_0
    const/4 v1, 0x1

    aget-byte v3, p2, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x100

    const/4 v5, 0x0

    aget-byte v6, p2, v5

    and-int/2addr v6, v4

    add-int/2addr v3, v6

    .line 491
    .local v3, "reason":I
    sget-object v6, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeliverReportFromPdu - reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v4, v6

    .line 495
    .local v4, "baosOut":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 497
    .local v6, "dosOut":Ljava/io/DataOutputStream;
    const/16 v7, 0x41

    const/4 v8, 0x3

    if-eqz v3, :cond_4

    const v9, 0x8000

    if-ge v3, v9, :cond_1

    goto :goto_0

    .line 544
    :cond_1
    if-le v3, v9, :cond_e

    .line 546
    :try_start_0
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 547
    int-to-byte v2, p1

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 548
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 549
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRPErrCause(I)B

    move-result v1

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 552
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 553
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    .line 554
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 555
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 556
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 557
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPErrCause(I)B

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 558
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_2

    .line 559
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 562
    :cond_3
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_2

    .line 499
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_4
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 500
    int-to-byte v1, p1

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 501
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 502
    aget-byte v1, p2, v8

    if-lez v1, :cond_5

    array-length v1, p2

    aget-byte v2, p2, v8

    if-lt v1, v2, :cond_5

    .line 504
    array-length v1, p2

    sub-int/2addr v1, v8

    invoke-virtual {v6, p2, v8, v1}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_2

    .line 507
    :cond_5
    if-eqz v3, :cond_6

    .line 508
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1

    .line 510
    :cond_6
    const/4 v1, 0x2

    .line 511
    .local v1, "tpduLen":I
    if-eqz p3, :cond_7

    .line 512
    add-int/lit8 v1, v1, 0x1

    .line 514
    :cond_7
    if-eqz p4, :cond_8

    .line 515
    add-int/lit8 v1, v1, 0x1

    .line 517
    :cond_8
    int-to-byte v2, v1

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 521
    .end local v1    # "tpduLen":I
    :goto_1
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 522
    if-eqz v3, :cond_9

    .line 524
    and-int/lit16 v1, v3, 0xff

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 527
    :cond_9
    const/4 v1, 0x0

    .line 528
    .local v1, "tpPI":B
    if-eqz p3, :cond_a

    .line 529
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 531
    :cond_a
    if-eqz p4, :cond_b

    .line 532
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 534
    :cond_b
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 536
    if-eqz p3, :cond_c

    .line 537
    int-to-byte v2, p3

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 540
    :cond_c
    if-eqz p4, :cond_d

    .line 541
    int-to-byte v2, p4

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 543
    .end local v1    # "tpPI":B
    :cond_d
    nop

    .line 565
    :cond_e
    :goto_2
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 566
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 567
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    goto :goto_3

    .line 570
    :catch_1
    move-exception v2

    .line 571
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 573
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 575
    .end local v1    # "e":Ljava/io/IOException;
    return-object v0

    .line 488
    .end local v3    # "reason":I
    .end local v4    # "baosOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dosOut":Ljava/io/DataOutputStream;
    :cond_f
    :goto_4
    return-object v0
.end method

.method private static getRPErrCause(I)B
    .locals 1
    .param p0, "ipcReasonCode"    # I

    .line 579
    sparse-switch p0, :sswitch_data_0

    .line 586
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0

    .line 584
    :sswitch_0
    const/16 v0, 0x6f

    return v0

    .line 582
    :sswitch_1
    const/16 v0, 0x16

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8016 -> :sswitch_1
        0x8080 -> :sswitch_1
        0x8081 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRilRPErrCode(I)I
    .locals 1
    .param p0, "rpErr"    # I

    .line 483
    const v0, 0x8000

    add-int/2addr v0, p0

    return v0
.end method

.method public static getRpSMMAPdu(I)[B
    .locals 3
    .param p0, "rpRef"    # I

    .line 375
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 376
    .local v0, "pdu":[B
    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 377
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 378
    return-object v0
.end method

.method public static getSCAFromPdu([B)Ljava/lang/String;
    .locals 4
    .param p0, "pdu"    # [B

    .line 118
    const-string v0, ""

    if-nez p0, :cond_0

    .line 119
    return-object v0

    .line 122
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 123
    .local v1, "len":I
    if-lez v1, :cond_3

    array-length v2, p0

    if-ge v2, v1, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "sca":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 132
    return-object v0

    .line 129
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[getSCAFromPdu] Exception : sca is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v0    # "sca":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0
.end method

.method protected static getSca(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .locals 3
    .param p0, "sca"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 740
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_1

    .line 743
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "011"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 745
    :cond_0
    if-eqz p1, :cond_3

    .line 747
    move-object p0, p1

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 750
    if-eqz p3, :cond_2

    .line 751
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSmscSet()Ljava/lang/String;

    move-result-object p0

    .line 753
    :cond_2
    if-nez p0, :cond_3

    .line 754
    const-string p0, "4444"

    .line 758
    :cond_3
    :goto_0
    return-object p0
.end method

.method protected static getScaForRpDa(Z[BLjava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 4
    .param p0, "isSMMA"    # Z
    .param p1, "pdu"    # [B
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 721
    if-nez p0, :cond_0

    .line 722
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getSCAFromPdu([B)Ljava/lang/String;

    move-result-object v0

    .local v0, "sca":Ljava/lang/String;
    goto :goto_0

    .line 724
    .end local v0    # "sca":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 726
    .restart local v0    # "sca":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 727
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq p3, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p3, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_1

    goto :goto_1

    .line 730
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "pdu is malformed. no SCA"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v1, "noSCA"

    return-object v1

    .line 728
    :cond_2
    :goto_1
    const-string v0, "7"

    .line 735
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSMSOverIMS: SmscAddr FromPdu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-object v0
.end method

.method protected static getScaFromPsismscPSI(Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Landroid/telephony/TelephonyManager;ILcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sca"    # Ljava/lang/String;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "tm"    # Landroid/telephony/TelephonyManager;
    .param p4, "phoneId"    # I
    .param p5, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 763
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v1, ""

    const-string/jumbo v2, "there is no SMS_PSI"

    const-string v3, "PSISMSC: "

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_0

    goto/16 :goto_1

    .line 777
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_4

    .line 779
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSmsPsi()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "psi":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 784
    :cond_1
    move-object p1, v0

    .line 785
    .end local v0    # "psi":Ljava/lang/String;
    :cond_2
    goto/16 :goto_4

    .line 781
    .restart local v0    # "psi":Ljava/lang/String;
    :cond_3
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v1, "noPSI"

    return-object v1

    .line 785
    .end local v0    # "psi":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_2

    .line 788
    invoke-static {p3, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getPsismsc(Landroid/telephony/TelephonyManager;I)[B

    move-result-object v0

    .line 789
    .local v0, "psismsc":[B
    if-nez v0, :cond_5

    .line 790
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "there is no PSISMSC"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 792
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 793
    .local v1, "t_sca":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    .line 794
    const/4 v4, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 796
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 797
    move-object p1, v1

    .line 798
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 765
    .end local v0    # "psismsc":[B
    .end local v1    # "t_sca":Ljava/lang/String;
    :cond_7
    :goto_1
    invoke-static {p3, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getPsismsc(Landroid/telephony/TelephonyManager;I)[B

    move-result-object v0

    .line 766
    .restart local v0    # "psismsc":[B
    if-eqz v0, :cond_8

    .line 767
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, v1

    .line 768
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 769
    :cond_8
    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_b

    .line 770
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-static {p0, v3, p4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSmsPsi()Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, "psi":Ljava/lang/String;
    if-eqz v3, :cond_a

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 774
    :cond_9
    move-object p1, v3

    goto :goto_3

    .line 772
    :cond_a
    :goto_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v0    # "psismsc":[B
    .end local v3    # "psi":Ljava/lang/String;
    :cond_b
    :goto_3
    nop

    .line 803
    :cond_c
    :goto_4
    return-object p1
.end method

.method private static getTPErrCause(I)B
    .locals 1
    .param p0, "ipcReasonCode"    # I

    .line 591
    sparse-switch p0, :sswitch_data_0

    .line 598
    const/4 v0, 0x0

    return v0

    .line 593
    :sswitch_0
    const/16 v0, -0x2d

    return v0

    .line 596
    :sswitch_1
    const/16 v0, -0x30

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8016 -> :sswitch_1
        0x8080 -> :sswitch_0
        0x8081 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getTPMRFromPdu([B)I
    .locals 4
    .param p0, "pdu"    # [B

    .line 382
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 383
    return v0

    .line 385
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 386
    .local v1, "addr_len":I
    array-length v2, p0

    add-int/lit8 v3, v1, 0x2

    if-ge v2, v3, :cond_1

    .line 387
    return v0

    .line 389
    :cond_1
    add-int/lit8 v0, v1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getTPPidDcsFromPdu([B)[B
    .locals 11
    .param p0, "tPdu"    # [B

    .line 603
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 604
    return-object v0

    .line 606
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 608
    .local v2, "tpPidDcs":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 609
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 612
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 613
    .local v5, "rpOriAddrLen":I
    array-length v6, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v5, 0x2

    if-ge v6, v7, :cond_1

    .line 614
    nop

    .line 640
    nop

    .line 642
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    goto :goto_0

    .line 643
    :catch_0
    move-exception v1

    .line 644
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0

    .line 617
    :cond_1
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 619
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 621
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 625
    .local v6, "len":I
    and-int/lit16 v7, v6, 0xff

    .line 626
    .local v7, "tpOriAddrLen":I
    add-int/lit8 v8, v7, 0x1

    div-int/2addr v8, v1

    add-int/2addr v8, v0

    .line 627
    .end local v7    # "tpOriAddrLen":I
    .local v8, "tpOriAddrLen":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v7, v8, 0x2

    if-ge v1, v7, :cond_2

    .line 628
    nop

    .line 640
    nop

    .line 642
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 645
    goto :goto_1

    .line 643
    :catch_1
    move-exception v0

    .line 644
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 628
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v2

    .line 630
    :cond_2
    int-to-long v9, v8

    :try_start_4
    invoke-virtual {v4, v9, v10}, Ljava/io/DataInputStream;->skip(J)J

    .line 635
    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    aput-byte v7, v2, v1

    .line 636
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    aput-byte v1, v2, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 640
    .end local v5    # "rpOriAddrLen":I
    .end local v6    # "len":I
    .end local v8    # "tpOriAddrLen":I
    nop

    .line 642
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 640
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 637
    :catch_2
    move-exception v0

    .line 638
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 640
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 642
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 645
    :goto_2
    goto :goto_3

    .line 643
    :catch_3
    move-exception v0

    .line 644
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 649
    :goto_3
    return-object v2

    .line 642
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 645
    goto :goto_5

    .line 643
    :catch_4
    move-exception v1

    .line 644
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 647
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5
    throw v0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static isAck(Ljava/lang/String;[B)Z
    .locals 5
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 150
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 151
    return v0

    .line 153
    :cond_0
    if-eqz p0, :cond_5

    .line 157
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 158
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAck: contentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    const-string v2, "application/vnd.3gpp.sms"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    if-eqz p1, :cond_2

    const/4 v2, 0x3

    aget-byte v3, p1, v1

    if-ne v2, v3, :cond_2

    .line 166
    return v0

    .line 167
    :cond_2
    if-nez p1, :cond_4

    .line 168
    return v0

    .line 171
    :cond_3
    if-nez p1, :cond_4

    .line 172
    return v0

    .line 175
    :cond_4
    return v1

    .line 154
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contentType is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAdminMsg([B)Z
    .locals 4
    .param p0, "tPdu"    # [B

    .line 711
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPPidDcsFromPdu([B)[B

    move-result-object v0

    .line 712
    .local v0, "tpPidDcs":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-byte v2, v0, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_0

    .line 713
    const/4 v1, 0x1

    return v1

    .line 715
    :cond_0
    return v1
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 658
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "retVal":Z
    if-eqz p0, :cond_1

    .line 680
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 681
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 682
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    const/4 v0, 0x1

    .line 684
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 685
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 686
    .local v3, "c":C
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 687
    const/4 v0, 0x0

    .line 688
    goto :goto_1

    .line 684
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public static isRPErrorForRetransmission(I)Z
    .locals 1
    .param p0, "rpErrCause"    # I

    .line 698
    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x62

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    .line 706
    const/4 v0, 0x0

    return v0

    .line 704
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isStatusReport([B)Z
    .locals 4
    .param p0, "pdu"    # [B

    .line 442
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 443
    return v0

    .line 445
    :cond_0
    aget-byte v1, p0, v0

    .line 446
    .local v1, "addr_len":I
    array-length v2, p0

    add-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_1

    .line 447
    return v0

    .line 449
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 450
    const/4 v0, 0x1

    return v0

    .line 452
    :cond_2
    return v0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 665
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 666
    const/4 v0, 0x1

    return v0

    .line 668
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static makeRPErrorPdu([B)[B
    .locals 5
    .param p0, "pdu"    # [B

    .line 328
    const/16 v0, 0xff

    .line 329
    .local v0, "rpRef":I
    array-length v1, p0

    const/4 v2, 0x1

    const/16 v3, 0xff

    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 330
    aget-byte v1, p0, v2

    and-int/lit16 v0, v1, 0xff

    .line 333
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 334
    .local v1, "baosOut":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 336
    .local v3, "dosOut":Ljava/io/DataOutputStream;
    const/4 v4, 0x5

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 337
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 338
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 339
    const/16 v2, 0x5f

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 340
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    nop

    .line 346
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    goto :goto_0

    .line 348
    :catch_0
    move-exception v4

    .line 349
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_0
    return-object v2

    .line 344
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 341
    :catch_1
    move-exception v2

    .line 342
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 346
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 350
    goto :goto_1

    .line 348
    :catch_2
    move-exception v2

    .line 349
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    .end local v2    # "ex":Ljava/io/IOException;
    nop

    .line 352
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 345
    :goto_2
    nop

    .line 346
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 350
    goto :goto_3

    .line 348
    :catch_3
    move-exception v4

    .line 349
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_3
    throw v2
.end method

.method public static removeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "remoteAddr"    # Ljava/lang/String;

    .line 407
    if-nez p0, :cond_0

    .line 408
    const/4 v0, 0x0

    return-object v0

    .line 410
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "trimmedAddr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 413
    return-object p0

    .line 416
    :cond_1
    const-string/jumbo v1, "sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 417
    const-string/jumbo v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 421
    :cond_2
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 422
    return-object p0

    .line 425
    :cond_3
    const-string/jumbo v3, "sip:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    const-string/jumbo v3, "tel:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    .line 426
    return-object p0

    .line 429
    :cond_4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 430
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_5

    .line 431
    return-object p0

    .line 433
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v1, v3, :cond_6

    .line 434
    return-object p0

    .line 436
    :cond_6
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 418
    .end local v1    # "index":I
    :cond_7
    :goto_0
    return-object v0
.end method

.method public static removeSipPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "addr"    # Ljava/lang/String;

    .line 393
    if-nez p0, :cond_0

    .line 394
    const/4 v0, 0x0

    return-object v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 397
    return-object p0

    .line 399
    :cond_1
    move-object v0, p0

    .line 400
    .local v0, "trimAddr":Ljava/lang/String;
    const-string/jumbo v2, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_3
    return-object v0
.end method

.method public static set3gppTPRD([B)V
    .locals 4
    .param p0, "pdu"    # [B

    .line 457
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 459
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x0

    .line 462
    .local v0, "index":I
    const/4 v2, 0x0

    .line 464
    .local v2, "len":I
    const/4 v3, 0x2

    aget-byte v2, p0, v3

    .line 466
    add-int/lit8 v0, v2, 0x3

    .line 467
    array-length v3, p0

    if-ge v3, v0, :cond_1

    .line 468
    return-void

    .line 471
    :cond_1
    aget-byte v2, p0, v0

    .line 472
    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v2

    .line 473
    .end local v0    # "index":I
    .local v3, "index":I
    array-length v0, p0

    if-ge v0, v3, :cond_2

    .line 474
    return-void

    .line 477
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 479
    aget-byte v0, p0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    .line 480
    return-void
.end method

.method public static trimSipAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "remoteAddr"    # Ljava/lang/String;

    .line 356
    if-nez p0, :cond_0

    .line 357
    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_0
    move-object v0, p0

    .line 361
    .local v0, "trimAddr":Ljava/lang/String;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_2
    return-object v0
.end method
