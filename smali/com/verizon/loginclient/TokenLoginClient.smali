.class public Lcom/verizon/loginclient/TokenLoginClient;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;,
        Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;,
        Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;,
        Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;,
        Lcom/verizon/loginclient/TokenLoginClient$ResultCode;,
        Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;,
        Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;,
        Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;,
        Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_MS:J = 0xea60L

.field private static final MSG_CONTENT_NOTIFY:I = 0x1

.field private static final MSG_TIMEOUT_EXPIRED:I = 0x2

.field public static final SUBSCRIPTION_ID_UNKNOWN:I = -0x1


# instance fields
.field private mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mAlwaysReturnSubscriptionId:Z

.field private final mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mBypassDeviceFeatureCheck:Z

.field private mBypassEnginePackageCheck:Z

.field private final mContext:Landroid/content/Context;

.field private final mDirectEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mInteractiveQueryMode:Z

.field private final mLockObj:Ljava/lang/Object;

.field private final mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

.field private mObserveOnNullResult:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private final mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

.field private mTargetSubscriptionId:Ljava/lang/Integer;

.field private mTimeoutMs:J

.field private mTokenTypeAuth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "evtRec"    # Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient;-><init>(Landroid/content/Context;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;Landroid/os/Looper;Ljava/lang/Integer;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;Landroid/os/Looper;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "evtRec"    # Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "targetSubscriptionId"    # Ljava/lang/Integer;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    .line 83
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mInteractiveQueryMode:Z

    .line 85
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTokenTypeAuth:Z

    .line 86
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassDeviceFeatureCheck:Z

    .line 87
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserveOnNullResult:Z

    .line 89
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAlwaysReturnSubscriptionId:Z

    .line 114
    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    .line 117
    iput-object p4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 120
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    .line 121
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mDirectEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 122
    if-nez p2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    invoke-direct {v0, p0, p2}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;)V

    :goto_0
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 124
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    if-eqz p3, :cond_1

    move-object v2, p3

    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2, p0, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;-><init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    .line 127
    return-void

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;

    .line 54
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$1200(Lcom/verizon/loginclient/TokenLoginClient;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;

    .line 54
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;

    .line 54
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;

    .line 54
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenQuery()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;
    .param p1, "x1"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    .line 54
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->callbackWithResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;

    .line 54
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->stopTimeoutWait()V

    return-void
.end method

.method static synthetic access$800(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;

    .line 54
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;
    .param p1, "x1"    # Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .param p2, "x2"    # Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/verizon/loginclient/TokenLoginClient;->queryContentProvider(Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v0

    return-object v0
.end method

.method private buildDeleteParams(Z)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .locals 2
    .param p1, "deleteAll"    # Z

    .line 489
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    invoke-direct {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;-><init>()V

    .line 490
    .local v0, "builder":Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setDeleteAllTokens(Ljava/lang/Boolean;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    goto :goto_0

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    .line 493
    :goto_0
    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->build()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v1

    return-object v1
.end method

.method private buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .locals 2

    .line 478
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    invoke-direct {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;-><init>()V

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 479
    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    move-result-object v0

    .line 482
    .local v0, "builder":Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;
    iget-boolean v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAlwaysReturnSubscriptionId:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setAlwaysSendSubscriberId(Ljava/lang/Boolean;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    .line 484
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->build()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v1

    return-object v1
.end method

.method private buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;

    .line 568
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mInteractiveQueryMode:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "/silent"

    .line 571
    .local v0, "suffix":Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTokenTypeAuth:Z

    if-eqz v1, :cond_2

    const-string v1, "authtoken"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "token"

    .line 573
    .local v1, "path":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string v4, "content://%s/%s%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "uriStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private callbackWithResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V
    .locals 4
    .param p1, "result"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    .line 632
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 633
    .local v0, "callback":Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;
    if-nez v0, :cond_0

    return-void

    .line 634
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    move-object p1, v1

    .line 636
    :cond_1
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v1

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    if-ne v1, v2, :cond_2

    .line 637
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getTokenData()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V

    goto :goto_0

    .line 639
    :cond_2
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V

    .line 640
    :goto_0
    return-void
.end method

.method private doTokenDelete(Z)V
    .locals 5
    .param p1, "allTokens"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientUri()Landroid/net/Uri;

    move-result-object v0

    .line 389
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->buildDeleteParams(Z)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v1

    .line 391
    .local v1, "params":Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    if-eqz v0, :cond_0

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectParams()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    .line 397
    :cond_0
    :goto_0
    return-void
.end method

.method private doTokenQuery()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 3

    .line 406
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->isDeviceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v0

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v0

    iget-boolean v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserveOnNullResult:Z

    invoke-direct {p0, v0, v1}, Lcom/verizon/loginclient/TokenLoginClient;->queryContentProvider(Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v0

    return-object v0
.end method

.method private getLoginClientPackage()Ljava/lang/String;
    .locals 12

    .line 587
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 589
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->AUTHORITIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 590
    .local v5, "authority":Ljava/lang/String;
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 591
    .local v6, "cpInfo":Landroid/content/pm/ProviderInfo;
    if-nez v6, :cond_0

    goto :goto_2

    .line 593
    :cond_0
    sget-object v7, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_PACKAGES:[Ljava/lang/String;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 594
    .local v10, "officalPackage":Ljava/lang/String;
    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v1, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 593
    .end local v10    # "officalPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 597
    :cond_2
    iget-boolean v7, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    if-eqz v7, :cond_3

    iget-object v1, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 589
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "cpInfo":Landroid/content/pm/ProviderInfo;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 601
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLoginClientUri()Landroid/net/Uri;
    .locals 12

    .line 549
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 551
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->AUTHORITIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 552
    .local v5, "authority":Ljava/lang/String;
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 553
    .local v6, "cpInfo":Landroid/content/pm/ProviderInfo;
    if-nez v6, :cond_0

    goto :goto_2

    .line 555
    :cond_0
    sget-object v7, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_PACKAGES:[Ljava/lang/String;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 556
    .local v10, "officalPackage":Ljava/lang/String;
    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0, v5}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 555
    .end local v10    # "officalPackage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 559
    :cond_2
    iget-boolean v7, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    if-eqz v7, :cond_3

    invoke-direct {p0, v5}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 551
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "cpInfo":Landroid/content/pm/ProviderInfo;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 563
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private isDeviceCapable()Z
    .locals 8

    .line 531
    iget-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassDeviceFeatureCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 535
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->LTE_FEATURES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 536
    .local v6, "feature":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v1

    .line 535
    .end local v6    # "feature":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 539
    :cond_2
    return v4
.end method

.method private isRunningOnLooperThread()Z
    .locals 4

    .line 610
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 611
    .local v0, "msgLooper":Landroid/os/Looper;
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 613
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 614
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    return v1

    .line 616
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private queryContentProvider(Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 10
    .param p1, "params"    # Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .param p2, "observeOnNull"    # Z

    .line 423
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientUri()Landroid/net/Uri;

    move-result-object v6

    .line 424
    .local v6, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 425
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v0

    .line 430
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    .line 431
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectParams()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 430
    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .local v0, "cursor":Landroid/database/Cursor;
    nop

    .line 441
    if-nez v0, :cond_1

    .line 442
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v7, v7}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v1

    .line 445
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 447
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v7, v7}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v1

    .line 451
    :cond_2
    const-string/jumbo v1, "token"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "tokenValueRaw":Ljava/lang/String;
    const-string/jumbo v2, "subscriptionId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 455
    .local v2, "subIdColIndx":I
    if-lez v2, :cond_3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    .line 457
    .local v3, "subscriptionId":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 459
    if-nez v1, :cond_5

    .line 461
    if-eqz p2, :cond_4

    iget-wide v4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    .line 462
    invoke-direct {p0, v6}, Lcom/verizon/loginclient/TokenLoginClient;->registerContentObserver(Landroid/net/Uri;)V

    .line 463
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->startTimeoutWait()V

    .line 464
    new-instance v4, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v5, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {v4, v5, v7, v7, v7}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v4

    .line 466
    :cond_4
    new-instance v4, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v5, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {v4, v5, v7, v7, v7}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v4

    .line 471
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "tokenValue":Ljava/lang/String;
    new-instance v5, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v8, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    new-instance v9, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    invoke-direct {v9, v4, v3}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v8, v9, v7, v7}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v5

    .line 436
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "tokenValueRaw":Ljava/lang/String;
    .end local v2    # "subIdColIndx":I
    .end local v3    # "subscriptionId":I
    .end local v4    # "tokenValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 437
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v0, v7}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v1

    .line 433
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 434
    .local v0, "ex":Ljava/lang/SecurityException;
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {v1, v2, v7, v0, v7}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object v1
.end method

.method private declared-synchronized registerContentObserver(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 499
    :try_start_0
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    .line 501
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    invoke-direct {v0, p0, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    .line 502
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 498
    .end local p0    # "this":Lcom/verizon/loginclient/TokenLoginClient;
    .end local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startTimeoutWait()V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 623
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    iget-wide v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 624
    return-void
.end method

.method private stopTimeoutWait()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->removeMessages(I)V

    .line 628
    return-void
.end method

.method private declared-synchronized unregisterContentObserver()V
    .locals 2

    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 514
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    goto :goto_0

    .line 515
    .end local p0    # "this":Lcom/verizon/loginclient/TokenLoginClient;
    :catch_0
    move-exception v0

    .line 519
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bypassDeviceFeatureCheck(Z)V
    .locals 0
    .param p1, "bypass"    # Z

    .line 346
    iput-boolean p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassDeviceFeatureCheck:Z

    .line 347
    return-void
.end method

.method public bypassEnginePackageCheck(Z)V
    .locals 0
    .param p1, "bypass"    # Z

    .line 355
    iput-boolean p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    .line 356
    return-void
.end method

.method public cancelQuery()V
    .locals 2

    .line 255
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    .line 256
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->stopTimeoutWait()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 260
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 262
    monitor-exit v0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public establishToken()V
    .locals 4

    .line 221
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientPackage()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "lcPackage":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motricity.verizon.ssoengine.ESTABLISH_TOKEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "subscriptionId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 275
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAllTokens()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenDelete(Z)V

    return-void
.end method

.method public invalidateToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenDelete(Z)V

    return-void
.end method

.method public isDozeWhitelisted()Z
    .locals 4

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 287
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientPackage()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 294
    .local v2, "pm":Landroid/os/PowerManager;
    if-nez v2, :cond_2

    return v1

    .line 297
    :cond_2
    invoke-virtual {v2, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public queryTokenAsync()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    if-eqz v0, :cond_0

    .line 145
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 148
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$1;

    invoke-direct {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$1;-><init>(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 157
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 158
    return-void

    .line 142
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot perform async query with null callback receiver (constructor)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryTokenDirect()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mDirectEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 211
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenQuery()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public queryTokenSynchronous()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 8

    .line 171
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->isRunningOnLooperThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    iput-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 176
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->access$402(Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    .line 179
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenQuery()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v1

    .line 181
    .local v1, "result":Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    invoke-static {v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->access$500(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v3

    sget-object v4, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    .line 185
    :try_start_1
    iget-object v3, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 186
    iget-object v3, p0, Lcom/verizon/loginclient/TokenLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    invoke-static {v3}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->access$400(Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v3

    move-object v1, v3

    .line 187
    iget-object v3, p0, Lcom/verizon/loginclient/TokenLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    invoke-static {v3, v2}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->access$402(Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    goto :goto_0

    .line 188
    :catch_0
    move-exception v3

    .line 192
    :goto_0
    if-nez v1, :cond_0

    .line 193
    :try_start_2
    new-instance v3, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v4, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {v3, v4, v2, v2, v2}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    move-object v1, v3

    .line 195
    :cond_0
    monitor-exit v0

    .line 197
    return-object v1

    .line 195
    .end local v1    # "result":Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "synchronous query cannot be run on Handler\'s Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysRequestSubsciptionId(Z)V
    .locals 0
    .param p1, "requestSubId"    # Z

    .line 378
    iput-boolean p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAlwaysReturnSubscriptionId:Z

    .line 379
    return-void
.end method

.method public setInteractiveQuery(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .line 328
    iput-boolean p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mInteractiveQueryMode:Z

    .line 329
    return-void
.end method

.method public setObserveOnNullResult(Z)V
    .locals 0
    .param p1, "observeOnNull"    # Z

    .line 364
    iput-boolean p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserveOnNullResult:Z

    return-void
.end method

.method public setTargetSubscriptionId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "subscriptionId"    # Ljava/lang/Integer;

    .line 313
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeoutMs"    # J

    .line 320
    iput-wide p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    .line 321
    return-void
.end method

.method public setUseAuthTokens(Z)V
    .locals 0
    .param p1, "useAuthTokens"    # Z

    .line 336
    iput-boolean p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTokenTypeAuth:Z

    .line 337
    return-void
.end method
