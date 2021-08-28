.class public Lcom/sec/internal/ims/imsservice/SemCapabilityService;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "SemCapabilityService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SemCapabilityService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 32
    const-string v0, "SemCapabilityService"

    const-string v1, "onBind:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "Do not allow bind on non-system user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemCapabilityService;->mSemBinder:Lcom/samsung/android/ims/SemImsService$Stub;

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getBinder()Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 26
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    .line 27
    const-string v0, "SemCapabilityService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
