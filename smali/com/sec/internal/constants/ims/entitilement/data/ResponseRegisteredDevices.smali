.class public Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
.source "ResponseRegisteredDevices.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceInstance:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;->deviceInstance:Ljava/util/ArrayList;

    .line 22
    const-class v1, Lcom/sec/internal/constants/ims/entitilement/data/DeviceInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;->deviceInstance:Ljava/util/ArrayList;

    .line 26
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 35
    invoke-super {p0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;->deviceInstance:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;->deviceInstance:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 42
    :goto_0
    return-void
.end method
