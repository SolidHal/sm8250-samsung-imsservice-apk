.class public Lcom/sec/internal/ims/imsservice/PresenceService;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "PresenceService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 33
    const-string v0, "PresenceService"

    const-string v1, "onBind:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "Do not allow bind on non-system user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/PresenceService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    check-cast v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    const-string/jumbo v1, "presence"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 27
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    .line 28
    const-string v0, "PresenceService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method
