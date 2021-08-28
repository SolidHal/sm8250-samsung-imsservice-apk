.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$2$BZYV7fwgX5HySavS7yuaUyEB_5M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

.field public final synthetic f$1:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$2$BZYV7fwgX5HySavS7yuaUyEB_5M;->f$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$2$BZYV7fwgX5HySavS7yuaUyEB_5M;->f$1:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$2$BZYV7fwgX5HySavS7yuaUyEB_5M;->f$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$2$BZYV7fwgX5HySavS7yuaUyEB_5M;->f$1:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->lambda$onUpdatePani$0$ResipRegistrationManager$2(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method
