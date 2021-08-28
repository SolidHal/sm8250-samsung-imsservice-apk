.class public abstract Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.super Landroid/app/Service;
.source "ImsServiceBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBinder:Lcom/sec/ims/IImsService$Stub;

.field protected mSemBinder:Lcom/samsung/android/ims/SemImsService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mSemBinder:Lcom/samsung/android/ims/SemImsService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 58
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do not allow bind on non-system user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    :try_start_0
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do not initialize on non-system user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 42
    :cond_0
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IllegalStateException occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate(): "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mSemBinder:Lcom/samsung/android/ims/SemImsService$Stub;

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 53
    const/4 v0, 0x1

    return v0
.end method
