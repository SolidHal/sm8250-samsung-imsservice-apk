.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorCmcc;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptor.java"


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1
    .param p1, "simManager"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 134
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorCmcc;->mPreferredImpuIndex:I

    .line 136
    return-void
.end method
