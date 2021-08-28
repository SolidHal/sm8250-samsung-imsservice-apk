.class public Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
.source "ResponseManageService.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public instanceToken:Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instance-token"
    .end annotation
.end field

.field public serviceInstance:Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-instance"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 20
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;->serviceInstance:Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;

    .line 21
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;->instanceToken:Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 31
    invoke-super {p0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;->serviceInstance:Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;->instanceToken:Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
