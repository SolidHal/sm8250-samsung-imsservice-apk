.class public Lcom/sec/internal/ims/imsservice/ImsService;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "ImsService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SERVICE_UPDATABLE_IMS_NAME:Ljava/lang/String; = "secims"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 60
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind: intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do not allow bind on non-system user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    .line 31
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate(): "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    const-string/jumbo v1, "secims"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.ims.imsmanager.RESTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, v1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 53
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy(): "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onDestroy()V

    .line 56
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 42
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartCommand(): Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    check-cast v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->handleIntent(Landroid/content/Intent;)V

    .line 48
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
