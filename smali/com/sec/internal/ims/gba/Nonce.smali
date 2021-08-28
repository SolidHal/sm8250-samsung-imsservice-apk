.class public Lcom/sec/internal/ims/gba/Nonce;
.super Ljava/lang/Object;
.source "Nonce.java"


# static fields
.field private static final AUTN_SIZE:I = 0x10

.field private static final RAND_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Nonce"


# instance fields
.field private autn:[B

.field private rand:[B

.field private randAutn:[B

.field private serverData:[B

.field private strNonce:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getAutn()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Nonce;->autn:[B

    return-object v0
.end method

.method public getAutnRand()[B
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Nonce;->randAutn:[B

    return-object v0
.end method

.method public getRand()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Nonce;->rand:[B

    return-object v0
.end method

.method public getStrNonce()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Nonce;->strNonce:Ljava/lang/String;

    return-object v0
.end method

.method public parseNonce(Ljava/lang/String;)V
    .locals 11
    .param p1, "nonce"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "decodedNonce":[B
    const/16 v1, 0x11

    new-array v2, v1, [B

    .line 122
    .local v2, "nonceCompR":[B
    new-array v3, v1, [B

    .line 123
    .local v3, "nonceCompA":[B
    const/16 v4, 0x22

    new-array v4, v4, [B

    .line 126
    .local v4, "randAutn":[B
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/gba/Nonce;->setStrNonce(Ljava/lang/String;)V

    .line 130
    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 131
    array-length v6, v0

    const/4 v7, 0x1

    const/16 v8, 0x10

    if-lt v6, v8, :cond_0

    .line 132
    aput-byte v8, v2, v5

    .line 133
    invoke-static {v0, v5, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/gba/Nonce;->setRand([B)V

    .line 135
    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/Nonce;->getRand()[B

    move-result-object v6

    invoke-static {v6, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HexRAND is: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/Nonce;->getRand()[B

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Nonce"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    array-length v6, v0

    const/16 v10, 0x20

    if-lt v6, v10, :cond_1

    .line 141
    aput-byte v8, v3, v5

    .line 142
    invoke-static {v0, v8, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/gba/Nonce;->setAutn([B)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/Nonce;->getAutn()[B

    move-result-object v6

    invoke-static {v6, v5, v4, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hex Autn is: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/Nonce;->getAutn()[B

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    array-length v1, v0

    if-le v1, v10, :cond_2

    .line 150
    array-length v1, v0

    sub-int/2addr v1, v7

    invoke-static {v0, v10, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/gba/Nonce;->setServerData([B)V

    .line 154
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hex RandAutn is: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/gba/Nonce;->setAutnRand([B)V

    .line 157
    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/Nonce;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public setAutn([B)V
    .locals 0
    .param p1, "autn"    # [B

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/gba/Nonce;->autn:[B

    .line 52
    return-void
.end method

.method public setAutnRand([B)V
    .locals 0
    .param p1, "autnRand"    # [B

    .line 100
    iput-object p1, p0, Lcom/sec/internal/ims/gba/Nonce;->randAutn:[B

    .line 101
    return-void
.end method

.method public setRand([B)V
    .locals 0
    .param p1, "rand"    # [B

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/gba/Nonce;->rand:[B

    .line 66
    return-void
.end method

.method public setServerData([B)V
    .locals 0
    .param p1, "serverData"    # [B

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/gba/Nonce;->serverData:[B

    .line 73
    return-void
.end method

.method public setStrNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "strNonce"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/gba/Nonce;->strNonce:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nonce ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Nonce;->autn:[B

    const-string v2, ", "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/gba/Nonce;->autn:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Nonce;->rand:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rand="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/gba/Nonce;->rand:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Nonce;->serverData:[B

    if-eqz v1, :cond_2

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serverData="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/gba/Nonce;->serverData:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Nonce;->strNonce:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "strNonce="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/gba/Nonce;->strNonce:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Nonce;->randAutn:[B

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autnRand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/gba/Nonce;->randAutn:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method
