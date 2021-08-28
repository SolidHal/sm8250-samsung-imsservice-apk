.class public final enum Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;
.super Ljava/lang/Enum;
.source "DefaultNsdsConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "NsdsConfigStrategyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

.field public static final enum DEFAULT:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

.field public static final enum END_OF_NSDSCONFIGSTRATEGY:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

.field public static final enum TMOUS:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 100
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->DEFAULT:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    .line 104
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const-string v1, "TMOUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    .line 107
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const-string v1, "END_OF_NSDSCONFIGSTRATEGY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->END_OF_NSDSCONFIGSTRATEGY:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    .line 98
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    sget-object v5, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->DEFAULT:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->$VALUES:[Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    const-class v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;
    .locals 1

    .line 98
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->$VALUES:[Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    return-object v0
.end method


# virtual methods
.method protected varargs isOneOf([Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;)Z
    .locals 4
    .param p1, "types"    # [Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    .line 110
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 111
    .local v3, "type":Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;
    if-ne p0, v3, :cond_0

    .line 112
    const/4 v0, 0x1

    return v0

    .line 110
    .end local v3    # "type":Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return v1
.end method
