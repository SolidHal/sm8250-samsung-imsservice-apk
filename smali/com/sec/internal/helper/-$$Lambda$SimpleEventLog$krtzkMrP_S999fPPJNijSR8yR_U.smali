.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$SimpleEventLog$krtzkMrP_S999fPPJNijSR8yR_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/SimpleEventLog;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/SimpleEventLog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$SimpleEventLog$krtzkMrP_S999fPPJNijSR8yR_U;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    iput-object p2, p0, Lcom/sec/internal/helper/-$$Lambda$SimpleEventLog$krtzkMrP_S999fPPJNijSR8yR_U;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$SimpleEventLog$krtzkMrP_S999fPPJNijSR8yR_U;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/helper/-$$Lambda$SimpleEventLog$krtzkMrP_S999fPPJNijSR8yR_U;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->lambda$flush$0$SimpleEventLog(Ljava/util/List;)V

    return-void
.end method
