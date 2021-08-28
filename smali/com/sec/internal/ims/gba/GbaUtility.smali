.class public Lcom/sec/internal/ims/gba/GbaUtility;
.super Ljava/lang/Object;
.source "GbaUtility.java"


# static fields
.field private static final ALGORITHM_HMAC_SHA_256:Ljava/lang/String; = "HmacSHA256"

.field private static final TAG:Ljava/lang/String; = "GbaUtility"

.field private static final TRANSFER_BASE:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate([B[B)[B
    .locals 4
    .param p0, "paramKey"    # [B
    .param p1, "paramS"    # [B

    .line 258
    const-string v0, "GBA ME KEY Algo Calculation encountered an error"

    :try_start_0
    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 259
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 260
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 262
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 267
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 269
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 264
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static calculateKs([B[B)[B
    .locals 3
    .param p0, "ck"    # [B
    .param p1, "ik"    # [B

    .line 208
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 210
    .local v0, "ksLen":I
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 212
    .local v1, "byteArrayWriter":Lcom/sec/internal/helper/ByteArrayWriter;
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 213
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 215
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object v2

    return-object v2
.end method

.method private static calculateNafId([B[B)[B
    .locals 3
    .param p0, "fqdn"    # [B
    .param p1, "uaSecurityProtocolId"    # [B

    .line 196
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 198
    .local v0, "len":I
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 200
    .local v1, "byteArrayWriter":Lcom/sec/internal/helper/ByteArrayWriter;
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 201
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 203
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object v2

    return-object v2
.end method

.method private static calculateS([B[B[B[B[B[B[B[B[B)[B
    .locals 3
    .param p0, "Fc"    # [B
    .param p1, "p0"    # [B
    .param p2, "l0"    # [B
    .param p3, "p1"    # [B
    .param p4, "l1"    # [B
    .param p5, "p2"    # [B
    .param p6, "l2"    # [B
    .param p7, "p3"    # [B
    .param p8, "l3"    # [B

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "sLen":I
    array-length v1, p0

    add-int/2addr v0, v1

    .line 225
    array-length v1, p1

    add-int/2addr v0, v1

    .line 226
    array-length v1, p2

    add-int/2addr v0, v1

    .line 228
    array-length v1, p3

    add-int/2addr v0, v1

    .line 229
    array-length v1, p4

    add-int/2addr v0, v1

    .line 231
    array-length v1, p5

    add-int/2addr v0, v1

    .line 232
    array-length v1, p6

    add-int/2addr v0, v1

    .line 234
    array-length v1, p7

    add-int/2addr v0, v1

    .line 235
    array-length v1, p8

    add-int/2addr v0, v1

    .line 237
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 238
    .local v1, "byteArrayWriter":Lcom/sec/internal/helper/ByteArrayWriter;
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 240
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 241
    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 243
    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 244
    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 246
    invoke-virtual {v1, p5}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 247
    invoke-virtual {v1, p6}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 249
    invoke-virtual {v1, p7}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 250
    invoke-virtual {v1, p8}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 252
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object v2

    return-object v2
.end method

.method public static convertCipherSuite(Ljava/lang/String;)[B
    .locals 3
    .param p0, "cipher"    # Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertCipherSuite Cipher Suite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbaUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 58
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    return-object v0

    .line 63
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "TLS_AES_128_GCM_SHA256"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_8
    const-string v2, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_9
    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_a
    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_b
    const-string v2, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_c
    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_d
    const-string v2, "TLS_AES_256_GCM_SHA384"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xe

    goto :goto_0

    :sswitch_e
    const-string v2, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_f
    const-string v2, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_10
    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xd

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 116
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    .local v0, "result":[B
    goto/16 :goto_1

    .line 113
    .end local v0    # "result":[B
    :pswitch_0
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    .line 114
    .restart local v0    # "result":[B
    goto/16 :goto_1

    .line 110
    .end local v0    # "result":[B
    :pswitch_1
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    .line 111
    .restart local v0    # "result":[B
    goto :goto_1

    .line 107
    .end local v0    # "result":[B
    :pswitch_2
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    .line 108
    .restart local v0    # "result":[B
    goto :goto_1

    .line 104
    .end local v0    # "result":[B
    :pswitch_3
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    .line 105
    .restart local v0    # "result":[B
    goto :goto_1

    .line 101
    .end local v0    # "result":[B
    :pswitch_4
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    .line 102
    .restart local v0    # "result":[B
    goto :goto_1

    .line 98
    .end local v0    # "result":[B
    :pswitch_5
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    .line 99
    .restart local v0    # "result":[B
    goto :goto_1

    .line 95
    .end local v0    # "result":[B
    :pswitch_6
    new-array v0, v1, [B

    fill-array-data v0, :array_8

    .line 96
    .restart local v0    # "result":[B
    goto :goto_1

    .line 92
    .end local v0    # "result":[B
    :pswitch_7
    new-array v0, v1, [B

    fill-array-data v0, :array_9

    .line 93
    .restart local v0    # "result":[B
    goto :goto_1

    .line 89
    .end local v0    # "result":[B
    :pswitch_8
    new-array v0, v1, [B

    fill-array-data v0, :array_a

    .line 90
    .restart local v0    # "result":[B
    goto :goto_1

    .line 86
    .end local v0    # "result":[B
    :pswitch_9
    new-array v0, v1, [B

    fill-array-data v0, :array_b

    .line 87
    .restart local v0    # "result":[B
    goto :goto_1

    .line 83
    .end local v0    # "result":[B
    :pswitch_a
    new-array v0, v1, [B

    fill-array-data v0, :array_c

    .line 84
    .restart local v0    # "result":[B
    goto :goto_1

    .line 80
    .end local v0    # "result":[B
    :pswitch_b
    new-array v0, v1, [B

    fill-array-data v0, :array_d

    .line 81
    .restart local v0    # "result":[B
    goto :goto_1

    .line 77
    .end local v0    # "result":[B
    :pswitch_c
    new-array v0, v1, [B

    fill-array-data v0, :array_e

    .line 78
    .restart local v0    # "result":[B
    goto :goto_1

    .line 74
    .end local v0    # "result":[B
    :pswitch_d
    new-array v0, v1, [B

    fill-array-data v0, :array_f

    .line 75
    .restart local v0    # "result":[B
    goto :goto_1

    .line 71
    .end local v0    # "result":[B
    :pswitch_e
    new-array v0, v1, [B

    fill-array-data v0, :array_10

    .line 72
    .restart local v0    # "result":[B
    goto :goto_1

    .line 68
    .end local v0    # "result":[B
    :pswitch_f
    new-array v0, v1, [B

    fill-array-data v0, :array_11

    .line 69
    .restart local v0    # "result":[B
    goto :goto_1

    .line 65
    .end local v0    # "result":[B
    :pswitch_10
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    .line 66
    .restart local v0    # "result":[B
    nop

    .line 120
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7d25cc59 -> :sswitch_10
        -0x6c6f0f7b -> :sswitch_f
        -0x6472b983 -> :sswitch_e
        -0x328677af -> :sswitch_d
        -0x2e6258c5 -> :sswitch_c
        -0x2413cc72 -> :sswitch_b
        -0x1b2962d9 -> :sswitch_a
        -0x19cb2c95 -> :sswitch_9
        -0x14382a7d -> :sswitch_8
        -0x130575dd -> :sswitch_7
        0x2f6cfb87 -> :sswitch_6
        0x2f75f1d1 -> :sswitch_5
        0x33b584ff -> :sswitch_4
        0x3632b23f -> :sswitch_3
        0x52551e61 -> :sswitch_2
        0x7cedad1b -> :sswitch_1
        0x7d4f1ff6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x2ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x2ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x13t
        0x3t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x13t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x13t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x40t
        0x30t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0xat
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x35t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x0t
        0x2ft
    .end array-data

    nop

    :array_9
    .array-data 1
        0x0t
        -0x64t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x0t
        0x39t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x0t
        0x33t
    .end array-data

    nop

    :array_c
    .array-data 1
        -0x40t
        0x14t
    .end array-data

    nop

    :array_d
    .array-data 1
        -0x40t
        0x13t
    .end array-data

    nop

    :array_e
    .array-data 1
        -0x40t
        0x9t
    .end array-data

    nop

    :array_f
    .array-data 1
        -0x40t
        0xat
    .end array-data

    nop

    :array_10
    .array-data 1
        0x0t
        -0x62t
    .end array-data

    nop

    :array_11
    .array-data 1
        -0x40t
        0x2ft
    .end array-data

    nop

    :array_12
    .array-data 1
        -0x40t
        0x2bt
    .end array-data
.end method

.method private static getByteArrayForLength(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 50
    .local v0, "content":[B
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 51
    div-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 52
    return-object v0
.end method

.method public static getNafId(Ljava/lang/String;)[B
    .locals 5
    .param p0, "fqdn"    # Ljava/lang/String;

    .line 304
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "realms":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 306
    .local v1, "nafId":[B
    const/4 v2, 0x1

    aget-object v3, v0, v2

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    aget-object v2, v0, v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "token":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 309
    .end local v2    # "token":[Ljava/lang/String;
    goto :goto_0

    .line 310
    :cond_0
    aget-object v2, v0, v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 312
    :goto_0
    return-object v1
.end method

.method public static getNafPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "nafUri":Ljava/net/URI;
    const-string v1, "/"

    .line 292
    .local v1, "nafPath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 293
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 298
    :cond_0
    goto :goto_0

    .line 296
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 300
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :goto_0
    return-object v1
.end method

.method public static getNafUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "host":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 280
    .local v1, "nafUrl":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 283
    goto :goto_0

    .line 281
    .end local v1    # "nafUrl":Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 284
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNafUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GbaUtility"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-object v0
.end method

.method public static getSecurityProtocolId([B[BZ)[B
    .locals 7
    .param p0, "nafId"    # [B
    .param p1, "cipherSuite"    # [B
    .param p2, "isTls"    # Z

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "bNafid":[B
    const/4 v1, 0x5

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    aput-byte v3, v2, v4

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    aget-byte v5, p1, v3

    const/4 v6, 0x3

    aput-byte v5, v2, v6

    aget-byte v4, p1, v4

    const/4 v5, 0x4

    aput-byte v4, v2, v5

    .line 331
    .local v2, "UaSecurityProtocolId_tls":[B
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 332
    .local v1, "UaSecurityProtocolId":[B
    if-eqz p2, :cond_0

    .line 333
    array-length v4, p0

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 334
    array-length v4, p0

    invoke-static {p0, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    array-length v4, p0

    array-length v5, v2

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 337
    :cond_0
    array-length v4, p0

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 338
    array-length v4, p0

    invoke-static {p0, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    array-length v4, p0

    array-length v5, v1

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :goto_0
    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method public static declared-synchronized igenerateGbaMEKey([B[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Z[B)Ljava/lang/String;
    .locals 29
    .param p0, "gbaType"    # [B
    .param p1, "ck"    # [B
    .param p2, "ik"    # [B
    .param p3, "rand"    # [B
    .param p4, "impi"    # [B
    .param p5, "fqdn"    # [B
    .param p6, "lifeTime"    # Ljava/lang/String;
    .param p7, "btid"    # Ljava/lang/String;
    .param p8, "isTLS"    # Z
    .param p9, "cipherSuite"    # [B

    move-object/from16 v0, p5

    const-class v1, Lcom/sec/internal/ims/gba/GbaUtility;

    monitor-enter v1

    .line 127
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz v0, :cond_1

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "base64EncodedGbaKey":Ljava/lang/String;
    :try_start_0
    const-string v3, "GbaUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gbatype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v3, "GbaUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ck = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v3, "GbaUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ik = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "GbaUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "GbaUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fqdn for nafid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v3, v4, v5

    .line 145
    .local v4, "fc":[B
    const/4 v6, 0x5

    new-array v7, v6, [B

    aput-byte v3, v7, v5

    aput-byte v5, v7, v3

    const/4 v13, 0x2

    aput-byte v5, v7, v13

    const/4 v8, 0x3

    aput-byte v5, v7, v8

    const/4 v9, 0x4

    aput-byte v13, v7, v9

    move-object v14, v7

    .line 149
    .local v14, "UaSecurityProtocolId":[B
    new-array v7, v6, [B

    aput-byte v3, v7, v5

    aput-byte v5, v7, v3

    aput-byte v3, v7, v13

    aget-byte v10, p9, v5

    aput-byte v10, v7, v8

    aget-byte v10, p9, v3

    aput-byte v10, v7, v9

    move-object v15, v7

    .line 154
    .local v15, "UaSecurityProtocolId_tls":[B
    const/4 v7, 0x6

    new-array v7, v7, [B

    const/16 v10, 0x67

    aput-byte v10, v7, v5

    const/16 v5, 0x62

    aput-byte v5, v7, v3

    const/16 v3, 0x61

    aput-byte v3, v7, v13

    const/16 v3, 0x2d

    aput-byte v3, v7, v8

    const/16 v3, 0x6d

    aput-byte v3, v7, v9

    const/16 v3, 0x65

    aput-byte v3, v7, v6

    move-object v3, v7

    .line 157
    .local v3, "p0":[B
    array-length v5, v3

    invoke-static {v5}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v6

    .line 160
    .local v6, "l0":[B
    move-object/from16 v11, p3

    .line 161
    .local v11, "p1":[B
    array-length v5, v11

    invoke-static {v5}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v8

    .line 164
    .local v8, "l1":[B
    move-object/from16 v9, p4

    .line 165
    .local v9, "p2":[B
    array-length v5, v9

    invoke-static {v5}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v10

    .line 168
    .local v10, "l2":[B
    invoke-static {v0, v14}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateNafId([B[B)[B

    move-result-object v5

    move-object v7, v5

    .line 169
    .local v7, "p3":[B
    array-length v5, v7

    invoke-static {v5}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v12

    .line 170
    .local v12, "l3":[B
    invoke-static {v0, v15}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateNafId([B[B)[B

    move-result-object v5

    .line 171
    .local v5, "p3_tls":[B
    array-length v13, v5

    invoke-static {v13}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v24

    .line 174
    .local v24, "l3_tls":[B
    invoke-static/range {p1 .. p2}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateKs([B[B)[B

    move-result-object v13

    .line 176
    .local v13, "ks":[B
    move-object/from16 v25, v5

    .end local v5    # "p3_tls":[B
    .local v25, "p3_tls":[B
    move-object v5, v3

    move-object/from16 v26, v7

    .end local v7    # "p3":[B
    .local v26, "p3":[B
    move-object v7, v11

    move-object/from16 v27, v9

    .end local v9    # "p2":[B
    .local v27, "p2":[B
    move-object/from16 v28, v11

    .end local v11    # "p1":[B
    .local v28, "p1":[B
    move-object/from16 v11, v26

    invoke-static/range {v4 .. v12}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateS([B[B[B[B[B[B[B[B[B)[B

    move-result-object v5

    .line 177
    .local v5, "s":[B
    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v28

    move-object/from16 v20, v8

    move-object/from16 v21, v27

    move-object/from16 v22, v10

    move-object/from16 v23, v25

    invoke-static/range {v16 .. v24}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateS([B[B[B[B[B[B[B[B[B)[B

    move-result-object v7

    .line 179
    .local v7, "s_tls":[B
    invoke-static {v13, v5}, Lcom/sec/internal/ims/gba/GbaUtility;->calculate([B[B)[B

    move-result-object v9

    .line 180
    .local v9, "kdfResult":[B
    invoke-static {v13, v7}, Lcom/sec/internal/ims/gba/GbaUtility;->calculate([B[B)[B

    move-result-object v11

    .line 182
    .local v11, "kdfResult_tls":[B
    if-eqz p8, :cond_0

    .line 183
    const/4 v0, 0x2

    invoke-static {v11, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "base64EncodedGbaKey":Ljava/lang/String;
    .local v0, "base64EncodedGbaKey":Ljava/lang/String;
    goto :goto_0

    .line 185
    .end local v0    # "base64EncodedGbaKey":Ljava/lang/String;
    .restart local v2    # "base64EncodedGbaKey":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x2

    invoke-static {v9, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 188
    .end local v2    # "base64EncodedGbaKey":Ljava/lang/String;
    .restart local v0    # "base64EncodedGbaKey":Ljava/lang/String;
    :goto_0
    const-string v2, "GbaUtility"

    move-object/from16 v16, v3

    .end local v3    # "p0":[B
    .local v16, "p0":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "fc":[B
    .local v17, "fc":[B
    const-string/jumbo v4, "returning base64EncodedGbaKey [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit v1

    return-object v0

    .line 129
    .end local v0    # "base64EncodedGbaKey":Ljava/lang/String;
    .end local v5    # "s":[B
    .end local v6    # "l0":[B
    .end local v7    # "s_tls":[B
    .end local v8    # "l1":[B
    .end local v9    # "kdfResult":[B
    .end local v10    # "l2":[B
    .end local v11    # "kdfResult_tls":[B
    .end local v12    # "l3":[B
    .end local v13    # "ks":[B
    .end local v14    # "UaSecurityProtocolId":[B
    .end local v15    # "UaSecurityProtocolId_tls":[B
    .end local v16    # "p0":[B
    .end local v17    # "fc":[B
    .end local v24    # "l3_tls":[B
    .end local v25    # "p3_tls":[B
    .end local v26    # "p3":[B
    .end local v27    # "p2":[B
    .end local v28    # "p1":[B
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "GBA ME KEY Calculation - input cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local p0    # "gbaType":[B
    .end local p1    # "ck":[B
    .end local p2    # "ik":[B
    .end local p3    # "rand":[B
    .end local p4    # "impi":[B
    .end local p5    # "fqdn":[B
    .end local p6    # "lifeTime":Ljava/lang/String;
    .end local p7    # "btid":Ljava/lang/String;
    .end local p8    # "isTLS":Z
    .end local p9    # "cipherSuite":[B
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isTls(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "nafUrl":Ljava/net/URI;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 319
    const-string v1, "https"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 320
    const/4 v1, 0x1

    return v1

    .line 324
    :cond_0
    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 325
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
