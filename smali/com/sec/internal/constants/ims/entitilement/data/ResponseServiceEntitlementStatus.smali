.class public Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
.source "ResponseServiceEntitlementStatus.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enableNotifications:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable-notifications"
    .end annotation
.end field

.field public pollInterval:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poll-interval"
    .end annotation
.end field

.field public serviceEntitlementList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-entitlement"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    .line 30
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    .line 34
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 43
    invoke-super {p0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 50
    :goto_0
    return-void
.end method
