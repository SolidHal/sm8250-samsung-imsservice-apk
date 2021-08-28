.class public Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;
.super Ljava/lang/Object;
.source "ServiceAvailabilityEventListenerUp.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;
    }
.end annotation


# static fields
.field private static final EVT_UPDATE_CAP_TIMESTAMP:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCapabilitiesList:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "capabilitiesCache"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .param p3, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mCapabilitiesList:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 51
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mCapabilitiesList:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    return-object v0
.end method


# virtual methods
.method public onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "timestamp"    # Ljava/util/Date;

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;-><init>(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method
