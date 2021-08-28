.class public Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;
.super Ljava/lang/Object;
.source "DeviceInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-id"
    .end annotation
.end field

.field public deviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-name"
    .end annotation
.end field

.field public deviceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-type"
    .end annotation
.end field

.field public serviceInstances:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-instances"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->deviceId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->deviceName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->deviceType:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->serviceInstances:Ljava/util/ArrayList;

    .line 31
    const-class v1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->serviceInstances:Ljava/util/ArrayList;

    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 44
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->serviceInstances:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;->serviceInstances:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 53
    :goto_0
    return-void
.end method
