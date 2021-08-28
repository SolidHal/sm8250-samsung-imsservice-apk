.class public Lcom/sec/internal/ims/imsservice/OpenApiService;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "OpenApiService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OpenApiService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenApiService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "Do not allow bind on non-system user"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/OpenApiService;->mBinder:Lcom/sec/ims/IImsService$Stub;

    check-cast v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    const-string v1, "OpenApi"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    .line 16
    const-string v0, "OpenApiService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method
