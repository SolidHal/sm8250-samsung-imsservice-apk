.class Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
.super Ljava/lang/Object;
.source "MnoMap.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkIdentifier"


# instance fields
.field public mGid1:Ljava/lang/String;

.field public mGid2:Ljava/lang/String;

.field public mMccMnc:Ljava/lang/String;

.field public mMnoName:Ljava/lang/String;

.field public mSpname:Ljava/lang/String;

.field public mSubset:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "subset"    # Ljava/lang/String;
    .param p3, "gid1"    # Ljava/lang/String;
    .param p4, "gid2"    # Ljava/lang/String;
    .param p5, "spname"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    .line 65
    const-string v0, "default"

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "subset"    # Ljava/lang/String;
    .param p3, "gid1"    # Ljava/lang/String;
    .param p4, "gid2"    # Ljava/lang/String;
    .param p5, "spname"    # Ljava/lang/String;
    .param p6, "mnoName"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public contains(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z
    .locals 2
    .param p1, "netid"    # Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contains: L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkIdentifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 81
    .local v1, "netid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "equals: L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", R"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkIdentifier"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 83
    :goto_0
    return v0

    .line 90
    .end local v1    # "netid":Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
    :cond_1
    return v0
.end method

.method public equalsWithoutMnoName(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z
    .locals 2
    .param p1, "netid"    # Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "equalsWithoutMnoName: L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkIdentifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, "hashVal":I
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 97
    .end local v0    # "hashVal":I
    .local v1, "hashVal":I
    mul-int/lit8 v0, v1, 0xd

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 98
    .end local v1    # "hashVal":I
    .restart local v0    # "hashVal":I
    mul-int/lit8 v1, v0, 0x17

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    .line 99
    .end local v0    # "hashVal":I
    .restart local v1    # "hashVal":I
    mul-int/lit8 v0, v1, 0x13

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 100
    .end local v1    # "hashVal":I
    .restart local v0    # "hashVal":I
    mul-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    .line 101
    .end local v0    # "hashVal":I
    .restart local v1    # "hashVal":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    .line 102
    .end local v1    # "hashVal":I
    .restart local v0    # "hashVal":I
    return v0
.end method

.method public setMnoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
