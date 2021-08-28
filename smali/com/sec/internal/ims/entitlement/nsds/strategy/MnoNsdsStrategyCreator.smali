.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;
.super Ljava/lang/Object;
.source "MnoNsdsStrategyCreator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;",
            ">;"
        }
    .end annotation
.end field

.field private static sMnoSpecificStrategyGenerator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/Mno;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private sMnoStrategy:Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoStrategy:Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->initMnoSpecificStrategy()V

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->createMnoStrategy(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoStrategy:Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    .line 28
    return-void
.end method

.method private createMnoStrategy(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 59
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 60
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createMnoStrategy: Mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 67
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_0
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    .line 41
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 42
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    invoke-direct {v3, p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 36
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "slotId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initMnoSpecificStrategy()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    .line 50
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/TmoNsdsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/AttNsdsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/O2UNsdsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/O2UNsdsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCI:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/XaaNsdsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static declared-synchronized resetMnoStrategy()V
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit v0

    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getMnoStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoStrategy:Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    return-object v0
.end method
