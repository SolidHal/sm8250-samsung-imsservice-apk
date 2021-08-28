.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/AttNsdsStrategy;
.super Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy;
.source "AttNsdsStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy;-><init>(Landroid/content/Context;)V

    .line 11
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->ATT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/AttNsdsStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 12
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/AttNsdsStrategy;->sMapEntitlementServices:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vowifi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method
