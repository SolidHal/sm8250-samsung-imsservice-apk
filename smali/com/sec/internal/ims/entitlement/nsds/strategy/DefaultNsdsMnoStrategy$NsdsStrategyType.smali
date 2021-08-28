.class public final enum Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;
.super Ljava/lang/Enum;
.source "DefaultNsdsMnoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "NsdsStrategyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum ATT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum DEFAULT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum END_OF_NSDSSTRATEGY:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum O2U:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum TMOUS:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

.field public static final enum XAA:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 635
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->DEFAULT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 638
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v1, "O2U"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->O2U:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 640
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v1, "ATT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->ATT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 641
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v1, "TMOUS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 642
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v1, "XAA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->XAA:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 643
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    const-string v1, "END_OF_NSDSSTRATEGY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->END_OF_NSDSSTRATEGY:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 633
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    sget-object v8, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->DEFAULT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->O2U:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->ATT:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->XAA:Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->$VALUES:[Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 633
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 633
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;
    .locals 1

    .line 633
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->$VALUES:[Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    return-object v0
.end method


# virtual methods
.method protected varargs isOneOf([Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;)Z
    .locals 4
    .param p1, "types"    # [Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;

    .line 647
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 648
    .local v3, "type":Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;
    if-ne p0, v3, :cond_0

    .line 649
    const/4 v0, 0x1

    return v0

    .line 647
    .end local v3    # "type":Lcom/sec/internal/ims/entitlement/nsds/strategy/DefaultNsdsMnoStrategy$NsdsStrategyType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_1
    return v1
.end method
