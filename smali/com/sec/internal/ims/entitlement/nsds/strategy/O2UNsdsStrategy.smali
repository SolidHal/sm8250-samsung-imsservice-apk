.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/O2UNsdsStrategy;
.super Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy;
.source "O2UNsdsStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 11
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->O2U:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/O2UNsdsStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 13
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/O2UNsdsStrategy;->sMapEntitlementServices:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vowifi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/O2UNsdsStrategy;->sMapEntitlementServices:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "volte"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method
