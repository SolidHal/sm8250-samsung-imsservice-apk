.class public Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
.super Ljava/lang/Object;
.source "NsdNetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final CAPABILITY_FULL:I = 0x7

.field public static final CAPABILITY_INCOMING_CALL:I = 0x1

.field public static final CAPABILITY_LOG_SYNC:I = 0x2

.field public static final CAPABILITY_MAX:I = 0x7

.field public static final CAPABILITY_OUTGOING_CALL:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSPORT_WIFI_AP:I = 0x0

.field public static final TRANSPORT_WIFI_DIRECT:I = 0x1


# instance fields
.field private mCapabilities:I

.field private mTransport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    .line 30
    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 8
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .param p1, "x1"    # I

    .line 8
    iput p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 8
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .param p1, "x1"    # I

    .line 8
    iput p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    return p1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    .line 98
    return-void
.end method


# virtual methods
.method public combine(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z
    .locals 3
    .param p1, "capabilities"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 59
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    iget v1, p1, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    xor-int v2, v0, v1

    if-eqz v2, :cond_0

    .line 60
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    .line 61
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilities()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    return v0
.end method

.method public getTransport()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    return v0
.end method

.method public hasCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z
    .locals 2
    .param p1, "capabilities"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 54
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->getTransport()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->getCapabilities()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0
.end method

.method public hasCapability(I)Z
    .locals 3
    .param p1, "capability"    # I

    .line 50
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTransport(I)Z
    .locals 3
    .param p1, "transport"    # I

    .line 42
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mTransport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
