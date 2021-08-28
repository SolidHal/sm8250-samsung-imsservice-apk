.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/TmoNsdsConfigStrategy;
.super Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;
.source "TmoNsdsConfigStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/TmoNsdsConfigStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    .line 9
    return-void
.end method
