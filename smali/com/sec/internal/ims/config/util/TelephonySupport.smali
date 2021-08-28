.class public Lcom/sec/internal/ims/config/util/TelephonySupport;
.super Ljava/lang/Object;
.source "TelephonySupport.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/sec/internal/ims/config/util/TelephonySupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;
    .locals 10
    .param p0, "strResult"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "res":[B
    const/4 v1, 0x0

    .line 25
    .local v1, "Ck":[B
    const/4 v2, 0x0

    .line 27
    .local v2, "Ik":[B
    const/4 v3, 0x0

    .line 28
    .local v3, "auts":[B
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 29
    .local v4, "result":[B
    if-eqz v4, :cond_5

    .line 31
    const/4 v5, 0x0

    :try_start_0
    aget-byte v6, v4, v5

    const/16 v7, -0x25

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ne v6, v7, :cond_3

    .line 32
    sget-object v6, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    const-string v7, "calculateAkaResponse: in"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    aget-byte v6, v4, v8

    .line 51
    .local v6, "reslen":I
    if-lez v6, :cond_0

    .line 52
    new-array v7, v6, [B

    move-object v0, v7

    .line 53
    invoke-static {v4, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    :cond_0
    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v4, v7

    .line 57
    .local v7, "cklen":I
    if-lez v7, :cond_1

    .line 58
    new-array v8, v7, [B

    move-object v1, v8

    .line 59
    add-int/lit8 v8, v6, 0x3

    invoke-static {v4, v8, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    :cond_1
    add-int/lit8 v8, v6, 0x3

    add-int/2addr v8, v7

    aget-byte v8, v4, v8

    .line 62
    .local v8, "iklen":I
    if-lez v8, :cond_2

    .line 63
    new-array v9, v8, [B

    move-object v2, v9

    .line 64
    add-int/lit8 v9, v6, 0x4

    add-int/2addr v9, v7

    invoke-static {v4, v9, v2, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .end local v6    # "reslen":I
    .end local v7    # "cklen":I
    .end local v8    # "iklen":I
    :cond_2
    goto :goto_0

    :cond_3
    aget-byte v6, v4, v5

    const/16 v7, -0x24

    if-ne v6, v7, :cond_2

    .line 82
    aget-byte v6, v4, v8

    .line 83
    .local v6, "autslen":I
    if-lez v6, :cond_4

    .line 84
    new-array v7, v6, [B

    move-object v3, v7

    .line 85
    invoke-static {v4, v9, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v6    # "autslen":I
    :cond_4
    :goto_0
    goto :goto_1

    .line 88
    :catch_0
    move-exception v5

    .line 89
    .local v5, "e2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    sget-object v6, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v5    # "e2":Ljava/lang/Exception;
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    if-nez v3, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/sec/internal/ims/config/util/AkaResponse;

    invoke-direct {v5, v1, v2, v3, v0}, Lcom/sec/internal/ims/config/util/AkaResponse;-><init>([B[B[B[B)V

    :goto_2
    return-object v5
.end method

.method public static buildMainKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8
    .param p0, "strIdentity"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/sec/internal/ims/config/util/TelephonySupport;->buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;

    move-result-object v0

    .line 99
    .local v0, "akaResponse":Lcom/sec/internal/ims/config/util/AkaResponse;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 101
    .local v2, "identity":[B
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getIk()[B

    move-result-object v3

    .line 102
    .local v3, "ik":[B
    sget-object v4, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IK :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getCk()[B

    move-result-object v4

    .line 104
    .local v4, "ck":[B
    sget-object v5, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CK :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    array-length v1, v2

    array-length v5, v3

    add-int/2addr v1, v5

    array-length v5, v4

    add-int/2addr v1, v5

    .line 109
    .local v1, "ksLen":I
    new-instance v5, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v5, v1}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 110
    .local v5, "byteArrayWriter":Lcom/sec/internal/helper/ByteArrayWriter;
    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 111
    invoke-virtual {v5, v3}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 112
    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 113
    invoke-virtual {v5}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object v6

    return-object v6

    .line 106
    .end local v1    # "ksLen":I
    .end local v5    # "byteArrayWriter":Lcom/sec/internal/helper/ByteArrayWriter;
    :cond_2
    :goto_0
    return-object v1
.end method
