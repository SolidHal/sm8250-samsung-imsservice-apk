.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/TmoNsdsStrategy;
.super Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy;
.source "TmoNsdsStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/TmoNsdsStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 9
    return-void
.end method
