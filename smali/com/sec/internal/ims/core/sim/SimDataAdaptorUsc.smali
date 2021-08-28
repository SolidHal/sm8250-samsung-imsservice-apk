.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 357
    const-class v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1
    .param p1, "simManager"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 360
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;->mPreferredImpuIndex:I

    .line 364
    return-void
.end method
