.class public Lcom/sec/internal/ims/config/util/Fips186_2;
.super Ljava/lang/Object;
.source "Fips186_2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fips186_2_prf2([B[B)I
    .locals 14
    .param p0, "xKeyBytes"    # [B
    .param p1, "out"    # [B

    .line 15
    invoke-static {p0}, Lcom/sec/internal/ims/config/util/Fips186_2;->fromByteArray([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 16
    .local v0, "xKey":Ljava/math/BigInteger;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 17
    .local v1, "outBuf":Ljava/nio/ByteBuffer;
    array-length v2, p1

    div-int/lit8 v2, v2, 0x28

    .line 19
    .local v2, "m":I
    new-instance v3, Lcom/sec/internal/ims/config/util/SHA1;

    invoke-direct {v3}, Lcom/sec/internal/ims/config/util/SHA1;-><init>()V

    .line 20
    .local v3, "digester":Lcom/sec/internal/ims/config/util/SHA1;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "2"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 21
    .local v4, "mod":Ljava/math/BigInteger;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 22
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 24
    move-object v7, v0

    .line 31
    .local v7, "xVal":Ljava/math/BigInteger;
    const/16 v8, 0x14

    invoke-static {v7, v8}, Lcom/sec/internal/ims/config/util/Fips186_2;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v9

    .line 33
    .local v9, "bs":[B
    const/16 v10, 0x40

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    .line 34
    .local v10, "arr":[B
    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/config/util/SHA1;->update([B)V

    .line 40
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 41
    .local v11, "wBuf":Ljava/nio/ByteBuffer;
    iget v12, v3, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    iget v12, v3, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    iget v12, v3, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 44
    iget v12, v3, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    iget v12, v3, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/config/util/Fips186_2;->fromByteArray([B)Ljava/math/BigInteger;

    move-result-object v12

    .line 49
    .local v12, "wi":Ljava/math/BigInteger;
    new-instance v13, Lcom/sec/internal/ims/config/util/SHA1;

    invoke-direct {v13}, Lcom/sec/internal/ims/config/util/SHA1;-><init>()V

    move-object v3, v13

    .line 52
    sget-object v13, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 59
    invoke-static {v12, v8}, Lcom/sec/internal/ims/config/util/Fips186_2;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    .end local v7    # "xVal":Ljava/math/BigInteger;
    .end local v9    # "bs":[B
    .end local v10    # "arr":[B
    .end local v11    # "wBuf":Ljava/nio/ByteBuffer;
    .end local v12    # "wi":Ljava/math/BigInteger;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 21
    .end local v6    # "i":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    .end local v5    # "j":I
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method static fromByteArray([B)Ljava/math/BigInteger;
    .locals 4
    .param p0, "arr"    # [B

    .line 98
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 99
    .local v0, "src":[B
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    aput-byte v3, v0, v3

    .line 101
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method static toByteArray(Ljava/math/BigInteger;I)[B
    .locals 5
    .param p0, "bi"    # Ljava/math/BigInteger;
    .param p1, "length"    # I

    .line 76
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 78
    .local v0, "bs":[B
    array-length v1, v0

    if-ne v1, p1, :cond_0

    .line 79
    return-object v0

    .line 81
    :cond_0
    array-length v1, v0

    if-le v1, p1, :cond_1

    .line 82
    array-length v1, v0

    sub-int/2addr v1, p1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 85
    :cond_1
    new-array v1, p1, [B

    .line 86
    .local v1, "rv":[B
    const/4 v2, 0x0

    array-length v3, v0

    sub-int v3, p1, v3

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object v1
.end method
