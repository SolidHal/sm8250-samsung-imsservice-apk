.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$M9iX4Vlb1NnMF2oQ9KtgcdsriTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

.field public final synthetic f$1:Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$M9iX4Vlb1NnMF2oQ9KtgcdsriTU;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$M9iX4Vlb1NnMF2oQ9KtgcdsriTU;->f$1:Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$M9iX4Vlb1NnMF2oQ9KtgcdsriTU;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/-$$Lambda$VolteServiceModule$M9iX4Vlb1NnMF2oQ9KtgcdsriTU;->f$1:Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->lambda$handleMessage$0$VolteServiceModule(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V

    return-void
.end method
