.class public Lcom/sec/internal/helper/DigestCalculator;
.super Ljava/lang/Object;
.source "DigestCalculator.java"


# static fields
.field private static final ALGORITHM_AKAV1_MD5:Ljava/lang/String; = "AKAv1-MD5"

.field private static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final QOP_AUTH_INT:Ljava/lang/String; = "auth-int"

.field private static final SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private digestUri:Ljava/lang/String;

.field private httpMethod:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceCount:Ljava/lang/String;

.field private passwd:[B

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "alg"    # Ljava/lang/String;
    .param p3, "cnonce"    # Ljava/lang/String;
    .param p4, "nonce"    # Ljava/lang/String;
    .param p5, "nc"    # Ljava/lang/String;
    .param p6, "qop"    # Ljava/lang/String;
    .param p7, "realm"    # Ljava/lang/String;
    .param p8, "pwd"    # [B
    .param p9, "method"    # Ljava/lang/String;
    .param p10, "digestUri"    # Ljava/lang/String;
    .param p11, "entityBody"    # [B

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->httpMethod:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->digestUri:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/sec/internal/helper/DigestCalculator;->userName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/sec/internal/helper/DigestCalculator;->algorithm:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/sec/internal/helper/DigestCalculator;->cnonce:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/sec/internal/helper/DigestCalculator;->nonce:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/sec/internal/helper/DigestCalculator;->nonceCount:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/sec/internal/helper/DigestCalculator;->qop:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/sec/internal/helper/DigestCalculator;->realm:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/sec/internal/helper/DigestCalculator;->passwd:[B

    .line 70
    iput-object p9, p0, Lcom/sec/internal/helper/DigestCalculator;->httpMethod:Ljava/lang/String;

    .line 71
    iput-object p10, p0, Lcom/sec/internal/helper/DigestCalculator;->digestUri:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private calcDigestHA1()Ljava/lang/String;
    .locals 7

    .line 148
    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->algorithm:Ljava/lang/String;

    const-string v1, "MD5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->algorithm:Ljava/lang/String;

    .line 149
    const-string v1, "AKAv1-MD5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/helper/DigestCalculator;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/DigestCalculator;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 153
    .local v1, "b":[B
    array-length v2, v1

    iget-object v3, p0, Lcom/sec/internal/helper/DigestCalculator;->passwd:[B

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 154
    .local v2, "a1":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v3, p0, Lcom/sec/internal/helper/DigestCalculator;->passwd:[B

    array-length v5, v1

    array-length v6, v3

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/helper/DigestCalculator;->calcMD5([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private calcDigestHA2()Ljava/lang/String;
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->qop:Ljava/lang/String;

    const-string v1, "auth-int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_0

    .line 129
    const-string v0, ""

    .line 132
    .local v0, "emptyentityBody":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    .line 134
    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/helper/DigestCalculator;->calcMD5([B)[B

    move-result-object v3

    .line 133
    invoke-static {v3}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 135
    .local v2, "entityHash":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/helper/DigestCalculator;->httpMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/helper/DigestCalculator;->digestUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .end local v2    # "entityHash":Ljava/lang/String;
    .local v0, "a2":Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v0    # "a2":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/helper/DigestCalculator;->httpMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/DigestCalculator;->digestUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "a2":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/helper/DigestCalculator;->calcMD5([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 144
    .local v1, "hA2":Ljava/lang/String;
    return-object v1
.end method

.method private calcMD5([B)[B
    .locals 2
    .param p1, "a1"    # [B

    .line 165
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 166
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 167
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 169
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private calculateAuthDigest()Ljava/lang/String;
    .locals 5

    .line 105
    invoke-direct {p0}, Lcom/sec/internal/helper/DigestCalculator;->calcDigestHA1()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "HA1":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/internal/helper/DigestCalculator;->getData()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "keyString":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/helper/DigestCalculator;->calcMD5([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 113
    .local v3, "response":Ljava/lang/String;
    return-object v3
.end method

.method private getData()Ljava/lang/String;
    .locals 4

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/helper/DigestCalculator;->calcDigestHA2()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "hA2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/helper/DigestCalculator;->nonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/DigestCalculator;->nonceCount:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/DigestCalculator;->cnonce:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/DigestCalculator;->qop:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "data":Ljava/lang/String;
    return-object v1
.end method

.method private isInputDataValid()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->httpMethod:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->cnonce:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->qop:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->nonce:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->nonceCount:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->passwd:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->realm:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->userName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/DigestCalculator;->digestUri:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public calculateDigest()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/sec/internal/helper/DigestCalculator;->isInputDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/sec/internal/helper/DigestCalculator;->calculateAuthDigest()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
