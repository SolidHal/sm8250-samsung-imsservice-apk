.class public final Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
.super Ljava/lang/Object;
.source "EucMessageKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEucId:Ljava/lang/String;

.field private mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field private mOwnIdentity:Ljava/lang/String;

.field private mRemoteUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 77
    sget-object v0, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p1, "eucId"    # Ljava/lang/String;
    .param p2, "ownIdentity"    # Ljava/lang/String;
    .param p3, "eucType"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p4, "remoteUri"    # Lcom/sec/ims/util/ImsUri;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 70
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 71
    return-void
.end method

.method public static unmarshall([B)Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .locals 3
    .param p0, "marshalledEucMessageKey"    # [B

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 147
    .local v1, "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 87
    .local v2, "that":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 88
    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 87
    :goto_0
    return v0

    .line 83
    .end local v2    # "that":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    :cond_3
    :goto_1
    return v1
.end method

.method public getEucId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    return-object v0
.end method

.method public getEucType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    return-object v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 94
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 95
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 96
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 97
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public marshall()[B
    .locals 2

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 132
    .local v1, "marshalledEucMessageKey":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 133
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EucMessageKey[mEucId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mOwnIdentity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mEucType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRemoteUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 121
    return-void
.end method
