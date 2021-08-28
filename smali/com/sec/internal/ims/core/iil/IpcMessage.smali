.class public Lcom/sec/internal/ims/core/iil/IpcMessage;
.super Ljava/lang/Object;
.source "IpcMessage.java"


# static fields
.field public static final IPC_CMD_CFRM:I = 0x4

.field public static final IPC_CMD_EVENT:I = 0x5

.field public static final IPC_CMD_EXEC:I = 0x1

.field public static final IPC_CMD_GET:I = 0x2

.field public static final IPC_CMD_INDI:I = 0x1

.field public static final IPC_CMD_NOTI:I = 0x3

.field public static final IPC_CMD_RESP:I = 0x2

.field public static final IPC_CMD_SET:I = 0x3

.field public static final IPC_DEBUG_HDR_SIZE:I = 0xc

.field public static final IPC_FROM_IIL:I = 0x1

.field public static final IPC_FROM_RIL:I = 0x0

.field public static final IPC_GEN_CMD:I = 0x80

.field public static final IPC_GEN_ERR_INVALID_STATE:I = 0x8005

.field public static final IPC_GEN_ERR_NONE:I = 0x8000

.field public static final IPC_GEN_ERR_SIM_PIN2_PERM_BLOCKED:I = 0x800e

.field public static final IPC_GEN_PHONE_RES:I = 0x1

.field public static final IPC_HDR_SIZE:I = 0x7

.field public static final IPC_IIL_CHANGE_PREFERRED_NETWORK_TYPE:I = 0x15

.field public static final IPC_IIL_CMD:I = 0x70

.field public static final IPC_IIL_IIL_CONNECTED:I = 0x12

.field public static final IPC_IIL_IMS_SUPPORT_STATE:I = 0x10

.field public static final IPC_IIL_ISIM_LOADED:I = 0x11

.field public static final IPC_IIL_PREFERENCE:I = 0x6

.field public static final IPC_IIL_REGISTRATION:I = 0x1

.field public static final IPC_IIL_RETRYOVER:I = 0xc

.field public static final IPC_IIL_SET_DEREGISTRATION:I = 0xb

.field public static final IPC_IIL_SIP_SUSPEND:I = 0x16

.field public static final IPC_IIL_SSAC_INFO:I = 0xe

.field public static final IPC_IMS_ERR_403_FORBIDDEN:I = 0x8501

.field public static final IPC_IMS_ERR_MAX_RANGE:I = 0x85ff

.field public static final IPC_SS_ERR_MISTYPED_PARAM:I = 0x8212

.field private static final LOG_TAG:Ljava/lang/String; = "IpcMessage"

.field public static final MAX_IPC_HEADER:I = 0x13


# instance fields
.field protected mAsequence:I

.field protected mCmdType:I

.field protected mDir:I

.field protected mIpcBody:[B

.field protected mIpcData:[B

.field protected mIpcHeader:[B

.field protected mLength:I

.field protected mMainCmd:I

.field protected mNetworkType:I

.field protected mSequence:I

.field protected mSubCmd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    .line 101
    iput p2, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    .line 102
    iput p3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    .line 103
    return-void
.end method

.method public static parseIpc([BI)Lcom/sec/internal/ims/core/iil/IpcMessage;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 287
    const-string v0, "IpcMessage"

    const/4 v1, 0x0

    .line 288
    .local v1, "ipcMsg":Lcom/sec/internal/ims/core/iil/IpcMessage;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 289
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 296
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 297
    .local v4, "sequence":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 298
    .local v5, "asequence":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 300
    .local v6, "mainCmd":I
    const/16 v7, 0x70

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    new-instance v7, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-direct {v7}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>()V

    move-object v1, v7

    .line 303
    nop

    .line 308
    :goto_0
    if-eqz v1, :cond_3

    .line 309
    iput v4, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSequence:I

    .line 310
    iput v5, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mAsequence:I

    .line 311
    iput v6, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    .line 312
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    iput v7, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    .line 313
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    .line 314
    iput p1, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mLength:I

    .line 316
    const/4 v7, 0x0

    const/4 v8, 0x7

    if-le p1, v8, :cond_2

    .line 317
    add-int/lit8 v8, p1, -0x7

    new-array v8, v8, [B

    iput-object v8, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 318
    add-int/lit8 v9, p1, -0x7

    invoke-virtual {v3, v8, v7, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    .line 319
    .local v8, "numRead":I
    if-gez v8, :cond_1

    .line 320
    const-string/jumbo v9, "parseIpc: ipcMsg.mIpcBody - the end of the stream has been reached."

    invoke-static {v0, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1
    iget-object v9, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    aget-byte v9, v9, v7

    iput v9, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mNetworkType:I

    .line 325
    .end local v8    # "numRead":I
    :cond_2
    iput v7, v1, Lcom/sec/internal/ims/core/iil/IpcMessage;->mDir:I

    .line 328
    :cond_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    return-object v1

    .line 330
    .end local v4    # "sequence":I
    .end local v5    # "asequence":I
    .end local v6    # "mainCmd":I
    :catch_0
    move-exception v4

    .line 331
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    goto :goto_1

    .line 334
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private subGenCmdStr()Ljava/lang/String;
    .locals 2

    .line 268
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :cond_0
    const-string v0, "IPC_GEN_PHONE_RES"

    return-object v0
.end method

.method private subIilCmdStr()Ljava/lang/String;
    .locals 2

    .line 241
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_0
    const-string v0, "IPC_IIL_IIL_CONNECTED"

    return-object v0

    .line 255
    :pswitch_1
    const-string v0, "IPC_IIL_ISIM_LOADED"

    return-object v0

    .line 253
    :pswitch_2
    const-string v0, "IPC_IIL_IMS_SUPPORT_STATE"

    return-object v0

    .line 261
    :cond_0
    const-string v0, "IPC_IIL_SIP_SUSPEND"

    return-object v0

    .line 259
    :cond_1
    const-string v0, "IPC_IIL_CHANGE_PREFERRED_NETWORK_TYPE"

    return-object v0

    .line 249
    :cond_2
    const-string v0, "IPC_IIL_RETRYOVER"

    return-object v0

    .line 247
    :cond_3
    const-string v0, "IPC_IIL_SET_DEREGISTRATION"

    return-object v0

    .line 251
    :cond_4
    const-string v0, "IPC_IIL_SSAC_INFO"

    return-object v0

    .line 245
    :cond_5
    const-string v0, "IPC_IIL_PREFERENCE"

    return-object v0

    .line 243
    :cond_6
    const-string v0, "IPC_IIL_REGISTRATION"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createIpcMessage()[B
    .locals 6

    .line 127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 128
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x7

    .line 130
    .local v2, "totalLength":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    if-eqz v3, :cond_0

    .line 131
    array-length v3, v3

    add-int/2addr v2, v3

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->makeHeader()Z

    .line 137
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 138
    shr-int/lit8 v3, v2, 0x8

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 139
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcHeader:[B

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 140
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    iget-object v4, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    array-length v4, v4

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 143
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcData:[B

    .line 144
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 145
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed in createIpcMessage() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IpcMessage"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v3    # "ex":Ljava/io/IOException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public dumpHex([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-nez p1, :cond_0

    .line 189
    const-string v1, ""

    return-object v1

    .line 191
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 192
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02X "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode()[B
    .locals 1

    .line 342
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public encodeGeneralResponse(ILcom/sec/internal/ims/core/iil/IpcMessage;)Z
    .locals 6
    .param p1, "ipcErrorCause"    # I
    .param p2, "msg"    # Lcom/sec/internal/ims/core/iil/IpcMessage;

    .line 346
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 347
    .local v0, "data":[B
    iget v1, p2, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 348
    iget v1, p2, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 349
    iget v1, p2, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    .line 351
    const v1, 0x8000

    if-lt p1, v1, :cond_0

    const v1, 0x800e

    if-le p1, v1, :cond_2

    :cond_0
    const v1, 0x8501

    if-lt p1, v1, :cond_1

    const v1, 0x85ff

    if-le p1, v1, :cond_2

    :cond_1
    const v1, 0x8212

    if-eq p1, v1, :cond_2

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeGeneralResponse(): ipcErrorCause is out of range with value ( "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "%04X "

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ), but keep going. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpcMessage"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const p1, 0x8005

    .line 358
    :cond_2
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 359
    const/4 v1, 0x4

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 361
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 362
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->createIpcMessage()[B

    .line 363
    return v3
.end method

.method public getBody()[B
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    return-object v0
.end method

.method public getCmdType()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcData:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mLength:I

    return v0
.end method

.method public getMainCmd()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mNetworkType:I

    return v0
.end method

.method public getSubCmd()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    return v0
.end method

.method public mainCmdStr()Ljava/lang/String;
    .locals 2

    .line 229
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    const-string v0, "IPC_GEN_CMD"

    return-object v0

    .line 231
    :cond_1
    const-string v0, "IPC_IIL_CMD"

    return-object v0
.end method

.method public makeHeader()Z
    .locals 6

    .line 106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 107
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 110
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 111
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 112
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 113
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mSubCmd:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 114
    iget v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 115
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcHeader:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v2, 0x1

    return v2

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed in makeHeader() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IpcMessage"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v3    # "ex":Ljava/io/IOException;
    return v2
.end method

.method public setDir(I)V
    .locals 0
    .param p1, "dir"    # I

    .line 154
    iput p1, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mDir:I

    .line 155
    return-void
.end method

.method public subCmdStr()Ljava/lang/String;
    .locals 2

    .line 277
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->subIilCmdStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->subGenCmdStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mMainCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeStr()Ljava/lang/String;
    .locals 6

    .line 199
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mDir:I

    const-string v1, ")"

    const-string v2, "UNKNOWN("

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_5

    .line 200
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    const-string v0, "EVENT"

    return-object v0

    .line 208
    :cond_1
    const-string v0, "CFRM"

    return-object v0

    .line 206
    :cond_2
    const-string v0, "SET"

    return-object v0

    .line 204
    :cond_3
    const-string v0, "GET"

    return-object v0

    .line 202
    :cond_4
    const-string v0, "EXEC"

    return-object v0

    .line 215
    :cond_5
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mCmdType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_6
    const-string v0, "NOTI"

    return-object v0

    .line 219
    :cond_7
    const-string v0, "RESP"

    return-object v0

    .line 217
    :cond_8
    const-string v0, "INDI"

    return-object v0
.end method
