.class public Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
.super Ljava/lang/Object;
.source "ModuleChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;
    }
.end annotation


# static fields
.field public static final CAPDISCOVERY:Ljava/lang/String; = "CapabilityDiscoveryModule"

.field public static final EVT_CAPDISCOVERY_DISABLE_FEATURE:I = 0x1f42

.field public static final EVT_CAPDISCOVERY_ENABLE_FEATURE:I = 0x1f41

.field public static final EVT_MODULE_CHANNEL_BASE:I = 0x1f40

.field public static final EVT_MODULE_CHANNEL_RESPONSE:I = 0x2327


# instance fields
.field protected mDst:Landroid/os/Handler;

.field protected mSrc:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Handler;
    .param p2, "dst"    # Landroid/os/Handler;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mSrc:Landroid/os/Handler;

    .line 11
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mDst:Landroid/os/Handler;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mSrc:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mDst:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public static createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
    .locals 2
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "src"    # Landroid/os/Handler;

    .line 22
    new-instance v0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getServiceModuleHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public disableFeature(J)V
    .locals 3
    .param p1, "feature"    # J

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mDst:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1f42

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 45
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 46
    return-void
.end method

.method public sendEvent(ILjava/lang/Object;Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "listener"    # Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mDst:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 32
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mSrc:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 33
    const/16 v2, 0x2327

    invoke-static {v1, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 35
    .local v1, "resp":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v2, "data":Landroid/os/Bundle;
    const-string v3, "callback_msg"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 40
    .end local v1    # "resp":Landroid/os/Message;
    .end local v2    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 41
    return-void
.end method
