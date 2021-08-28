.class public Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;
.super Ljava/lang/Object;
.source "EntitlementConfigFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

.field private static sSalesCodeConfigImplMap:Ljava/util/Map;
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
.field private mContext:Landroid/content/Context;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    const-class v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->LOG_TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sSalesCodeConfigImplMap:Ljava/util/Map;

    .line 22
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .param p1, "serviceLooper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->mServiceLooper:Landroid/os/Looper;

    .line 29
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2
    .param p0, "serviceLooper"    # Landroid/os/Looper;
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit v0

    return-void

    .line 32
    .end local p0    # "serviceLooper":Landroid/os/Looper;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;
    .locals 1

    .line 39
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    return-object v0
.end method


# virtual methods
.method public getDeviceConfigModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    .locals 8
    .param p1, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 44
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 45
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createMnoStrategy: mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sSalesCodeConfigImplMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sSalesCodeConfigImplMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Looper;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/Context;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->mServiceLooper:Landroid/os/Looper;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->mContext:Landroid/content/Context;

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object v1

    .line 55
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
