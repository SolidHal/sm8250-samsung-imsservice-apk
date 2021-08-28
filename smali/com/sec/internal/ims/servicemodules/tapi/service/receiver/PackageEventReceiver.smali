.class public Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/PackageEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    return-void

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    move-result-object v2

    .line 20
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
    if-nez v2, :cond_1

    .line 22
    return-void

    .line 25
    :cond_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->needRegister(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->registerApp()V

    goto :goto_0

    .line 29
    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30
    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->needDeRegister(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 31
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->deRegisterApp()V

    goto :goto_0

    .line 33
    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 34
    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->needRegister(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 35
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->registerApp()V

    .line 38
    :cond_4
    :goto_0
    return-void
.end method
