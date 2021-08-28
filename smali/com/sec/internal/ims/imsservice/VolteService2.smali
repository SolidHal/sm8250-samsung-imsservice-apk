.class public Lcom/sec/internal/ims/imsservice/VolteService2;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "VolteService2.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VolteService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolteService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-super {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/VolteService2;->mBinder:Lcom/sec/ims/IImsService$Stub;

    check-cast v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 16
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    .line 17
    const-string v0, "VolteService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method
