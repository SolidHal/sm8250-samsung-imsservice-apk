.class public Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;
.super Ljava/lang/Object;
.source "NSDSModuleFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mnos:[Lcom/sec/internal/constants/Mno;

.field private static sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->LOG_TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK_LAB:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCI:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mnos:[Lcom/sec/internal/constants/Mno;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .param p1, "serviceLooper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mServiceLooper:Landroid/os/Looper;

    .line 28
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2
    .param p0, "serviceLooper"    # Landroid/os/Looper;
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit v0

    return-void

    .line 31
    .end local p0    # "serviceLooper":Landroid/os/Looper;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;
    .locals 1

    .line 38
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    return-object v0
.end method


# virtual methods
.method public getNsdsModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    .locals 6
    .param p1, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 43
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 44
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getNsdsModule: simManager null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object v0

    .line 48
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 49
    .local v1, "simmno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mnos:[Lcom/sec/internal/constants/Mno;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 50
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    if-ne v5, v1, :cond_1

    .line 51
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNsdsModule: Mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mServiceLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-object v0

    .line 49
    .end local v5    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_2
    return-object v0
.end method
