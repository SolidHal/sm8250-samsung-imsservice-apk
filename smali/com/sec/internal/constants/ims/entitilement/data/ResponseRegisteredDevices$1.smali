.class Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices$1;
.super Ljava/lang/Object;
.source "ResponseRegisteredDevices.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;
    .locals 1
    .param p1, "size"    # I

    .line 52
    new-array v0, p1, [Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices$1;->newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;

    move-result-object p1

    return-object p1
.end method
