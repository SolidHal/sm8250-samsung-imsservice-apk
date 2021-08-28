.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;
.super Landroid/content/BroadcastReceiver;
.source "ServiceExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RcsClientsMonitor"
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionManager"    # Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 277
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 279
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->ctx:Landroid/content/Context;

    .line 280
    return-void
.end method

.method private isJoynClient(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 313
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "gsma.joyn.client"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "package:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x304ed112

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x1f50b9c2

    if-eq v3, v4, :cond_2

    const v4, 0x5c1076e2

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    goto :goto_2

    .line 298
    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->isJoynClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 299
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->access$100(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V

    goto :goto_2

    .line 293
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 294
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->access$200(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_6
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->isJoynClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->access$000(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 289
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->access$100(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V

    .line 303
    :cond_7
    :goto_2
    return-void
.end method
