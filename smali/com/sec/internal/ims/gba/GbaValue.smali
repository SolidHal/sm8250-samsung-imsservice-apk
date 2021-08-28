.class public Lcom/sec/internal/ims/gba/GbaValue;
.super Ljava/lang/Object;
.source "GbaValue.java"


# instance fields
.field private Btid:Ljava/lang/String;

.field private validity:Ljava/util/Date;

.field private value:[B


# direct methods
.method public constructor <init>([BLjava/util/Date;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "validity"    # Ljava/util/Date;
    .param p3, "Btid"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    .line 18
    iput-object p2, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    .line 19
    iput-object p3, p0, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 71
    return v1

    .line 73
    :cond_1
    instance-of v2, p1, Lcom/sec/internal/ims/gba/GbaValue;

    if-nez v2, :cond_2

    .line 74
    return v1

    .line 76
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/gba/GbaValue;

    .line 77
    .local v2, "other":Lcom/sec/internal/ims/gba/GbaValue;
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    if-nez v3, :cond_3

    .line 78
    iget-object v3, v2, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    if-eqz v3, :cond_4

    .line 79
    return v1

    .line 81
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 82
    return v1

    .line 84
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    iget-object v4, v2, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 85
    return v1

    .line 88
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 89
    iget-object v3, v2, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 90
    return v1

    .line 92
    :cond_6
    iget-object v4, v2, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 93
    return v1

    .line 95
    :cond_7
    return v0
.end method

.method public getBtid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    return-object v0
.end method

.method public getValidity()Ljava/util/Date;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 52
    const/16 v0, 0x1f

    .line 53
    .local v0, "primeHash":I
    const/4 v1, 0x1

    .line 54
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 55
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 56
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    .line 57
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
