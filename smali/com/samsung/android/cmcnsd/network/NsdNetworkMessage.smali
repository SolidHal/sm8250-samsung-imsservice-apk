.class public Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
.super Ljava/lang/Object;
.source "NsdNetworkMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    .line 8
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    .param p1, "x1"    # I

    .line 8
    iput p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

    return p1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

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

    .line 48
    iget v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
