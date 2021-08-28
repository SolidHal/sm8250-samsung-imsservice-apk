.class public final synthetic Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$nHqGiiWhT45QyXR4iIhUbSyRxA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$nHqGiiWhT45QyXR4iIhUbSyRxA0;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$nHqGiiWhT45QyXR4iIhUbSyRxA0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$nHqGiiWhT45QyXR4iIhUbSyRxA0;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$nHqGiiWhT45QyXR4iIhUbSyRxA0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processConfigured$0$PresenceModule(I)V

    return-void
.end method
