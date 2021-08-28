.class public Lcom/verizon/loginclient/TokenLoginClientExample;
.super Ljava/lang/Object;
.source "TokenLoginClientExample.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TokenLoginClientExample"


# instance fields
.field mClientReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private final mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClientExample$1;

    invoke-direct {v0, p0}, Lcom/verizon/loginclient/TokenLoginClientExample$1;-><init>(Lcom/verizon/loginclient/TokenLoginClientExample;)V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mClientReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 27
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient;

    invoke-direct {v1, p1, v0}, Lcom/verizon/loginclient/TokenLoginClient;-><init>(Landroid/content/Context;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;)V

    iput-object v1, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    .line 28
    return-void
.end method


# virtual methods
.method public exampleActions()V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "enginePackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v1}, Lcom/verizon/loginclient/TokenLoginClient;->isDozeWhitelisted()Z

    move-result v1

    .line 45
    .local v1, "isIgnoringDoze":Z
    :try_start_0
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v2}, Lcom/verizon/loginclient/TokenLoginClient;->invalidateToken()V

    .line 47
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v2}, Lcom/verizon/loginclient/TokenLoginClient;->invalidateAllTokens()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 52
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v2}, Lcom/verizon/loginclient/TokenLoginClient;->queryTokenAsync()V

    .line 56
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v2}, Lcom/verizon/loginclient/TokenLoginClient;->queryTokenSynchronous()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v2

    .line 59
    .local v2, "r1":Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    iget-object v3, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v3}, Lcom/verizon/loginclient/TokenLoginClient;->queryTokenDirect()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v3

    .line 61
    .local v3, "r2":Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    invoke-virtual {v3}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    sget-object v4, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 67
    iget-object v4, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v4}, Lcom/verizon/loginclient/TokenLoginClient;->cancelQuery()V

    .line 71
    iget-object v4, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v4}, Lcom/verizon/loginclient/TokenLoginClient;->establishToken()V

    .line 73
    return-void
.end method

.method public exampleAdvancedSettings()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->setTargetSubscriptionId(Ljava/lang/Integer;)V

    .line 86
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient;->setTimeout(J)V

    .line 89
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->setUseAuthTokens(Z)V

    .line 92
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->setInteractiveQuery(Z)V

    .line 95
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->bypassDeviceFeatureCheck(Z)V

    .line 98
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->bypassEnginePackageCheck(Z)V

    .line 102
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClientExample;->mTokenClient:Lcom/verizon/loginclient/TokenLoginClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->setObserveOnNullResult(Z)V

    .line 104
    return-void
.end method
