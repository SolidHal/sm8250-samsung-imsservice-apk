.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModuleInternal$10Hz3M7FHE2czpdWBJG3LGKoLM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field public final synthetic f$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModuleInternal$10Hz3M7FHE2czpdWBJG3LGKoLM8;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModuleInternal$10Hz3M7FHE2czpdWBJG3LGKoLM8;->f$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModuleInternal$10Hz3M7FHE2czpdWBJG3LGKoLM8;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModuleInternal$10Hz3M7FHE2czpdWBJG3LGKoLM8;->f$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->lambda$onImsIncomingCallEvent$0$VolteServiceModuleInternal(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method
