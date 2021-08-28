.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$SimpleEventLog$YaA3Zm1djbpwbP_GVsqeLx7FoN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$SimpleEventLog$YaA3Zm1djbpwbP_GVsqeLx7FoN0;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$SimpleEventLog$YaA3Zm1djbpwbP_GVsqeLx7FoN0;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->lambda$resize$1$SimpleEventLog()V

    return-void
.end method
