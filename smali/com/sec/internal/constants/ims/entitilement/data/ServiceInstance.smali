.class public Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;
.super Ljava/lang/Object;
.source "ServiceInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final transient CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configParameters:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config-parameters"
    .end annotation
.end field

.field public endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end-time"
    .end annotation
.end field

.field public expirationTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration-time"
    .end annotation
.end field

.field public friendlyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friendly-name"
    .end annotation
.end field

.field public isOwner:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is-owner"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;

.field public provisioningParameters:Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provisioning-parameters"
    .end annotation
.end field

.field public serviceInstanceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-instance-id"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->serviceName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->serviceInstanceId:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 40
    .local v0, "isOwnerVal":B
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move-object v2, v1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->isOwner:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->endTime:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->msisdn:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->friendlyName:Ljava/lang/String;

    .line 45
    const-class v1, Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->provisioningParameters:Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->configParameters:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->serviceInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->isOwner:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 67
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->msisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->provisioningParameters:Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->configParameters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
