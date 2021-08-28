.class public Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;
.super Ljava/lang/Object;
.source "ReSyncParam.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mChannelResUrl:Ljava/lang/String;

.field private static mChannelURL:Ljava/lang/String;

.field private static mNotifyURL:Ljava/lang/String;

.field private static mRestartToken:Ljava/lang/String;

.field private static sInstance:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->sInstance:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->sInstance:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    return-object v0
.end method

.method public static update()V
    .locals 4

    .line 25
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 26
    .local v0, "preference":Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASSubscriptionRestartToken()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mRestartToken:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMACallBackURL()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mNotifyURL:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelURL()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelURL:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionResUrl()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelResUrl:Ljava/lang/String;

    .line 31
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReSyncParam: mRestartToken:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mRestartToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ReSyncParam: mNotifyURL:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mNotifyURL:Ljava/lang/String;

    .line 32
    invoke-static {v3}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ReSyncParam: mChannelURL:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelURL:Ljava/lang/String;

    .line 33
    invoke-static {v3}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ReSyncParam: mChannelResUrl:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelResUrl:Ljava/lang/String;

    .line 34
    invoke-static {v3}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method public getChannelResURL()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelResUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelURL()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelURL:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyURL()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mNotifyURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRestartToken()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mRestartToken:Ljava/lang/String;

    return-object v0
.end method
