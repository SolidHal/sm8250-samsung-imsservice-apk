.class public Lcom/sec/internal/google/cmc/IpServiceManager;
.super Ljava/lang/Object;
.source "IpServiceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetworkService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/sec/internal/google/cmc/IpServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/google/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/google/cmc/IpServiceManager;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 29
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 30
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/google/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lcom/sec/internal/google/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "bind failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method public ipRuleAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/sec/internal/google/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to [add] iprule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/sec/internal/google/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2, p1}, Landroid/os/INetworkManagementService;->updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/google/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "add iprule error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/sec/internal/google/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to [delete] prve iprule in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/sec/internal/google/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p1}, Landroid/os/INetworkManagementService;->updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/google/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "remove iprule error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
