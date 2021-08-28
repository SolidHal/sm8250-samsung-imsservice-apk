.class public final synthetic Lcom/sec/internal/log/-$$Lambda$CmcPingTestLogger$j6nLFlMpbA945nTLXUk0lxdvBuc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/log/-$$Lambda$CmcPingTestLogger$j6nLFlMpbA945nTLXUk0lxdvBuc;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/internal/log/-$$Lambda$CmcPingTestLogger$j6nLFlMpbA945nTLXUk0lxdvBuc;->f$1:Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/log/-$$Lambda$CmcPingTestLogger$j6nLFlMpbA945nTLXUk0lxdvBuc;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/internal/log/-$$Lambda$CmcPingTestLogger$j6nLFlMpbA945nTLXUk0lxdvBuc;->f$1:Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;

    invoke-static {v0, v1}, Lcom/sec/internal/log/CmcPingTestLogger;->lambda$ping$0(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V

    return-void
.end method
